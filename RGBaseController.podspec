#
# Be sure to run `pod lib lint RGBaseController.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'RGBaseController'
  s.version          = '0.1.0'
  s.summary          = 'RGBaseController'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = "RGBaseController是一个项目初始化BaseController的库"

  s.homepage         = 'https://github.com/iOSRG/RGBaseController'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
#s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.license          = 'MIT'
  s.author           = { '18607304107@163.com' => 'gui.ren@hand-china.com' }
  s.source           = { :git => 'https://github.com/iOSRG/RGBaseController.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'RGBaseController/Classes/**/*'
  
  # s.resource_bundles = {
  #   'RGBaseController' => ['RGBaseController/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
