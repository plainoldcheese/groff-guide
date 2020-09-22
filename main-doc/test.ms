\# settings for refer
\# using the settings here means you don't have to have any command line options
\# be sure to check man refer to see for more options
.R1
accumulate
database bib.ref
move-punctuation
.R2

\# if you want to keep your macros in a separate file you can import them like this
.so macros

\# cover page
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
Don't forget to close the abstract commands with AE (abstract end).
most of the tags are mnemonic so it should be easy to remember.
.AE

\# prints the date on the cover page and in footers
.DA

\# page break
.bp

\# if you want a table of contents to be generated then you must add the heading inside of .XS and .XE like can be seen below
\# Numbered heading by default is a level 1

.NH
The First Section Using a Numbered Heading
.XS
The First Section Using a Numbered Heading
.XE

.LP
Here is an  un-indented paragrapoh with some dummy text so you can see what it looks like.
Sed et laboriosam officiis.
Excepturi vero iusto quos.
Laboriosam adipisci quia similique nesciunt quas aperiam corrupti vel.
Explicabo possimus quaerat fugiat eius tempora inventore commodi debitis.
Porro est dolores sequi.

.QP
Here is a block-quote, it is essentially a paragraph that has been indented on both sides.
It is a bit difficult to see in this example so I will add some dummy text.
Excepturi vero iusto quos.
Laboriosam adipisci quia similique nesciunt quas aperiam corrupti vel.
Porro est dolores sequi.
Explicabo possimus quaerat fugiat eius tempora inventore commodi debitis.


.PP
This is an indented paragraph.
Even Though it's only two sentences.
Here is some dummy text so you can see what it looks like.
Sed et laboriosam officiis.
Excepturi vero iusto quos.
Laboriosam adipisci quia similique nesciunt quas aperiam corrupti vel.
Explicabo possimus quaerat fugiat eius tempora inventore commodi debitis.
Porro est dolores sequi.

.NH 1
Equations
.XS
Equations
.XE

.LP
We can also type equations using EQN which is very simple and most of the syntax follows as you would say them. When in doubt use curly braces to isolate terms before dealing with them further.
I will use this opportunity to introduce references briefley as well.
.[
kernighan
.]
Below are some examples

.LP
The phrase
.CW " x = 1 over 2 "
generates the following
\# .CW print the text in a mono-space font

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
Here's an example of a more complex equation where you might need to use curly braces.
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

.LP
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

.PSPIC "pic/test.eps" 3i 2i
.nr fig_index 1
.ce
Figure \n[fig_index]: A rare pepe.
.nr fig_index +1

\# we can have auto figure numbering by using a variable and incrementing it each time we add a figure, This can be made much simpler through the use of macros. There Is an auto figure numbering macro available in the macros file accompanying this document, for the sake of keeping this document simple it will not be used.

.NH 2
notes on adding tables, equations and figures
.XS
notes on adding tables, equations and figures
.XE

.LP
If you add any of these you need to use the appropriate command line arguments at compile time to pass the images, equations, or tables to their respective preprocessor.
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
passes table to TBL.

.bp

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
.ce
Figure \n[fig_index]: Some random PIC graphics
.nr fig_index +1

.bp

.NH 2
A more useful example
.XS
A more useful example
.XE

.PS
A:box "some text" at (0,0)
B:box "other text" at (2,-1)
C:box "other text" at (2,1)
D:box "other text" at (4,0)
E:box "other text" at (4,-2)
arrow from A.e to B.w
arrow from A.e to C.w
arrow from B.e to D.w
arrow from B.e to E.w
.PE
.ce
Figure \n[fig_index]: Some more useful PIC graphics
.nr fig_index +1

.NH
Lists
.XS
Lists
.XE

.LP
here's a paragraph with no indent followed by a bulleted list
\# the first argument is the element used and a buillet and the second argument is the spacing.
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

.IP 1 2
item one
.IP 2 2
item two
.IP 3 2
item three

.LP
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
.CW ".nl"
.CW "item one"
.CW ".nl"
.CW "item two"
.CW ".nl"
.CW "item three"
.DE

