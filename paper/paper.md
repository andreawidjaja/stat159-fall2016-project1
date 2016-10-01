\# Abstract
-----------

  ----
  ![St
  at15
  9](.
  ./im
  ages
  /sta
  t159
  -log
  o.pn
  g)

  \#\#
  How
  To
  Make
  Your
  Own
  Repr
  oduc
  ible
  Rese
  arch
  \#\#
  \#
  Auth
  or:
  Widj
  aja,
  Andr
  ea

  In
  ever
  y
  scie
  ntif
  ic
  rese
  arch
  ,
  tech
  nolo
  gies
  are
  ofte
  n
  used
  by
  scie
  ntis
  ts
  to
  coll
  ect,
  anal
  yze,
  and
  publ
  ish
  data
  .
  With
  comp
  utat
  iona
  l
  scie
  nce
  rapi
  dly
  grow
  ing
  as
  tech
  nolo
  gy
  adva
  nces
  ,
  rese
  arch
  ers
  have
  been
  call
  ing
  more
  and
  more
  atte
  ntio
  n
  to
  Repr
  oduc
  ible
  Rese
  arch
  .
  "Wha
  t
  is
  Repr
  oduc
  ible
  Rese
  arch
  ?"
  Well
  ,
  Repr
  oduc
  ible
  Rese
  arch
  enab
  les
  rese
  arch
  ers
  to
  reus
  e,
  modi
  fy
  and
  exte
  nd
  prev
  ious
  publ
  ishe
  d
  code
  s
  and
  data
  .
  This
  prom
  otes
  rese
  arch
  ers
  to
  coll
  abor
  ate
  with
  one
  anot
  her.
  In
  this
  pape
  r,
  I
  will
  show
  you
  how
  to
  crea
  te
  your
  own
  repr
  oduc
  ible
  pape
  r,
  and
  also
  disc
  uss
  the
  conc
  epts
  and
  tool
  s
  that
  can
  be
  util
  ized
  to
  prom
  ote
  repr
  oduc
  ibil
  ity
  in
  rese
  arch
  .

  \#
  Intr
  oduc
  tion
  ----

Before we begin, it is important for us to know the foundation behind
Reproducible Research and why you might consider using it more often.
The concept of Reproducible Research relies heavily on the idea of The
Scientific Method. In science, an experiment is reproducible. "Why?" You
might ask. Scientific experiments rely heavily on evidence from data in
which, hypothesis are usually tested from observations. For scientific
research, to reproduce is to conduct the same experiment with a
different set up. This similar concept applies to Reproducible Research.
In order for data or code to be reproducible, it should be accessible to
the public. The transparency that this tool of collaboration provides,
demonstrates that it is heavily evidence-based and that the results are
reliable and valid.

This paper is, indeed, an example of a reproducible paper. I will show
you how to produce your own reproducible research paper step-by-step.
First of all, we have to be familiar with the five tools that I have
utilized for this reproducible paper. They are Git, GitHub, Makefile,
Markdown, and pandoc.

I will then further discuss the following topics:

-   Functions of each tool
-   role each tool plays in writing this reproducible paper

\# Discussion
-------------

Typesetting/Formatting Language
-------------------------------

### Markdown

![Stat159](../images/markdown-logo.png)\
As you read through this paper, have you ever paused and wondered...
"How did she make the list above? or "How did she change the header
size?" If yes, then I might just have the perfect answer to your
questions. That is, of course, Markdown. As a matter of fact, this paper
you are reading right now is an example of a Markdown. Markdown is a
text-based markup that can be used to create creative and easy to read
documents.

Markdown provides simple, intuitive formatting elements:

-   This unordered list can be created by adding a `*` in front of each
    item
    -   To make a nested list like this, simply indent one level
-   You can have ordered list by starting each item with a number `1.`
    1.  This is
    2.  an ordered list
-   You also can have different header sizes
    -   header sizes are indicated by the number of `#`s in front of the
        header
    -   `# Discussion` for the "Discussion" header
    -   `### Markdown` for the "Markdown" header
