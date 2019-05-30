workspace 'RuntimeEnvironment.xcworkspace'

## Frameworks targets
abstract_target 'Frameworks' do
	use_frameworks!
	target 'RuntimeEnvironment-iOS' do
		platform :ios, '9.0'
	end

	target 'RuntimeEnvironment-watchOS' do
		platform :watchos, '2.0'
	end

	target 'RuntimeEnvironment-tvOS' do
		platform :tvos, '9.0'
	end

	target 'RuntimeEnvironment-OSX' do
		platform :osx, '10.10'
	end
end

## Tests targets
abstract_target 'Tests' do
	use_frameworks!
	target 'RuntimeEnvironmentTests-iOS' do
		platform :ios, '9.0'
	end

	target 'RuntimeEnvironmentTests-tvOS' do
		platform :tvos, '9.0'
	end

	target 'RuntimeEnvironmentTests-OSX' do
		platform :osx, '10.10'
	end
end

## Samples targets
abstract_target 'Samples' do
	use_frameworks!
	target 'RuntimeEnvironmentSample-iOS' do
		project 'Samples/RuntimeEnvironmentSample-iOS/RuntimeEnvironmentSample-iOS'
		platform :ios, '9.0'
	end

	abstract_target 'watchOS' do
		project 'Samples/RuntimeEnvironmentSample-watchOS/RuntimeEnvironmentSample-watchOS'
		target 'RuntimeEnvironmentSample-watchOS' do
			platform :ios, '9.0'
		end

		target 'RuntimeEnvironmentSample-watchOS WatchKit Extension' do
			platform :watchos, '2.0'
		end
	end

	target 'RuntimeEnvironmentSample-tvOS' do
		project 'Samples/RuntimeEnvironmentSample-tvOS/RuntimeEnvironmentSample-tvOS'
		platform :tvos, '9.0'
	end

	target 'RuntimeEnvironmentSample-OSX' do
		project 'Samples/RuntimeEnvironmentSample-OSX/RuntimeEnvironmentSample-OSX'
		platform :osx, '10.10'
	end
end
