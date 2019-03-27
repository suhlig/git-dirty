# Git::DirtyFile

Rake task to record the git status in a separate file

# Usage

Add it to your Gemfile:

```ruby
gem "git-dirty"
```

In your `Rakefile`:

```ruby
require 'git-dirty'
git_dirty_file 'tmp/git-status'
````

Now you will have a new rake target for `tmp/git-status`, which will be updated whenever the contents of that file differ from the actual status.

The status is represented by the output of `git rev-parse --short HEAD` (which provides the SHA of the current git HEAD). If the workspace is dirty (i.e. has new, changed or deleted files), an asterisk (`*`) is appended.

# License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
