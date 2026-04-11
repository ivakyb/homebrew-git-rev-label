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
  sha256 '2d82f270901853b9a11d995ba0ce6280c0cca4325dc2a0059ba7d6ee538b52e0'
  version '2.34.61'

  # depends_on "git" => :recommended  ## Usually installed with developer tools.

  def install
    system 'chmod', '+x', 'git-rev-label'
    bin.install 'git-rev-label'
  end
end
