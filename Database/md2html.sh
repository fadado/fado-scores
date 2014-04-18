#!/bin/sh

function make_index {
	cat <<-HTML
		<!DOCTYPE html PUBLIC '-//W3C//DTD XHTML 1.0 Frameset//EN' 'http://www.w3.org/TR/xhtml1/DTD/xhtml1-frameset.dtd'>
		<html>
			<head>
				<script type="text/javascript">if(top!=self){top.location.replace(self.location.href);}</script>
				<meta http-equiv='Content-Type' content='text/html; charset=UTF-8' />
				<title>Fados</title>
			</head>
			<frameset cols='200,*'>
				<frame src='index-menu.html' name='menu' marginheight='8' marginwidth='8' scrolling='auto'/>
				<frame src='Notation.html' name='content' marginheight='8' marginwidth='8' scrolling='auto'/>
			</frameset>
		</html>
HTML
}

function menu_header {
	cat <<-HTML
		<!DOCTYPE html PUBLIC '-//W3C//DTD XHTML 1.0 Transitional//EN' 'http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd'>
		<html>
			<head>
				<script type='text/javascript'>if(top==self){top.location.replace("index.html");}</script>
				<meta http-equiv='Content-Type' content='text/html; charset=UTF-8' />
				<title>Fados</title>
				<link rel="stylesheet" type="text/css" href="style.css"/>
			</head>
		<body>
HTML
}

function content_header {
	typeset TITLE=$1

	cat <<-HTML
		<!DOCTYPE html PUBLIC '-//W3C//DTD XHTML 1.0 Transitional//EN' 'http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd'>
		<html>
			<head>
				<meta http-equiv='Content-Type' content='text/html; charset=UTF-8' />
				<title>$TITLE</title>
				<link rel="stylesheet" type="text/css" href="style.css"/>
			</head>
		<body>
HTML
}

# Genera peu per fitxers XHTML.
function page_footer {
	cat <<-HTML
		<hr/>
		</body></html>
HTML
}

function make_menu {
	menu_header

	echo "<h1>Fados</h1>"

	echo '<hr/><ul>'

	for f in *.html
	do
		name=${f##*/}
		[[ $name == Notation.html ]] && continue
		name=${name%.html}
		[[ $name == 'index' || $name == 'index-menu' ]] && continue
		echo "<li><a target='content' href='$name.html'>$name</a></li>"
	done

	echo '</ul><hr/>'
	echo '<ul><li><a href="Notation.html" target="content">Notation</a></li></ul>'
	echo '</body></html>'
}

for f in *.md
do
	name=${f##*/}
	name=${name%.md}
	# MD => XHTML
	(	content_header "$name";
		pandoc -f markdown -t html "$f";
		page_footer;
	) > "${f%.md}.html"
done

make_index > index.html
make_menu > index-menu.html

# vim:sw=4:ts=4
