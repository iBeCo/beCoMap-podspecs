Pod::Spec.new do |spec|
  spec.name         = "beCoMap"
  spec.version      = "0.4.0"
  spec.summary      = "Navigation experience made simple."
  spec.description  = "Our solutions are designed to minimise effort. We make sure our services help users to reachdestinations quicker and without confusion. Offering better control and visibility through our mapbased advanced solutions, we help organisations achieve goals with minimum loss of time and money."
  spec.homepage     = "https://becomap.com"
  spec.license      = spec.license      = { :type => "MIT", :text => "The MIT License (MIT) \n Copyright (c) 2019 GlobeCo Technologies Pvt Ltd \n All rights reserved GlobeCo Technologies Pvt Ltd \n\n The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software. \n THE SOFTWARE IS PROVIDED AS IS, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN SOFTWARE." }
  spec.author       = "GlobeCo Technologies Pvt Ltd."
  spec.platform     = :ios
  spec.platform     = :ios, "11.0"
  spec.ios.deployment_target = '11.0'
  spec.ios.vendored_framework = "beCoMap.framework"
  spec.source = { :http => "https://beco-sdks.s3.ap-south-1.amazonaws.com/ios/beCoMap.zip"}
  spec.requires_arc = true
  spec.exclude_files = "Classes/Exclude"
  spec.dependency 'SwiftProtobuf', '~> 1.6'
  spec.swift_version = "5.0"
end
