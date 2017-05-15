# Uncomment the next line to define a global platform for your project
# platform :ios, '9.0'

target 'UITestExample' do
  # Comment the next line if you're not using Swift and don't want to use dynamic frameworks
  use_frameworks!
  
  pod 'Alamofire'
  pod 'SwiftyJSON'
  pod 'OHHTTPStubs', '~> 5.2.3'
  pod 'OHHTTPStubs/Swift'

  # Pods for UITestExample
  pod 'Firebase/Crash'

end

post_install do |installer|
    installer.pods_project.targets.each do |target|
        target.build_configurations.each do |config|
            config.build_settings['SWIFT_VERSION'] = '3.0'
        end
    end
end
