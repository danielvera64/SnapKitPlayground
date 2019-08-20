# Uncomment the next line to define a global platform for your project
platform :ios, '12.0'

def common_pods
  pod 'SnapKit'
  pod 'RxSwift'
  pod 'RxCocoa'
end
target 'SnapKitPlayground' do
  # Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!

  # Pods for SnapKitPlayground
  common_pods

  target 'PlaygroundLinkFramework' do
    common_pods
  end

  target 'SnapKitPlaygroundTests' do
    inherit! :search_paths
    # Pods for testing
  end

  target 'SnapKitPlaygroundUITests' do
    inherit! :search_paths
    # Pods for testing
  end

end
