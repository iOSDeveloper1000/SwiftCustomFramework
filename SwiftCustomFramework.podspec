
Pod::Spec.new do |spec|
    spec.platform = :ios
    spec.ios.deployment_target = '12.0'
    spec.name = "SwiftCustomFramework"
    spec.summary = "Providing utility for developing new iOS apps"
    spec.requires_arc = true

    spec.version = "0.1.0"

    spec.license = { :type => "MIT", :file => "LICENSE" }

    spec.author = { "Arno Seidel" => "aseidel-it@posteo.de" }

    spec.homepage = "https://github.com/iOSDeveloper1000/SwiftCustomFramework"

    spec.source = { :git => "https://github.com/iOSDeveloper1000/SwiftCustomFramework.git",
                    :tag => "#{spec.version}" }

    spec.framework = "UIKit"

    spec.source_files = "RWPickFlavor/**/*.{swift}"
    spec.ios.source_files = 'SwiftCustomFramework/Utility/*/{.,*}/*.swift'
    spec.exclude_files = "SwiftCustomFramework/Utility/Documentation"

    # spec.resources = "**/*.{png,jpeg,jpg,storyboard,xib,xcassets}"

    spec.swift_version = "5.3"

end
