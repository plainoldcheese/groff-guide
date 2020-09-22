\# macros
.nr list_index 1

.de NL
.IP \\n[list_index]
.nr list_index +1
..
\# if you want to keep your macros in a sepaarate file you can import them like this
\# .so macros

\# settings for refer
\# using the settings here means you dont have to have any command line options
\# be sure to check man refer to see for more options
.R1
no-label-in-reference
accumulate
move-punctuation
database bib.ref
.R2


\# coverpage
.TL
The Title

.AU
Author Name
Author Two
Author Three

.AI
Institution

.AB
You can add an abstract like this!
Dont forget to close the abstract commands with AE (abstract end).
most of the tags are mnemonic so it should be easy to remember.
.AE

\# prints the date on the cover page and in footers
.DA

\# pagebreak
.bp

\# if you want a table of contents to be generated then you must add the heading inside of .XS and .XE like can be seen below
\# Numbered heading by default is a level 1

.NH
The First Section Using a Numbered Heading
.XS
The First Section Using a Numbered Heading
.XE


.PP
This is an indented paragraph.
Even Though it's only two sentences.

.PP
Here is another indented paragrapoh with some dummy text so you can see what it looks like.
Sed et laboriosam officiis.
Excepturi vero iusto quos.
Laboriosam adipisci quia similique nesciunt quas aperiam corrupti vel.
Explicabo possimus quaerat fugiat eius tempora inventore commodi debitis.
Porro est dolores sequi.

.LP
Here is an  un-indented paragrapoh with some dummy text so you can see what it looks like.
Sed et laboriosam officiis.
Excepturi vero iusto quos.
Laboriosam adipisci quia similique nesciunt quas aperiam corrupti vel.
Explicabo possimus quaerat fugiat eius tempora inventore commodi debitis.
Porro est dolores sequi.

.QP
Here is a blockquote, it is essentially a paragraph that has been indented on both sides.

.bp

.NH 1
Equations
.XS
Equations
.XE

.PP
We can also type equations using EQN which is very simple and most of the syntax follows as you would say them. When in doubt use curly braces to isolate terms before dealing with them further.
.[
kernighan eqn 1978
.]
Below are some examples

.LP
The phrase
.CW " x = 1 over 2 " \# .CW print the text in a monospace font
generates the following

.EQ
x = 1 over 2
.EN

.LP
The phrase
.CW " y = 2 x sup 2 + 4x - 2 "
generates the following

.EQ
y = 2 x sup 2 + 4x - 2
.EN

.LP
The phrase
.CW " y=4sin(x)-cos sup 2 (x) "
generates the following

.EQ
y=4sin(x)-cos sup 2 (x)
.EN

.LP
Heres an example of a more complex equation where you might need to use curly braces.
The phrase
\# DS and DE separate the text inside in a "block"
.DS B
.CW " s = sqrt { { sum from i=1 to inf ( x sub i - x bar ) sup 2 } over { N - 1 } } "
.DE
generates the following

.EQ
s = sqrt { { sum from i=1 to inf ( x sub i - x bar ) sup 2 } over { N - 1 } }
.EN

.bp

.NH 1
Images
.XS
Images
.XE

.PP
The problem with images is that they need to be encapsulated postscript or .eps files.
Your images can be converted to eps using the
.CW convert
command, found in
.CW ImageMagick.

.DS B
.CW "$ convert test.jpg test.eps"
.DE

.LP
After converting your images to eps files they can be included like below.

.PSPIC "pic/test.eps"

.DS
.ce
Figure 1: A rare pepe.
.DE

.bp

.NH 2
notes on adding tables, equations and figures
.XS
notes on adding tables, equations and figures
.XE

.LP
If you add any of these you need ot use the appropriate command line arguments at compile time to pass the images, equations, or tables to their respective preprocessor.
An example of a compile command might be
.DS
.CW "groff -ms -e -t -p file.ms -Tpdf > file.pdf"
.DE
Where
.CW "-e"
passes equations to EQN,
.CW "-p"
passes figures and images to PIC,
.CW "-t"
passes tabel to TBL.

.NH
Some more stuff about headings
.XS
Some more stuff about headings
.XE

.NH 1
This is a level one heading
.XS
This is a level one heading
.XE

.PP
Sed et laboriosam officiis.
Excepturi vero iusto quos.
Laboriosam adipisci quia similique nesciunt quas aperiam corrupti vel.
Explicabo possimus quaerat fugiat eius tempora inventore commodi debitis.
Porro est dolores sequi.

.NH 2
This is a level two heading
.XS
This is a level two heading
.XE

