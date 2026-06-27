require 'formula'

## The GitRevLabel formula provides Git repository revision information
## in a formatted string format, useful for version tracking
class GitRevLabel < Formula
  desc 'Gives information about Git repository revision in format like ' \
       '\'master-c73-gbbb6bec\'. Can fill template string or file with env vars ' \
       'and information from Git. Useful to provide information about version of the ' \
       'program: branch, tag, commit hash, commits count, dirty status.'
  homepage 'https://gitlab.com/kyb/git-rev-label'
  url 'https://gitlab.com/kyb/git-rev-label/raw/artifacts/master/git-rev-label'
  sha256 '974ba8513ae2cb661361eb57755174c056670c9e138fa3a46824319ec7bca2b5'
  version '2.35.73'

  # depends_on "git" => :recommended  ## Usually installed with developer tools.

  def install
    system 'chmod', '+x', 'git-rev-label'
    bin.install 'git-rev-label'
  end
end
