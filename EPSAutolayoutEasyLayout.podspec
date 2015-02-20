Pod::Spec.new do |s|
  s.name             = "EPSAutolayoutEasyLayout"
  s.version          = "0.1"
  s.summary          = "A view controller class that manages a web view."

  s.homepage         = "https://github.com/ElectricPeelSoftware/EPSAutolayoutEasyLayout"
  s.license          = "MIT"
  s.author           = { "Justin Stuart" => "justin@electricpeelsoftware.com" }
  s.source           = { :git => "https://github.com/ElectricPeelSoftware/EPSWebViewController.git", :tag => s.version.to_s }

  s.platform              = :ios, '7.0'
  s.ios.deployment_target = '7.0'
  s.requires_arc          = true

  s.source_files = 'Classes'

  s.public_header_files = 'Classes/*.h'
end
