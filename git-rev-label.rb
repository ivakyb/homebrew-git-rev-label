require 'formula'

class GitRevLabel < Formula
	desc 'Gives information about Git repository revision in format like \'master-c73-gbbb6bec\'. Can fill template string or file with env vars and information from Git. Useful to provide information about version of the program: branch, tag, commit hash, commits count, dirty status.'
	homepage 'https://gitlab.com/kyb/git-rev-label'
	url 'https://gitlab.com/kyb/git-rev-label/raw/master/git-rev-label.sh?inline=false'
	sha256 '0fed32d59333b9457a2c04778891c507ef644da2ac696340a3e9e5c00f743a72'
	version 'latest'
	#version 'master-c91-gd587f03'
	
	#depends_on "git" => :recommended  ## Usually installed with developer tools.

	def install
		system 'chmod','+x','git-rev-label.sh' 
		system 'mv','git-rev-label.sh','git-rev-label' 
		bin.install 'git-rev-label'
	end
end
