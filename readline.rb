class Readline < FPM::Cookery::Recipe
  description 'The GNU Readline library provides a set of functions for use by applications that allow users to edit command lines as they are typed in.'

  name 'readline'
  version '6.2'
  revision 1
  homepage 'http://cnswww.cns.cwru.edu/php/chet/readline/rltop.html'
  source 'ftp://ftp.cwru.edu/pub/bash/readline-6.2.tar.gz'
  sha256 '79a696070a058c233c72dd6ac697021cc64abd5ed51e59db867d66d196a89381'

  maintainer '<name@example.com>'
  vendor     'fpm'
  license    'MIT license'

  section 'libraries'

  platforms [:ubuntu, :debian] do
	build_depends 'build-essential'
  end

  platforms [:fedora, :redhat, :centos] do
	build_depends 'gcc', 'gcc-c++', 'make'
  end

  def build
    configure :prefix => destdir
    make
  end

  def install
    make :install
  end
end
