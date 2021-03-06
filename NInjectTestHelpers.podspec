Pod::Spec.new do |spec|
    spec.name         = "NInjectTestHelpers"
    spec.version      = "1.0.0"
    spec.summary      = "DI extension"

    spec.source       = { :git => "git@github.com:NikSativa/NInject.git" }
    spec.homepage     = "https://github.com/NikSativa/NInject"

    spec.license          = 'MIT'
    spec.author           = { "Nikita Konopelko" => "nik.sativa@gmail.com" }
    spec.social_media_url = "https://www.facebook.com/Nik.Sativa"

    spec.ios.deployment_target = "10.0"
    spec.swift_version = '5.0'

    spec.resources = ['TestHelpers/**/*.{storyboard,xib,xcassets,json,imageset,png,strings,stringsdict}']
    spec.source_files = 'TestHelpers/**/*.swift'

    spec.dependency 'Nimble'
    spec.dependency 'NSpry'
    spec.dependency 'Quick'
    spec.dependency 'NInject'

    spec.frameworks = 'XCTest', 'Foundation', 'UIKit'

    spec.test_spec 'Tests' do |tests|
#      tests.requires_app_host = false

      tests.source_files = 'Tests/Specs/**/*.swift'
      tests.resources = ['Tests/Specs/**/*.{storyboard,xib,xcassets,json,imageset,png,strings,stringsdict}']
      tests.exclude_files = '**/SPM/**/*.*'
    end
end
