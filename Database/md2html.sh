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
				<frame src='README.html' name='content' marginheight='8' marginwidth='8' scrolling='auto'/>
			</frameset>
		</html>
HTML
}

function make_menu {
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
		<h1>Database</h1>
		<ul>
			<li><a href="README.html" target="content">Readme</a></li>
			<li><a href="Notation.html" target="content">Notation</a></li>
		</ul>
		<hr/>
		<h2>Fados</h2>
		<ul>
HTML

	for f in *.html
	do
		name=${f%.html}
		[[ $name == 'Notation' || $name == 'README' ]] && continue
		[[ $name == 'index' || $name == 'index-menu' ]] && continue
		echo "<li><a target='content' href='$name.html'>$name</a></li>"
	done

	cat <<-HTML
		</ul>
		<hr/>
		</body></html>
HTML
}

function make_page {
	typeset MD=$1 NAME=${1%.md}

	cat <<-HTML
		<!DOCTYPE html PUBLIC '-//W3C//DTD XHTML 1.0 Strict//EN' 'http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd'>
		<html>
			<head>
				<meta http-equiv='Content-Type' content='text/html; charset=UTF-8' />
				<title>${NAME##*/}</title>
				<link rel="stylesheet" type="text/css" href="style.css"/>
			</head>
		<body>
HTML

	pandoc -f markdown -t html "$MD";

	typeset N
	[[ $NAME != *Notation ]] && N='<p<hr/>Check the <a href="Notation.html">notation</a> page for chords and score syntax.</p>'

	cat <<-HTML
		$N
		</body></html>
HTML
}

########################################################################
# Main
########################################################################

for md in *.md
do
	make_page "$md" > "${md%.md}.html"
done
make_page ../Notation.md > Notation.html
make_index > index.html
make_menu > index-menu.html

#xmllint --noout --valid *.html

# vim:sw=4:ts=4
