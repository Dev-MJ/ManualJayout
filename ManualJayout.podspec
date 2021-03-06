Pod::Spec.new do |s|
	s.name = "ManualJayout"
    s.version = "0.1.0"
    s.summary = "UIView frame extension"
    s.homepage = "https://github.com/Dev-MJ/ManualJayout"
    s.license = { :type => "MIT", :file => "LICENSE" }
    s.author = { "Dev.MJ" => "mr.lucifers@gmail.com" }
    s.source = { :git => "https://github.com/Dev-MJ/ManualJayout.git", :tag => s.version.to_s }
    s.source_files = "ManualJayout/*.swift" 
    s.frameworks = "UIKit" 
    s.ios.deployment_target = "8.0"
    s.pod_target_xcconfig = { "SWIFT_VERSION" => "3.0" }
end
