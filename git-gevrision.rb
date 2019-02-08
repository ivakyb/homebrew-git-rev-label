require 'formula'

class GitGevrision < Formula
	desc 'Gives information about Git repository revision in format like \'master-c73-gbbb6bec\'. Can fill template string or file. Useful to provide information about version of the program: branch, tag, commit hash, commits count, dirty status.'
	homepage 'https://gitlab.com/kyb/git-gevrision'
	url 'https://gitlab.com/kyb/git-gevrision/raw/master/git-gevrision.sh?inline=false'
	sha256 'b9564e4c3aa8079d1749c4cffcb58130fe5c92dc1fbf76e9c4dbd2b538420d79'
	version 'latest'
	#version 'master-c91-gd587f03'
	
	#depends_on "git" => :recommended  ## Usually installed with developer tools.

	def install
		system 'chmod','+x','git-gevrision.sh' 
		system 'mv','git-gevrision.sh','git-gevrision' 
		bin.install 'git-gevrision'
	end
end
