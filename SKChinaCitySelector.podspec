#SKChinaCitySelector.podspec
Pod::Spec.new do |s|
  s.name         = "SKChinaCitySelector"
  s.version      = "1.0.0"
  s.summary      = "An China city selector."

  s.homepage     = "https://github.com/talisk/SKChinaCitySelector"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author       = { "Swain" => "talisk@talisk.cn" }
  s.platform     = :ios, "8.0"
  s.ios.deployment_target = "8.0"
  s.source       = { :git => "https://github.com/talisk/SKChinaCitySelector.git", :tag => s.version}
  s.source_files  = 'Source/*.{h,m}'
  s.requires_arc = true
end