require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name         = package['name']
  s.version      = package['version']
  s.summary      = package['description']
  s.license      = package['license']
  s.homepage     = 'https://github.com/baiachen/react-native-webview-tencentx5'

  s.authors      = package['author']
  s.platforms    = { :ios => "9.0", :osx => "10.13" }

  s.source       = { :git => "https://github.com/RainDrop-C/react-native-webview-tencentx5.git" }
  s.source_files  = "apple/**/*.{h,m}"

  s.dependency 'React'
end
