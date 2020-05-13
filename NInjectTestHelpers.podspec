Pod::Spec.new do |spec|
    spec.name         = "NInjectTestHelpers"
    spec.version      = "1.0.0"
    spec.summary      = "Swinject extension"

    spec.source       = { :git => "https://bitbucket.org/tech4star/NInject.git" }
    spec.homepage     = "https://bitbucket.org/tech4star/NInject.git"

    spec.license          = 'MIT'
    spec.author           = { "Nikita Konopelko" => "nik.sativa@gmail.com" }
    spec.social_media_url = "https://www.facebook.com/Nik.Sativa"

    spec.ios.deployment_target = "11.0"
    spec.swift_version = '5.0'

    spec.resources = ['Source/**/Test*.{storyboard,xib,xcassets,json,imageset,png,strings,stringsdict}']
    spec.source_files  = 'Source/**/Test*.swift',
                         'Source/**/Fake*.swift',
                         'Source/**/*+TestHelper.swift'
    spec.exclude_files = 'Source/**/*Spec.*'

    spec.dependency 'Nimble'
    spec.dependency 'Spry'
    spec.dependency 'Quick'
    spec.dependency 'Spry+Nimble'

    spec.dependency 'NInject'

    spec.frameworks = 'XCTest', 'Foundation'

    spec.test_spec 'Tests' do |tests|
        #        tests.requires_app_host = true
        tests.source_files = 'Source/**/*Spec.swift'
        tests.exclude_files = 'Source/**/Test*.*',
                              'Source/**/Fake*.*',
                              'Source/**/*+TestHelper.*'
    end
end