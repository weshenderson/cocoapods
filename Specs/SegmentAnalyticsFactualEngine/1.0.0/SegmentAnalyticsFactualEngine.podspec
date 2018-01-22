
Pod::Spec.new do |s|
  s.name         = "SegmentAnalyticsFactualEngine"
  s.version      = "1.0.0"
  s.summary      = "Factual Engine Integration for Segment's analytics-ios library."
  s.description  = <<-DESC
                   Segment's Analytics for iOS provides a single API that lets you
                   integrate with 100s of tools.

                   Factual's Engine is a mobile SDK that enables you to engage users in the right place at the right time.

                   This is the Factual Engine integration for the Segment Analytics iOS library.
                   DESC
  s.homepage     = "https://www.factual.com/products/engine"
  s.license      = "MIT"
  s.author       = { "Factual Inc" => "mobile@factual.com" }
  s.platform     = :ios
  s.source       = { :http => "https://factual.bintray.com/files/segment-analytics-factual-engine-ios-#{s.version.to_s}.tar.gz", :flatten => true }
  s.source_files         = "*.h"
  s.preserve_paths       = "libAnalyticsEngineIntegration.a"
  s.ios.vendored_library = "libAnalyticsEngineIntegration.a"
  s.libraries            = "z"  
  s.dependency "Analytics", "~> 3.6.0"
  s.dependency "FactualEngineSDK", "5.3.0"
end
