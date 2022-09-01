# frozen_string_literal: true

require_relative "lib/linuxcnc/version"

Gem::Specification.new do |spec|
  spec.name = "linuxcnc"
  spec.version = Linuxcnc::VERSION
  spec.authors = ["Taras Struk"]

  spec.summary = "Ruby interface for LinuxCNC"
  spec.description = "Ruby toolbelt for LinuxCNC. This library comunicates with LinuxCNC through linuxcncrsh interface controlling lathes, milling machines etc."
  spec.homepage = "https://github.com/tarasstruk/linuxcnc"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["allowed_push_host"] = "TODO: Set to your gem server"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/tarasstruk/linuxcnc.git"
  spec.metadata["changelog_uri"] = "https://github.com/tarasstruk/linuxcnc/blob/master/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "net-telnet", "~> 0.2"

  spec.add_development_dependency "rake", "~> 13.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "rubocop", "~> 1.21"
  spec.add_development_dependency "pry", "~> 0.14"

end
