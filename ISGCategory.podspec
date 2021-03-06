#
# Be sure to run `pod lib lint ISGCategory.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'ISGCategory'
  s.version          = '1.7'
  s.summary          = 'ISGCategory'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: 常用分类  1.7添加NSString分类，正则以及一些判断
                       DESC

  s.homepage         = 'https://github.com/Isaaclzg/ISGCategory'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Isaaclzg' => 'isaac_gang@163.com' }
  s.source           = { :git => 'https://github.com/Isaaclzg/ISGCategory.git', :tag => s.version.to_s }
  s.social_media_url = 'https://www.jianshu.com/u/7e1b920cdac1'

  s.ios.deployment_target = '8.0'

  s.source_files = 'ISGCategory/Classes/**/*'

  s.resource_bundles = {
      
      'ISGCategory' => ['ISGCategory/Assets/*.png']
      
  }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  s.frameworks = 'UIKit','CoreGraphics','Foundation','QuartzCore'
  s.dependency 'MBProgressHUD', '~> 1.1.0'
end
