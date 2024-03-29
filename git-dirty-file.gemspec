lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "git-dirty/version"

Gem::Specification.new do |spec|
  spec.name          = "git-dirty"
  spec.version       = GitDirty::VERSION
  spec.authors       = ["Steffen Uhlig"]
  spec.email         = ["Steffen.Uhlig@de.ibm.com"]

  spec.summary       = %q{Rake task to record the git status in a separate file.}
  spec.description   = %q{This gem provides a Rake task that records the git status in a separate file, which can then be included, e.g. as part of a file-based build process.}
  spec.license       = "MIT"
  spec.homepage      = "https://github.com/suhlig/git-dirty"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", ">= 2.2.33"
  spec.add_development_dependency "rake", ">= 12.3.3"
  spec.add_development_dependency "rspec", "~> 3.0"
end
