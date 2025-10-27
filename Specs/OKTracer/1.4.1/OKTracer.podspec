Pod::Spec.new do |s|
    s.name                  = 'OKTracer'
    s.version               = '1.4.1'
    s.summary               = 'Tracer is a service from OK.Tech for collecting and analyzing errors in mobile applications for iOS and Android'
    s.homepage              = 'https://apptracer.ru'
    s.license               = { :type => 'Tracer\'s License Agreement' }
    s.author                = { 'David Chupreev' => 'david.chupreev@corp.mail.ru' }

    s.xcconfig              = { 'OTHER_LDFLAGS' => ['$(inherited)', '-weak-lswiftDemangle'] }
    s.compiler_flags        = '-Wno-shorten-64-to-32 -fno-optimize-sibling-calls'
    s.library               = 'c++'
    
    s.source                = { :http => 'https://artifactory-external.vkpartner.ru/artifactory/okdl-ios-tracer-cache/OKTracer/1.4.1/OKTracer.xcframework.zip' }

    s.resources             = 'OKTracer.bundle'
    s.vendored_frameworks   = 'OKTracer.xcframework'
end
