SERVER   = ./node_modules/.bin/static
LESS     = ./node_modules/.bin/lessc
CLEANCSS = ./node_modules/.bin/cleancss
WATCH    = ./node_modules/.bin/catw

start:
	${SERVER} -H '{"Cache-Control": "no-cache, must-revalidate"}' -p 9000

build:
	${LESS} theme.less | ${CLEANCSS} -o public/theme.css

watch:
	${WATCH} theme.less -c "${MAKE} build" -w
