require 'formula'

class GitRevLabel < Formula
	desc 'Gives information about Git repository revision in format like \'master-c73-gbbb6bec\'. Can fill template string or file with env vars and information from Git. Useful to provide information about version of the program: branch, tag, commit hash, commits count, dirty status.'
	homepage 'https://gitlab.com/kyb/git-rev-label'
	url 'https://gitlab.com/kyb/git-rev-label/raw/artifacts/master/git-rev-label'
	sha256 'e7fddc2b295ec2ad8d4983bb0d0111586dd9ecf51a5919873e71903d5e8b427e'
	version '1.125.111'
	
	#depends_on "git" => :recommended  ## Usually installed with developer tools.

	def install
		system 'chmod','+x','git-rev-label' 
		bin.install 'git-rev-label'
	end
end
