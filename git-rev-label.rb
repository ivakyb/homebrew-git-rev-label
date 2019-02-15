require 'formula'

class GitGevrision < Formula
	desc 'Gives information about Git repository revision in format like \'master-c73-gbbb6bec\'. Can fill template string or file with env vars and information from Git. Useful to provide information about version of the program: branch, tag, commit hash, commits count, dirty status.'
	homepage 'https://gitlab.com/kyb/git-rev-label'
	url 'https://gitlab.com/kyb/git-rev-label/raw/master/git-rev-label.sh?inline=false'
	sha256 'd766a1b72f9bfe01f9b03eaca5258f31d208c26eced069402722b68c97126d37'
	version 'latest'
	#version 'master-c91-gd587f03'
	
	#depends_on "git" => :recommended  ## Usually installed with developer tools.

	def install
		system 'chmod','+x','git-rev-label.sh' 
		system 'mv','git-rev-label.sh','git-rev-label' 
		bin.install 'git-rev-label'
	end
end
