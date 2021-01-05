
Pod::Spec.new do |s|
  s.name         = "RNWebviewx5"
  s.version      = "1.0.0"
  s.summary      = "RNWebviewx5"
  s.description  = <<-DESC
                  RNWebviewx5
                   DESC
  s.homepage     = ""
  s.license      = "MIT"
  # s.license      = { :type => "MIT", :file => "FILE_LICENSE" }
  s.author             = { "author" => "author@domain.cn" }
  s.platform     = :ios, "7.0"
  s.source       = { :git => "https://github.com/author/RNWebviewx5.git", :tag => "master" }
  s.source_files  = "RNWebviewx5/**/*.{h,m}"
  s.requires_arc = true


  s.dependency "React"
  #s.dependency "others"

end

  