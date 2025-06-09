Pod::Spec.new do |s|
  s.name             = 'UIKKit'
  s.version          = '1.0.0'
  s.summary          = 'xtending UIKit to make development easier.'
  s.description      = <<-DESC
    xtending UIKit to make development easier.
  DESC
  s.homepage         = 'https://github.com/kandaofu/UIKKit'
  s.license = { :type => 'Proprietary', :text => 'Binary-only internal distribution. All rights reserved.' }
  s.author           = { 'kandaofu' => '' }
  s.platform         = :ios, '13.0'

  s.source = {
    :http => 'https://github.com/kandaofu/UIKKit/releases/download/1.0.0/UIKKit.xcframework.zip'
  }

  s.vendored_frameworks = 'UIKKit.xcframework'
  s.preserve_paths = 'UIKKit.xcframework'
end