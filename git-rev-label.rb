require 'formula'

class GitRevLabel < Formula
	desc 'Gives information about Git repository revision in format like \'master-c73-gbbb6bec\'. Can fill template string or file with env vars and information from Git. Useful to provide information about version of the program: branch, tag, commit hash, commits count, dirty status.'
	homepage 'https://gitlab.com/kyb/git-rev-label'
	url 'https://gitlab.com/kyb/git-rev-label/raw/artifacts/master/git-rev-label'
	sha256 '92810fca2fd58b58e342af9aefce8a372899b01d1b7537baf0bde54f1d6d44ee'
	version '1.116.104'
	
	#depends_on "git" => :recommended  ## Usually installed with developer tools.

	def install
		system 'chmod','+x','git-rev-label' 
		bin.install 'git-rev-label'
	end
end
