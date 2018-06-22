#
#  Be sure to run `pod spec lint FPS.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

 Pod::Spec.new do |s|
  s.name         = "FPS"
  s.version      = "1.0.1"
  s.summary      = "一个iOSapp内存、cpu，fps检测工具"
  s.description  = "一个iOSapp内存、cpu，fps检测工具 使用oc编写"
  s.homepage     = "https://github.com/icoder20150719/FPSDemo"
  s.social_media_url   = "https://www.jianshu.com/u/9c7c2ad9faf8"
  s.license= { :type => "MIT", :file => "LICENSE" }
  s.author       = { "xiongan" => "andybbear@163.com" }
  s.source       = { :git => "https://github.com/icoder20150719/FPSDemo.git", :tag => s.version }
  s.source_files = "FPSDemo/FPSDemo/src/*.{h,m}"
  s.ios.deployment_target = '7.0'
  s.frameworks   = 'UIKit'
  s.requires_arc = true
end
