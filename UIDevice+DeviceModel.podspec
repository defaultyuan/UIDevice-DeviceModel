#
#  Be sure to run `pod spec lint UIDevice+DeviceModel.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  # ―――  Spec Metadata  ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  These will help people to find your library, and whilst it
  #  can feel like a chore to fill in it's definitely to your advantage. The
  #  summary should be tweet-length, and the description more in depth.
  #

  s.name         = 'UIDevice+DeviceModel'
  s.version      = '1.0.0'
  s.summary      = 'A Device models category By UIDevice+DeviceModel.'
   s.license          = { :type => 'MIT', :file => 'LICENSE' } 
  s.homepage     = 'https://github.com/DefaultYuan/UIDevice-DeviceModel' 
  s.author       = { 'DefaultYuan' => '320820214@qq.com' } 
  s.source       = { :git => 'https://github.com/DefaultYuan/UIDevice-DeviceModel.git',:tag => 1.0 } //git路径、指定tag号
  s.source_files = 'UIDevice+DeviceModel/*'  //库的源代码文件
 #s.framework    = 'UIKit'
  s.ios.deployment_target = '6.0'
  s.requires_arc = true

end
