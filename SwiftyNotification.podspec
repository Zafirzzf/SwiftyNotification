

Pod::Spec.new do |s|

  # ―――  Spec Metadata  ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  These will help people to find your library, and whilst it
  #  can feel like a chore to fill in it's definitely to your advantage. The
  #  summary should be tweet-length, and the description more in depth.
  #

  s.name         = "SwiftyNotification"
  s.version      = "1.1"
  s.summary      = "A new advance NotificationCenter by Swift."

  s.description  = <<-DESC
    A new advance NotificationCenter by Swift, more convenience
                   DESC
  s.homepage     = "https://github.com/Zafirzzf/SwiftNotification"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author             = { "zhouzf" => "Zoolofty@163.com" }
  # Or just: s.author    = "zhouzf"
  # s.social_media_url   = "http://twitter.com/zhouzf"
  # s.platform     = :ios
  # s.platform     = :ios, "9.0"
    s.ios.deployment_target  = '9.0'
    s.swift_version = '4.0'
    s.source       = { :git => "https://github.com/Zafirzzf/SwiftNotification.git", :tag => "1.1" }
    s.source_files  = ""

end
