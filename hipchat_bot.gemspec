# -*- encoding: utf-8 -*-
require File.expand_path('../lib/hipchat_bot/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Nathan Esquenazi"]
  gem.email         = ["nesquena@gmail.com"]
  gem.description   = %q{Easily create hipchat bots that can respond to anything!}
  gem.summary       = %q{Simple XMPP bot framework}
  gem.homepage      = %q{http://github.com/bazaarlabs/hipchat_bot}

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "hipchat_bot"
  gem.require_paths = ["lib"]
  gem.version       = HipchatBot::VERSION

  gem.add_runtime_dependency('xmpp4r', ">= 0")
  gem.add_runtime_dependency('json', ">= 0")
  gem.add_runtime_dependency('httparty', ">= 0")
  gem.add_development_dependency('rspec', "~> 2.3.0")
  gem.add_development_dependency('yard', "~> 0.6.0")
  gem.add_development_dependency('bundler', "~> 1.0.0")
  gem.add_development_dependency('jeweler', "~> 1.6.0")
end
