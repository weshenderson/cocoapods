Pod::Spec.new do |s|
  s.name         = "BrazeEngine"
  s.version      = "1.0.0"
  s.summary      = "Integration library for Factual's Engine SDK and Braze iOS SDK"
  s.description  = <<-DESC  		   
  		   "Integration library for Factual's Engine SDK and Braze iOS SDK""
                   DESC
  s.homepage     = "https://www.factual.com/products/engine"
  s.license      = "MIT"
  s.author       = { "Factual Inc" => "mobile@factual.com" }
  s.platform     = :ios
  s.source       = { :http => "https://factual.bintray.com/files/braze-engine-ios-#{s.version.to_s}.tar.gz", :flatten => true }
  s.source_files         = "*.h"
  s.preserve_paths       = "libBrazeEngine.a"
  s.ios.vendored_library = "libBrazeEngine.a"
  s.libraries            = "z"  
  s.dependency "Appboy-iOS-SDK", "~> 3.3.1"
  s.dependency "FactualEngineSDK", "5.6.0"
end
