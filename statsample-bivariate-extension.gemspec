# coding: utf-8
$:.unshift File.expand_path("../lib", __FILE__)

require 'statsample/bivariate/extension_version.rb'

Statsample::Bivariate::DESCRIPTION = <<MSG
Polychoric and Tetrachoric extensions for Statsample::Bivariate.
MSG

Gem::Specification.new do |spec|
  spec.name          = 'statsample-bivariate-extension'
  spec.version       = Statsample::Bivariate::EXTENSION_VERSION
  spec.authors       = ['Claudio Bustos']
  spec.email         = ["clbustos@gmail.com"]
  spec.summary       = %q{Polychoric and Tetrachoric extensions for Statsample::Bivariate.}
  spec.description   = Statsample::Bivariate::DESCRIPTION
  spec.homepage      = "https://github.com/SciRuby/statsample-bivariate-extension"
  spec.license       = 'BSD-2'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency 'daru', '~> 0.1'
  spec.add_runtime_dependency 'statsample', '~> 2.0'

  spec.add_development_dependency 'bundler', '~> 1.10'
  spec.add_development_dependency 'rake', '~> 10.4'
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'nmatrix', '~> 0.1'
  spec.add_development_dependency 'rb-gsl', '~> 1.16'
end