-   To make inline codes like above, simply type in \`\`\` at the front
    and back of the word
-   You can format/style your words
    -   You can have them **bold** by typing in `**bold**`
    -   You can also have the words *italic* by typing in `*italic*`
-   You can also add images like the Markdown logo above
    -   Simply follow this `![](../images/markdown-logo.png)`
-   For further information on Markdown, you can simply check out this
    [Tutorial](https://guides.github.com/features/mastering-markdown/)
    -   The code to add that link is:
    -   `[Tutorial](https://guides.github.com/features/mastering-markdown/)`

For this paper, my first step was to write my Markdown in any text
editor. I chose **MacDown** because I was most familiar with it. To make
things simpler, Markdown is basically like Microsoft Word, except it is
used to design web pages. In order for me to continue to my next step, I
need a document converter to convert my Markdown file into a HTML file.

Document Conversion
-------------------

### pandoc

![Stat159](../images/pandoc-logo.png)\
An example of a document converter is Pandoc. Before you get started,
make sure that you have pandoc instsalled in your computer. Pandoc is a
universal document converter that can convert files from one markup
format into another. It is a command-line tool that converts files
between document formats such as markdown, LaTeX, HTML, Microsoft
Word.Docx, and PDF.

After finishing my Markdown, I used pandoc to convert Markdown into a
HTML file.\
By default, typing

    pandoc doc.md 

in the Terminal converts a file written in markdown into a HTML file.\
Alternatively, you can also write it this way:

    pandoc -f html -t markdown doc.md

The code above shows that pandoc converts (-f) from HTML (-t) to a
markdown document called "doc.md".\
Pandoc is beneficial for everyone because it gives people access to the
files they need. With research files being available and easily
accessible, this introduces the idea of data transparency and efficiency
in Reproducible Research.

Version Control
---------------

A common problem that researchers generally face is to manage changes.
During the course of writing your own reproducible research, you will
most like have to deal with adding new information or discoveries,
modifying details, or deleting a text you might want to undo. Logically,
you can do this by making copy of the original file, and editing the
duplicated file. Sounds familiar? I am sure you have done this at least
once in your lifetime. Editing the duplicated file to track changes
might seem the perfect solution because it is very simple. However, what
happens when you have to track the changes made to the original document
more than once? It is surely going to be a hassle to manage the multiple
variations made. This is when a version control system steps in.\
\#\#\#\# Git ![Stat159](../images/git-logo.png)

Git is an example of a version control software. It autamatically keeps
track of the changes made to a file or set of files over time so that
you can revert files back to their previous states. It is a distributed
open source medium which allows collaboration between researchers. This
promotes reproducibility. To access Git, I used the command line
(Terminal). Git allows me to track every pictures I added or paragraphs
I modified, and compare it from the previous versions to see which one I
like better.

Examples of `git` commands:

    git init: creates a new Git repository  
    git status: show working tree status  
    git push: update remote  
    git commit: record changes to the repository  
    git log: shows log of what has been committed  
    git diff: shows what you have changed  
    git rm and mv: remove and move files

#### GitHub

![Stat159](../images/github-logo.png)\
Git stores information on changes on files into a data structure called
a repository. GitHub is a website service that hosts git repositories
online publically or privately. As one of the online website service
with the largest storage space, GitHub provides users the opportunity to
collaborate with other users. GitHub is also known for its "forking"
abilities. This allows users to utilize previously published
repositories and reproduce their own project from it. To summarize, not
only does GitHub act as a social networking medium in which users build
their profile, upload projects, and connect with other users, but it
also act as a resume to showcase completed projects.\
Additionally, GitHub is also used to ease the graders in grading this
paper.

Program Building (Unix Tool)
----------------------------

### Makefile

Compiling code files can be very inefficient, especially if you have to
repititively type the command lines every time you want to do it. Don't
worry! In an era where almost everything is instant and convenient,
Makefile gives you a shortcut to execute the commands recipe by simply
running the `make`program.

A Makefile is a Unix tool that is often used to simplify the
organization of code compilation. It is a text file named "Makefile"
that contains shell commands. Generally, a makefile contains a list of
rules that tell the system what commands you want to be executed. These
rules are oftentimes commands to compile a series of files or remove
certain files as a clean up operation. Before starting, make sure that
you have `make` installed in you comuter, so that you can execute the
Makefile.\
\#\#\#\#\# Basic Makefile rule structure:

    target: dependencies
    [tab]commands

Our goal here is to build the *target* file, from the *dependencies*
source files.

An exerpt of the Makefile rule I used to compile this paper:

    .PHONY: paper.md paper.html clean
    paper/paper.html: paper/paper.md
        cd paper; pandoc paper.md -s -o paper.html

    paper/paper.md: paper/sections/00-abstract.md paper/sections/01-introduction.md paper/sections/02-discussion.md paper/sections/03-conclusions.md
        cd paper/sections; pandoc *.md -s -o paper.md
        cd paper/sections; mv paper.md ../

    clean:
        rm -f paper/paper.html paper/paper.md

Notice that this paper is divided into 4 sections from the [sections
folder](https://github.com/andreawidjaja/stat159-fall2016-project1/tree/master/paper/sections),
and that Makefile is needed to compile these 4 files, which are
*dependencies*, into one file called `paper.md`, the *target* file.

Command used to build the target file:
`cd paper/sections; pandoc *.md -s -o paper.md`\
To simplify things, an `*.md` is used to indicate all the dependent
files with the extention `.md`.

An example of command used to do a clean-up operation:\
`clean: rm -f paper/paper.html paper/paper.md` This removes output files
after compilation. The flag -f is used to avoid displaying error message
if the output files do not exist.

`.PHONY` is not really the name of a target file, but rather, the name
of a recipe of actions to be performed.

After completing your Makefile, then you can run *make* program by
typing in `make` into the command-line. This will search for a file
called makefile in your directory and execute the commands inside the
Makefile. If you have several makefiles, then you can specify which
target you want makefile to execute by typing in
`make <specific target name>`. To execute the clean up operations, you
can simply type in `make clean`.

Additional Information
----------------------

### Resources

> \[Lecture 3\] (http://ropensci.github.io/reproducibility-guide/)\
> \[Lab 2\]
> (https://github.com/ucb-stat159/stat159-fall-2016/blob/master/labs/lab02/lab02-filesystem-markdown.Rmd)\
> \[Lab 3\]
> (https://github.com/ucb-stat159/stat159-fall-2016/blob/master/labs/lab03/lab03-git-basics.Rmd)\
> [Lecture
> 4](http://gastonsanchez.com/stat159/lectures/04-wavelab-pandoc/)\
> [Lecture 7](https://github.com/unix-tools/tutorial-makefiles/)

### Project Cycle

#### Difficulty, Challenges & Solution

> Personally, I feel that the easier parts making this reproducible
> paper was to format and type the markdown document. Since I was
> familiar with HTML and R Markdown, I was able to put my creativity
> into practice.

> The most challenging parts for me was to explain the concepts and
> ideas behind each tool in a way that everyone can completely
> understand. Additionally, I also find it difficult to make my
> discussion flow better for people to understand.

> One of the very first challenges I faced was during Monday's Lab. I
> created a test file called `try.md` and committed it to the
> repository. I had difficulties removing the `try.md` file. It turns
> out that I had to use `git rm try.md` instead of `rm try.md` in order
> for my local file to match my repository on GitHub.

> Another challenge I was stuck with is the Makefile. After executing
> `make`, the `paper.md` was successfully updated whereas, the
> `paper.html` wasn't. It turns out that I have to switch the order of
> the targets due to dependency.

> I was also stuck in getting the picture to appear in my HTML file. To
> tackle this situation, I had to remove all the pictures and
> re-downloaded them.

> Additionally, by going to Prof. Gaston Sanchez's office hour, I was
> able to tackle several of my challenges.

#### Time Consumed

> The most time consuming parts of this project is creating the
> framework and file structure on Monday's lab, and writing the contents
> of this paper.

> It took me around 12 hours to complete this project.

\# Conclusion
-------------

Writing this reproducible paper made me realize an even greater
importance of reproducibility in research. Reproducible research is
beneficial in a way that it can be very efficient and minimize possible
errors. I have discussed with you the five tools needed to reproduce
your own research, which are: Git, GitHub, Markdown, pandoc, and
Makefile. The structure this reproducible paper sets reflects the steps
needed for future reproducible researches. Since it was the very first
time for me, I believe that I have gained the knowledge and technical
skills for Reproducibility Research.
