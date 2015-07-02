#/bin/sh

case `uname -m` in
  "x86" )
    sed -i -e 's/amd64/i386/' Makefile
    debuild -us -uc -i -b -a i386
    ;;

  "x86_64")
    sed -i -e 's/i386/amd64/' Makefile
    debuild -us -uc -i -b -a amd64
    ;;

  * )
    echo 'Error: this platform is not supported!'
    ;;
esac

exit 0
