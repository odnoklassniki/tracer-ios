Pod::Spec.new do |s|
    s.name                  = 'OKTracer'
    s.version               = '0.1.25.2'
    s.summary               = 'A short description of OKTracer.'
    s.homepage              = "https://artifactory-external.vkpartner.ru/OKTracer"
    s.license               = { :type => 'MIT', :file => 'LICENSE' }
    s.author                = 'Odnoklassniki'

    s.xcconfig              = { 'OTHER_LDFLAGS' => ['$(inherited)', '-weak-lswiftDemangle'] }
    s.compiler_flags        = '-Wno-shorten-64-to-32 -fno-optimize-sibling-calls'
    s.library               = 'c++'
    
    s.source                = { :http => 'https://artifactory-external.vkpartner.ru/artifactory/okdl-ios-tracer-cache/OKTracer/0.1.25.2/OKTracer.xcframework.zip' }

    s.resources             = "OKTracer.bundle"
    s.vendored_frameworks   = 'OKTracer.xcframework'
end
