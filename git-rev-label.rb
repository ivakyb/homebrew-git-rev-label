require 'formula'

class GitRevLabel < Formula
	desc 'Gives information about Git repository revision in format like \'master-c73-gbbb6bec\'. Can fill template string or file with env vars and information from Git. Useful to provide information about version of the program: branch, tag, commit hash, commits count, dirty status.'
	homepage 'https://gitlab.com/kyb/git-rev-label'
	url 'https://gitlab.com/kyb/git-rev-label/raw/artifacts/master/git-rev-label'
	sha256 '55752e947243a889bdebd61d700fc8141d0bc9ae9d0e52dd363fcd8f5accf7e1'
	version '2.11.9'
	
	#depends_on "git" => :recommended  ## Usually installed with developer tools.

	def install
		system 'chmod','+x','git-rev-label' 
		bin.install 'git-rev-label'
	end
end
