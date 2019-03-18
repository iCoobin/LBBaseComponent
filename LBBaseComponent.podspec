#
# Be sure to run `pod lib lint LBBaseComponent.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'LBBaseComponent'
  s.version          = '0.1.0'
  s.summary          = '项目基础组件'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
  项目基础组件，抽出常用的项目类。
                       DESC

  s.homepage         = 'https://github.com/iCoobin/LBBaseComponent'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'iCoobin' => 'shoubin.cheng@5th.work' }
  s.source           = { :git => 'https://github.com/iCoobin/LBBaseComponent.git, :tag => s.version.to_s }

  s.ios.deployment_target = '8.0'

  s.source_files = 'LBBaseComponent/Classes/*.{h,m}'
  
  # s.resource_bundles = {
  #   'LBBaseComponent' => ['LBBaseComponent/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
  s.subspec 'Base' do |ss|
      ss.source_files = 'LBBaseComponent/Classes/Base/**/*.{h,m}'
      ss.public_header_files = 'LBBaseComponent/Classes/Base/**/*.{h}'
  end
  
  s.subspec 'Categories' do |ss|
      ss.source_files = 'LBBaseComponent/Classes/Categories/**/*.{h,m}'
      ss.public_header_files = 'LBBaseComponent/Classes/Categories/**/*.{h}'
  end
  
  s.subspec 'Const' do |ss|
      ss.source_files = 'LBBaseComponent/Classes/Const/**/*.{h,m}'
      ss.public_header_files = 'LBBaseComponent/Classes/Const/**/*.{h}'
  end
  
  s.subspec 'Util' do |ss|
      ss.source_files = 'LBBaseComponent/Classes/Util/**/*.{h,m}'
      ss.public_header_files = 'LBBaseComponent/Classes/Util/**/*.{h}'
  end
  
end
