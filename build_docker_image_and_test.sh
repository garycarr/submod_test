mkdir -p _build/src/github.com/garycarr
rm -f _build/src/github.com/garycarr/$1
ln -s $PWD _build/src/github.com/garycarr/$1
export GOPATH=$PWD/_build
export PATH=$GOPATH/bin:$PATH
export PATH=$PATH:/home/gcarr/go/bin:/usr/local/go/bin:
cd _build/src/github.com/garycarr/$1
go build
go test
