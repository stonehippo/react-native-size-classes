Pod::Spec.new do |s|
    s.name          = "RNSizeClasses"
    s.version       = "0.1.1"
    s.summary       = "iOS Size Classes for use with React Native"

    s.homepage      = ""

    s.license       = "MIT"
    s.authors       = { "George White" => "stonehippo@gmail.com"}
    s.ios.deployment_target = "9.0"
    s.tvos.deployment_target = "10.0"

    s.source        = { :git => "https://github.com/stonehipppo/react-native-size-classes" }
    s.source_files  = "RNSizeClasses/*.{h,m}"

    s.dependency    = "React"
end