The output will look like so

.nl
item one
.nl
item two
.nl
item three

.LP
If we want to make another numbered list we must set the
.CW list_index
back to 1, otherwise the numbers will follow from the previous list like so

.nl
This lists numbers are incorrect
.nl
we will fix them in the next list
.nl
using
.CW ".nr list_index 1"

.LP
Here is a list where we fixed the numbering
.nr list_index 1
.nl
This lists nubers are correct
.nl
we fixed them by
.nl
setting
.CW "list_index"
to 1.

.NH 1
Compilation
.XS
Compilation
.XE

.LP
The command I have been using to compile and generate a PDF including images, PIC graphics, equations, references and tables is:

.DS B
.CW "$ refer file.ms | groff -ms -e -p -t -Tps > file.ps; ps2pdf file.ps file.pdf"
.DE

.LP
this runs refer on the document and pipes the result into groff.
Groff is then run with the ms macros and told to preprocess using EQN, PIC, and TBL and output to postscript.
The resulting strict file is then converted to pdf using the ps2pdf command.

.LP
You could also add a command to remove the leftover postscript file if you do not need it.
The contents of a
.CW compile.sh
script might for example be

.ce
Listing 1: an example of the compile command for a groff document using EQN, REFER, PIC and TBL
.so code-listings/compile.groff
\m[]
\# the last line changes the font color back to black, this is needed because sometimes gnu source-highlight doesn't change the font color back to black

.LP
The macros I use are sourced at the beginning of the groff document and the refer option are also set in the document itself.
This makes the compile command a little bit shorter and allows me to keep different bib and macro files per document (although i usually keep one large one and use the same one every time, I am still in the process of converting my Latex bib into refer.)


.XN 1 "Code Listings and source highlighting"

.LP
Leveraging external tools is part of the UNIX philosophy and as such we will use the GNU
.CW source-highlight
command to color our code listings and convert them to groff format.
The command used for the shell script in the
.B Compilation
section was highlighted using the following command

.DS B
.CW "source-highlight -s sh -i compile.sh -o compile.groff --out-format groff_mm_color"
.DE

.LP
The the first argument is the -s argument followed by the file type that you wish to highlight in the earlier example it is a shell script but below the same process was followed to insert python code.
after that -i is the input file you wish to process, -o is the file you wish to output to.
The most important

.ce
Listing 2: Some python code that was colored using GNU source-highlight
.so ./code-listings/Fibonacci.groff
\m[]

.XN 1 "Notes on using Windows 10"

.LP
This document was for the most part produced on Windows 10 using the "Windows Subsystem for Linux" (WSL).
The main issue here being that groff doesn't really like DOS line endings and depending on what text editor you used to produce the document windows may have saved it with DOS line endings.
To fix the problem you cant run the
.CW dos2unix
command on the file and it will be converted to UNIX line endings which works fine with all the tools used in the preparation of a groff document.


.bp

.NH 1
Resources and Documentation
.XS
Resources and Documentation
.XE

.LP
Viewing the man pages
.[
groff-man-page
.]
is done a bit strangely as they are split depending on the macros you are searching for.
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

Another very helpful man page is the the man page for
.CW grof_tmac
Which can be viewed by running
.DS L
.CW "$ man grof_tmac"
.DE
This is the manpage where the macro for adding an image is found along with some other thangs.

.LP
If you would like to look at some of the original troff documentation and resources you can have a look at the following link where a collection of such resources where gracioulsy compiled.
.DS L
.CW "https://troff.org/papers.html"
.[
troff.org ralph
.]
.DE

Another book that proved quite helpful was
.I "UNIX Text Processing".
.[
unix text processing
.]
Thanks to O'Reilly for making this book freely available.

Thanks as well to the wonderfully practical
.I "The Groff Friends HOWTO"
.[
The Groff Friends HOWTO
.]
for making it much easier to figure this stuff out.


\# prints all accumulated references up to this point
.[
$LIST$
.]

\# Generate Table of Contents (will by default generate at end of document)
.TC

