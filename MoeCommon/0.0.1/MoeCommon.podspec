#
# Be sure to run `pod lib lint MoeCommon.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'MoeCommon'
  s.version          = '0.0.1'
  s.summary          = 'MoeCommon Library'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
  Common Lib For Moe Library
                       DESC

  s.homepage         = 'https://github.com/linyanzuo/MoeCommon'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'linyanzuo' => 'zed@moemone.com' }
  s.source           = { :git => 'https://github.com/linyanzuo/MoeCommon.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '11.0'
  s.swift_versions = '5.0'

  # s.source_files = 'Classes/*/*'
  s.subspec 'Base' do |base|
    base.source_files = 'MoeCommon/Classes/Base/*'
    base.frameworks = 'UIKit'
  end
  s.subspec 'Runtime' do |runtime|
    runtime.source_files = 'MoeCommon/Classes/Runtime/*'
    runtime.dependency 'MoeCommon/Base'
    runtime.dependency 'MoeCommon/Extension'
  end
  s.subspec 'Extension' do |extension|
    extension.source_files = 'MoeCommon/Classes/Extension/*'
    extension.frameworks = 'UIKit'
  end
end
