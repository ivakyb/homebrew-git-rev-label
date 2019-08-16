require 'formula'

class GitRevLabel < Formula
	desc 'Gives information about Git repository revision in format like \'master-c73-gbbb6bec\'. Can fill template string or file with env vars and information from Git. Useful to provide information about version of the program: branch, tag, commit hash, commits count, dirty status.'
	homepage 'https://gitlab.com/kyb/git-rev-label'
	url 'https://gitlab.com/kyb/git-rev-label/raw/artifacts/master/git-rev-label'
	sha256 'd3716a0b71fdab8aa2a47b77bcc9f9095e39b05ac1618e9bafe2ab602fe54ae0'
	version '1.118.100'
	
	#depends_on "git" => :recommended  ## Usually installed with developer tools.

	def install
		system 'chmod','+x','git-rev-label' 
		bin.install 'git-rev-label'
	end
end
