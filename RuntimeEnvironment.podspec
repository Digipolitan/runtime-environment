Pod::Spec.new do |s|
s.name = "RuntimeEnvironment"
s.version = "1.0.4"
s.summary = "Manage environment variable at runtime with environment mode set in Info.plist"
s.homepage = "https://github.com/Digipolitan/runtime-environment"
s.authors = "Digipolitan"
s.source = { :git => "https://github.com/Digipolitan/runtime-environment.git", :tag => "v#{s.version}" }
s.license = { :type => "BSD", :file => "LICENSE" }
s.source_files = 'Sources/**/*.{swift,h}'
s.ios.deployment_target = '9.0'
s.watchos.deployment_target = '2.0'
s.tvos.deployment_target = '9.0'
s.osx.deployment_target = '10.10'
s.swift_version = '5.0'
end
