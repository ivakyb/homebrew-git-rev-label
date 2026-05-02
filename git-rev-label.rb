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
  sha256 '97a13dc2492cf7922d3d9670d07e1db836fb74b2da42770bedb8f9a0597ca4e3'
  version '2.35.65'

  # depends_on "git" => :recommended  ## Usually installed with developer tools.

  def install
    system 'chmod', '+x', 'git-rev-label'
    bin.install 'git-rev-label'
  end
end
