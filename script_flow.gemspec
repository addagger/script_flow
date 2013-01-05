# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'script_flow/version'

Gem::Specification.new do |gem|
  gem.name          = "script_flow"
  gem.version       = ScriptFlow::VERSION
  gem.authors       = ["Valery Kvon"]
  gem.email         = ["addagger@gmail.com"]
  gem.description   = %q{When you rendering the ERB templates/partials, utility remembers javascript syntax and add it to the end of Ajax response body}
  gem.summary       = %q{Auto load script from rendered ERB during Ajax request}
  gem.homepage      = ""
  gem.homepage      = %q{http://vkvon.ru/projects/script_flow}

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
  gem.licenses       = ['MIT']

end
