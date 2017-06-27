# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'swagger/ui/rails/version'

Gem::Specification.new do |spec|
  spec.name          = "swagger-ui-rails"
  spec.version       = Swagger::Ui::Rails::VERSION
  spec.authors       = ["John Owen"]
  spec.email         = ["johnowenatala@gmail.com"]

  spec.summary       = %q{Wrapper of swagger-ui assets for rails 3+}
  spec.homepage      = "https://github.com/johnowenatala/swagger-ui-rails"
  spec.license       = "MIT"

  spec.files         = Dir["{lib,vendor}/**/*"] + ["MIT-LICENSE", "README.md"]
  spec.require_paths = ["lib"]

  spec.add_dependency "railties", "~> 3.1"
  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 10.0"
end
