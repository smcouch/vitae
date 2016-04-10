%
% vitae.cls - style for formatting a CV
% Edward Brown, Michigan State University
%

\def\fileversion{3.1}
\def\filedate{2014/04/13}

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{vitae}[\filedate, \fileversion]
\typeout{%
  Document Style: `vitae' v\fileversion \space <\filedate>}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{report}}
\ProcessOptions
\usepackage[x11names]{xcolor}
\usepackage{etaremune}
\LoadClass{report}
\definecolor{grey95}{rgb}{0.949,0.949,0.949}
\usepackage{geometry}

% Set page lengths
%\setlength{\oddsidemargin}{0pt}
%\setlength{\topmargin}{0pt}
%\setlength{\textheight}{628pt}
%\setlength{\headheight}{14pt}
%\setlength{\textwidth}{456pt}
\setlength{\parindent}{0pt}
\setlength{\parskip}{2.0ex plus0.1ex minus0.1ex}

\setlength{\textwidth}{6.5in}
\setlength{\oddsidemargin}{0pt}
\setlength{\evensidemargin}{0pt}
\setlength{\topmargin}{-0.5in}
\setlength{\headheight}{0.2in}
\setlength{\headsep}{0.2in}
\setlength{\textheight}{9.in}
\setlength{\footskip}{0.3in}
\setlength{\voffset}{0.0in}

% lengths for various boxes
\newlength{\headerlength}   % length of grayscale box containing title of a chronological list
\setlength{\headerlength}{\textwidth}
\addtolength{\headerlength}{-2\fboxsep}
\addtolength{\headerlength}{-2\fboxrule}

\newcommand{\sectionheader}[1]{%
\colorbox{grey95}{\makebox[\headerlength][l]{\scshape\large #1\hrulefill}}}

\newcommand{\publicationheader}[1]{%
{\scshape\large #1}}


\newenvironment{chronlist}{%
\begin{list}{}{ \setlength{\topsep}{-2ex plus0.1ex minus0.3ex}
                \setlength{\leftmargin}{96pt}
                \setlength{\labelwidth}{86pt}
                \setlength{\labelsep}{4pt}
                \setlength{\parsep}{1.0ex plus0.1ex minus0.1ex}
                \setlength{\partopsep}{1.0ex plus0.1ex minus0.1ex}
                \setlength{\itemsep}{0ex}
                \renewcommand{\makelabel}[1]{\parbox[t]{86pt}{\itshape
                ##1}\hfill}}}
{\end{list}\vspace{4.0ex plus 0.5ex minus 0.1ex}}

\newenvironment{genericlist}{%
\begin{list}{}{ \setlength{\topsep}{-2ex plus0.1ex minus0.3ex}
                \setlength{\leftmargin}{36pt}
                \setlength{\labelwidth}{0pt}
                \setlength{\labelsep}{0pt}
                \setlength{\itemindent}{-24pt}
                \setlength{\itemsep}{-1ex}
                \setlength{\parsep}{1.0ex plus0.1ex minus0.1ex}
                \setlength{\partopsep}{1.0ex plus0.1ex minus0.1ex}}}
{\end{list}\vspace{4.0ex plus 0.5ex minus 0.1ex}}

\newenvironment{publist}[1]{%
\begin{etaremune}[leftmargin=52pt,labelsep=8pt, itemindent=-30pt]}
{\end{etaremune}}

\newenvironment{awardlist}{%
\begin{list}{}{ \setlength{\topsep}{-2ex plus0.1ex minus0.3ex}
                \setlength{\leftmargin}{96pt}
                \setlength{\labelwidth}{86pt}
                \setlength{\labelsep}{4pt}
                \setlength{\parsep}{1.0ex plus0.1ex minus0.1ex}
                \setlength{\partopsep}{1.0ex plus0.1ex minus0.1ex}
                \setlength{\itemsep}{-1ex}
                \renewcommand{\makelabel}[1]{\parbox[t]{86pt}{\itshape
                ##1}\hfill}}}
{\end{list}\vspace{4.0ex plus 0.5ex minus 0.1ex}}

\sloppy
