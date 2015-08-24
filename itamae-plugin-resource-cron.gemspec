# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "itamae-plugin-resource-cron"
  spec.version       = "0.1.0"
  spec.authors       = ["Ryota Arai"]
  spec.email         = ["ryota.arai@gmail.com"]

  spec.summary       = %q{Itamae resource to manage cron jobs}
  spec.homepage      = "https://github.com/ryotarai/itamae-plugin-resource-cron"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "itamae"

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
end
