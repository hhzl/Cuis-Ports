'From Cuis 4.0 of 21 April 2012 [latest update: #1260] on 4 June 2012 at 7:49:49 pm'!
'Description Split out from HTML'!
!classDefinition: #HtmlParserTest category: #HTMLTests!
TestCase subclass: #HtmlParserTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'HTMLTests'!
!classDefinition: 'HtmlParserTest class' category: #HTMLTests!
HtmlParserTest class
	instanceVariableNames: ''!

!classDefinition: #HtmlTokenizerTest category: #HTMLTests!
TestCase subclass: #HtmlTokenizerTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'HTMLTests'!
!classDefinition: 'HtmlTokenizerTest class' category: #HTMLTests!
HtmlTokenizerTest class
	instanceVariableNames: ''!


!HtmlParserTest methodsFor: 'as yet unclassified' stamp: 'sd 12/4/2010 21:37'!
htmlDoc

	^ '<html>
<head>
<title>The Gate of Chaos</title>
</head>

<body>

<h1>Chaos</h1>



<h2>Into the Maelstrom</h2>
Direction is useless in the ever-changing Maelstrom.  However,
if you wander with purpose, you might be able to find....
<ul>
<li><a href="/cgi-bin/w">see who''s logged in</a>
<li><a href="/Telnet/connect.html">log in, if you (oooh) have an account</a>
<li><a href="http://chaos.resnet.gatech.edu:9000/sw">The Chaos Swiki</a>--scribble on chaos
<li>the original <a href="/cgi-bin/guestlog-print">Visitor Sands</a>
<li>my old <a href="rant.html">Rant Page</a>
<li>neverending <a href="/cgi-bin/bread">poll</a>: do you have an opinion on bread?
<li>a <a href="http://www.cc.gatech.edu/~lex/linux.html">Linux page</a>-- free UNIX for PC''s!!
<li><a href="english.au">Hear Linus Himself speak!!!!</a>
<li><a href="/doc/">some docs on all kinds of computer stuff</a>
</ul>

<hr>


<h2>Paths of Retreat</h2>
Several commonly travelled ways have left paths leading 
<em>away</em> from the maelstrom, too:
<p>
<ul>
<li><a href="friends.html">Friends of Chaos</a>
<li><a href="http://www.apache.org/">The <em>Apache</em> home page</a> -- 
        <em>Chaos</em>''s WWW server!!
<li><a href="http://www.ee.umanitoba.ca/~djc/personal/notscape.html">
Notscape</a>

the <a href="http://www.eskimo.com/%7Eirving/anti-ns/">Anti-Netscape
Page</a> -- fight the tyranny!!
</ul>

<hr>
<a href="/analog/usage.html">usage stats</a> for this server

<hr>
<a href="http://www.eff.org/blueribbon.html"><img src="blueribbon.gif" alt="[blue ribbon campaign]"></a>
<a href="http://www.ee.umanitoba.ca/~djc/personal/notscape.html">
<img src="notscape.gif" alt="[NOTscape]">
</a>
<a href="http://www.anybrowser.org/campaign/">
<img src="anybrowser3.gif" alt="[Best Viewed With Any Browser]"></a>
</body>
</html>'! !

!HtmlParserTest methodsFor: 'as yet unclassified' stamp: 'sd 12/4/2010 21:38'!
testParser
	"self run: #testParser"
	
	| input |
	input := ReadStream on: self htmlDoc.
	self shouldnt: [HtmlParser parse: input] raise: Error! !

!HtmlTokenizerTest methodsFor: 'Running' stamp: 'FBS 11/7/2003 23:09'!
testEmptyTag

	| tok tag |
	tok := HtmlTokenizer on: '<html />'.
	tag := tok next.
	
	self assert: (tag name = 'html').
	self assert: (tag isNegated not).
	self assert: (tok atEnd).! !
