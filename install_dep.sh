#! /bin/sh

if [ "${GOPATH+1}" ];
    then echo "GOPATH is set";
    else echo "Please set GOPATH, exiting" && exit;
fi

CUR_PATH_1=$(pwd)

if [ "$CUR_PATH_1"  == "$GOPATH/src/github.com/envolt/trumail" ] ;
    then
        echo "Project directory seems fine";
    else
        echo "Please move the Project under GOPATH (i.e. - $GOPATH/src/github.com/envolt/trumail)";
        exit;
fi

go get github.com/gorilla/handlers
go get github.com/gorilla/mux
go get github.com/sirupsen/logrus
go get golang.org/x/net >> /dev/null 2&> /dev/null
git clone $GOPATH/src/golang.org/x/net
go get golang.org/x/sync >> /dev/null 2&> /dev/null
git clone $GOPATH/src/golang.org/x/sync

go get -u golang.org/x/text/secure/bidirule
go get -u golang.org/x/text/unicode/...

echo "Installed all Deps, run with "
echo "  go run main.go"