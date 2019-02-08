require 'formula'

class GitGevrision < Formula

    homepage 'https://gitlab.com/kyb/git-gevrision'
	url 'https://gitlab.com/kyb/git-gevrision/raw/master/git-gevrision.sh?inline=false'
    #sha256 '0b528ed24db9f0fa39e5efdae9bcfc56bf9e07555cb267c70ff3fee84ec98460'
	version 'latest'
    #version 'master-c91-gd587f03'
    
    def install
        system 'chmod','+x','git-gevrision.sh' 
        bin.install 'git-gevrision.sh'
    end
end
