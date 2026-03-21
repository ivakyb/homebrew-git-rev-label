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
  sha256 '949535b2a40de826491f4bf2650ab1c529f71031bfd4f0517a6a64ba4a0ecd0c'
  version '2.34.56'

  # depends_on "git" => :recommended  ## Usually installed with developer tools.

  def install
    system 'chmod', '+x', 'git-rev-label'
    bin.install 'git-rev-label'
  end
end
