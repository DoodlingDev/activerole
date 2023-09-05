# frozen_string_literal: true

require_relative "lib/activerole/version"

Gem::Specification.new do |spec|
  spec.name = "activerole"
  spec.version = Activerole::VERSION
  spec.authors = ["Aji Slater"]
  spec.email = ["aji.slater@gmail.com"]

  spec.summary = "Role system for ruby webapps"
  spec.description = "Role system for ruby webapps"
  spec.homepage = "https://github.com/DoodlingDev/activerole"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/DoodlingDev/activerole"
  spec.metadata["changelog_uri"] = "https://github.com/DoodlingDev/activerole"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|circleci)|appveyor)})
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
