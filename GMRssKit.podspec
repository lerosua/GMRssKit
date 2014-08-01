#
#  Be sure to run `pod spec lint GMRssKit.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  s.name         = "GMRssKit"
  s.version      = "0.0.1"
  s.summary      = "A short description of GMRssKit."

  s.homepage     = "https://github.com/lerosua/GMRssKit"


  s.license      = "MIT"


  s.author             = { "lerosua" => "lerosua@gmail.com" }

  s.platform     = :ios, "5.0"

  s.source       = { :git => "http://github.com/lerosua/GMRssKit.git", :tag => "0.0.1" }


  s.source_files  = "RssKit/core", "RssKit/core/*h,m}"

  s.requires_arc = true
  s.dependency 'XHRefreshControl', '~> 1.8'
  s.dependency 'AFNetworking', '~>1.3.4'

end
