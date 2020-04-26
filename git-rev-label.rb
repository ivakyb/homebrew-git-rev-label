require 'formula'

class GitRevLabel < Formula
	desc 'Gives information about Git repository revision in format like \'master-c73-gbbb6bec\'. Can fill template string or file with env vars and information from Git. Useful to provide information about version of the program: branch, tag, commit hash, commits count, dirty status.'
	homepage 'https://gitlab.com/kyb/git-rev-label'
	url 'https://gitlab.com/kyb/git-rev-label/raw/artifacts/master/git-rev-label'
	sha256 '113dca38242ac23e98daf3041d025adef240e319a5f033a4405566566d4f0543'
	version '2.6.5'
	
	#depends_on "git" => :recommended  ## Usually installed with developer tools.

	def install
		system 'chmod','+x','git-rev-label' 
		bin.install 'git-rev-label'
	end
end
