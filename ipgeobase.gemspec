# frozen_string_literal: true

require_relative 'lib/ipgeobase/version'
#require_relative 'lib/ipgeobase/info_ip'

Gem::Specification.new do |spec|
  spec.name          = 'ipgeobase'
  spec.version       = Ipgeobase::VERSION
  spec.authors       = ['Aleksandr Mihailov']
  spec.email         = ['mikhaylov.av22@gmail.com']
  spec.summary       = 'Example summary'
  spec.description   = 'Example description'
  spec.homepage      = 'https://github.com/MehPNZ/Ipgeobase_MEH'
  spec.required_ruby_version = Gem::Requirement.new('>= 3.0.0')

  # spec.metadata['homepage_uri'] = spec.homepage
  # spec.metadata['source_code_uri'] = 'https://github.com/MehPNZ/Ipgeobase_MEH'
  # spec.metadata['changelog_uri'] = 'https://github.com/MehPNZ/Ipgeobase_MEH'

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.glob("{examples,lib}/**/*")


  # spec.files = Dir.chdir(File.expand_path(__dir__)) do
  #   `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  # end
  # spec.bindir        = 'exe'
  # spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  # spec.require_paths = ['lib']
  # spec.metadata['rubygems_mfa_required'] = 'true'
  
  spec.add_dependency 'nokogiri-happymapper'
  spec.add_dependency 'addressable', '~> 2.7'
end

# spec.add_dependency 'nokogiri-happymapper'
# spec.add_dependency 'addressable', '~> 2.7'
# Uncomment to register a new dependency of your gem
# spec.add_dependency "example-gem", "~> 1.0"

# For more information and examples about making a new gem, check out our
# guide at: https://bundler.io/guides/creating_gem.html
