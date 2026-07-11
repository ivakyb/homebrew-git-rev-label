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
  sha256 'd694ab325758ce0ec6f31e6d6844418e469eeb53fc84b39139b58474a57d20f3'
  version '2.35.75'

  # depends_on "git" => :recommended  ## Usually installed with developer tools.

  def install
    system 'chmod', '+x', 'git-rev-label'
    bin.install 'git-rev-label'
  end
end
