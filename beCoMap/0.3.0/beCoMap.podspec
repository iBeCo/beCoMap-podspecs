Pod::Spec.new do |spec|
  spec.name         = "beCoMap"
  spec.version      = "0.3.0"
  spec.summary      = "Navigation experience made simple."
  spec.description  = "Our solutions are designed to minimise effort. We make sure our services help users to reachdestinations quicker and without confusion. Offering better control and visibility through our mapbased advanced solutions, we help organisations achieve goals with minimum loss of time and money."
  spec.homepage     = "https://becomap.com"
  spec.license      = { :type => "MIT", :file => "LICENSE" }
  spec.author       = "GlobeCo Technologies Pvt Ltd."
  spec.platform     = :ios
  spec.platform     = :ios, "11.0"
  spec.ios.deployment_target = '11.0'
  spec.source       = { :git => "https://github.com/iBeCo/beCo-iOS-SDK.git", :tag => "#{spec.version}" }
  # spec.source_files  = "beCoMap/*/*.{swift}"
  # spec.resources = "beCoMap/beCoMap/*.{png,swift,js,storyboard,css,map,html,svg,ico}"
  spec.requires_arc = true
  spec.dependency 'SwiftProtobuf'
  spec.swift_version = "5.0"
end
