# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'netease_im/version'

Gem::Specification.new do |spec|
  spec.name          = "netease_im"
  spec.version       = NeteaseIM::VERSION
  spec.authors       = ["liuliang"]
  spec.email         = ["liuliang0817@gmail.com"]

  spec.summary       = %q{网易IM服务端接口.}
  spec.description   = %q{网易IM服务端接口.}
  spec.homepage      = "https://github.com/liuliang/netease_im"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.4"
  spec.add_development_dependency "rest-client", "~> 1.8"
end
