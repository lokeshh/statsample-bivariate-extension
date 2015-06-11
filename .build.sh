git clone https://github.com/SciRuby/nmatrix.git
cd nmatrix
rake install
cd ..
git clone https://github.com/v0dro/gsl-nmatrix
cd gsl-nmatrix
gem build gsl-nmatrix.gemspec
gem install gsl-nmatrix-1.17.gem
cd ..