.PP
Sed et laboriosam officiis.
Excepturi vero iusto quos.
Laboriosam adipisci quia similique nesciunt quas aperiam corrupti vel.
Explicabo possimus quaerat fugiat eius tempora inventore commodi debitis.
Porro est dolores sequi.

.NH 3
This is a level three heading
.XS
This is a level three heading
.XE

.PP
Sed et laboriosam officiis.
Excepturi vero iusto quos.
Laboriosam adipisci quia similique nesciunt quas aperiam corrupti vel.
Explicabo possimus quaerat fugiat eius tempora inventore commodi debitis.
Porro est dolores sequi.

.NH 4
This is a level four heading
.XS
This is a level four heading
.XE

.PP
Sed et laboriosam officiis.
Excepturi vero iusto quos.
Laboriosam adipisci quia similique nesciunt quas aperiam corrupti vel.
Explicabo possimus quaerat fugiat eius tempora inventore commodi debitis.
Porro est dolores sequi.

.bp

.NH 1
Drawing stuff with PIC
.XS
Drawing stuff with PIC
.XE

.PS
circle "circle" "more text" rad 0.5 at (0,-1)
ellipse "ellipse" ht 0.5 wid 1 at (0,0)
box "box" ht 0.5 wid 1 at (-2.5,1)
box "box" ht 0.5 wid 1 at (-2.5,2)
arrow from last ellipse.w to 2nd last box.e
line from last circle.n to last ellipse.s
A:box "box" at (0,3)
B:box "box" at (0,4)
arc from B.w to A.w
.PE

.bp

.NH 2
A more useful example
.XS
A more useful example
.XE

.PS
A:ellipse "some text" at (0,0)
B:ellipse "other text" at (2,-1)
C:ellipse "other text" at (2,1)
arrow from A.e to B.w
arrow from A.e to C.w
.PE

.NH
Lists
.XS
Lists
.XE

.LP
heres a paragraph with no indent followed by a bulletted list

.IP \(bu 2
item one
.IP \(bu 2
item two
.IP \(bu 2
item three
.IP \(bu 2
item four

.LP
Numbered lists are a bit tougher since you have to manually add the numbers

.IP 1
item one
.IP 2
item two
.IP 3
item three

you can use a macro to create auto numbering lists
These macros look like so:

.DS B
.CW ".de NL"
.CW ".IP \\n[list_index]"
.CW ".nr list_index +1"
.CW ".."
.DE

and are called in groff like so

.DS B
.CW ".nr list_index 1"
.CW ".NL"
.CW "item one"
.CW ".NL"
.CW "item two"
.CW ".NL"
.CW "item three"
.DE

The output will look like so

.NL
item one
.NL
item two
.NL
item three


Note this macro implementation requires that you declare
.CW "list_index"
before starting a new list otherwise the numbers will carry on from the previous list.

.NH 1
Compilation
.XS
Compilation
.XE

.LP
The command I have been using to compile and generate a pdf including images, PIC graphics, equations, references adn tables is:

.DS B
.CW "$ refer file.ms | groff -ms -e -p -t -Tps > file.ps; ps2pdf file.ps file.pdf"
.DE

.PP
this runs refer on the document and pipes the result into groff.
Groff is then run with the ms macros and told to preprocess using EQN, PIC, and TBL and output to postcript.
The resulting postrict file is then converted to pdf using the ps2pdf command.

.LP
You could also add a command to remove the leftover postscript file if you do not need it.
The contents of a
.CW compile.sh
script might for example be

.DS B
.CW "#!/bin/sh"
.CW "refer file.ms | groff -ms -e -p -t -Tps > file.ps;"
.CW "ps2pdf file.ps file.pdf;"
.CW "rm file.ps"
.DE

.LP
The macros I use are sourced at the beginning of the groff document and the refer option are also set in the document itself.
This makes the compile command a little bit shorter and allows me to keep different bib and macro files per document (although i usually keep one large one and use the same one every time, I am still in the process of converting my LaTeX bib into refer.)

.bp

.NH 1
References and Documentation
.XS
References and Documentation
.XE

.LP
You can view the
.CW groff_ms
documentation by running
.DS L
.CW "$ man groff_ms"
.DE

.LP
You can view the EQN documentation by running
.DS L
.CW "$ man eqn"
.DE

.LP
You can view the PIC documentation by running
.DS L
.CW "$ man eqn"
.DE

.LP
If you would like to look at the original troff documentation you can have a look at the following link.

.DS L
.CW "https://troff.org/papers.html"
.DE

\# prints all accumulated references up to this point
.[
$LIST$
.]

\# Generate Table of Contents (will by default generate at end of document)
.TC

