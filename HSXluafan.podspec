Pod::Spec.new do |s|
  s.name         = "HSXluafan"
  s.version      = "0.7.5"
  s.summary      = "luafan library."
  s.description  = <<-DESC
                   hsxluafan library.
                   DESC
  s.homepage     = "https://github.com/longzl/HSXluafan"
  s.license      = "MIT"
  s.author       = { "longzl" => "longzhili2005@126.com" }
  s.platform     = :ios, "11.0.0"
  s.source       = { :git => "https://github.com/longzl/HSXluafan.git", :tag => "v#{s.version}" }
  
  s.source_files  = "src/*.{h,c}","luafan/*.{h,m}", "src/utlua.c"
  s.exclude_files = "src/luamariadb.c"
  s.compiler_flags = '-DTARGET_OS_IPHONE=1 -DFAN_HAS_OPENSSL'

  s.dependency 'HSXCAPKit-lua53', '~> 0.1.0'
  s.dependency 'HSXCAPKit-3rdparty-libs', '~> 0.1.0'

  s.xcconfig = { "HEADER_SEARCH_PATHS" => "$(PODS_ROOT)/luafan/src $(PODS_ROOT)/HSXCAPKit-lua53/lua-5.3.3/src $(PODS_ROOT)/HSXCAPKit-lua53/lua53" }

end
