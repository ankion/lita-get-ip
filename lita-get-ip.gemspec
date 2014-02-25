Gem::Specification.new do |spec|
  spec.name          = "lita-get-ip"
  spec.version       = "0.0.1"
  spec.authors       = ["ankion"]
  spec.email         = ["ankion@gmail.com"]
  spec.description   = %q{A lita handler for get machine ip address.}
  spec.summary       = %q{A lita handler for get machine ip address.}
  spec.homepage      = "https://github.com/ankion/lita-get-ip"
  spec.license       = "MIT"
  spec.metadata      = { "lita_plugin_type" => "handler" }

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "lita", ">= 2.7"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec", ">= 2.14"
end
