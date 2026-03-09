# Uncomment the next line to define a global platform for your project
platform :ios, '14.0'

target 'WWSwift' do
  # Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!

  # Pods for WWSwift
  # 示例：添加常用三方库（可按需取消注释）
  # pod 'Alamofire'
  # pod 'SnapKit'
  # pod 'Kingfisher'

end

post_install do |installer|
  installer.pods_project.targets.each do |target|
    target.build_configurations.each do |config|
      config.build_settings['IPHONEOS_DEPLOYMENT_TARGET'] = '14.0'
    end
  end
end
