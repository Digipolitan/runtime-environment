public enum RuntimeEnvironmentError: Error {
    case fileNotFound(name: String)
    case missingEnvironmentMode
    case invalidContent
}

open class RuntimeEnvironment {

    public static let infoKey = "Environment"

    public static var defaultBundle: Bundle = .main

    public enum Mode: String {
        case development
        case staging
        case production
    }

    public enum Format: String {
        case plist
        case json
    }

    public static let shared = RuntimeEnvironment()

    public let mode: Mode

    private init() {
        guard let info = RuntimeEnvironment.defaultBundle.infoDictionary,
              let modeString = info[RuntimeEnvironment.infoKey] as? String,
              let mode = Mode(rawValue: modeString) else {
                fatalError("[!] Missing or invalid environment mode; set environment in Info.plist key '\(RuntimeEnvironment.infoKey)'")
        }
        self.mode = mode
    }

    private var variables: [String: Any] = [:]

    public func set(_ key: String, _ value: Any) {
        self.variables[key] = value
    }

    public func set(_ dictionary: [String: Any]) {
        self.variables.merge(dictionary) { (_, new) -> Any in
            return new
        }
    }

    public func setFile(_ filename: String, format: Format = .plist, bundle: Bundle = RuntimeEnvironment.defaultBundle) throws {
        guard let url = bundle.url(forResource: filename, withExtension: filename.hasSuffix(format.rawValue) ? nil : format.rawValue) else {
            throw RuntimeEnvironmentError.fileNotFound(name: filename)
        }
        switch format {
        case .plist:
            self.set(try readPlist(at: url))
        case .json:
            self.set(try readJson(at: url))
        }
    }

    private func readPlist(at url: URL) throws -> [String: Any] {
        guard let dictionary = try PropertyListSerialization.propertyList(from: try Data(contentsOf: url), options: [], format: nil) as? [String: Any] else {
            throw RuntimeEnvironmentError.invalidContent
        }
        return dictionary
    }

    private func readJson(at url: URL) throws -> [String: Any] {
        guard let dictionary = try JSONSerialization.jsonObject(with: try Data(contentsOf: url), options: .allowFragments) as? [String: Any] else {
            throw RuntimeEnvironmentError.invalidContent
        }
        return dictionary
    }

    public subscript(key: String) -> Any? {
        return self.variables[key]
    }
}
