PREFIX = /usr
DEST=${DESTDIR}${PREFIX}/lib/dra/chromium

all:

install:
	mkdir -p ${DESTDIR}${PREFIX}/share/locale
	# Make directories
	mkdir -p ${DESTDIR}${PREFIX}/lib/dra/
	# Copy files
	cp -rvf chromium.amd64 ${DEST}
	# Update permissions
	chmod -v 0644 ${DEST}/chromium
	chmod -v 4755 ${DEST}/chrome-sandbox
