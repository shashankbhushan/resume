%----------------------------------------------------------------------------------------
%	CLASS OPTIONS AND REQUIRED PACKAGES
%----------------------------------------------------------------------------------------

\ProvidesClass{deedy-resume}[2014/04/30 CV class]
\NeedsTeXFormat{LaTeX2e}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax
\LoadClass{article}

\usepackage[hmargin=1cm, vmargin=2cm]{geometry} % Specifies horizontal and vertical page margins

%----------------------------------------------------------------------------------------
%	COLORS
%----------------------------------------------------------------------------------------

\usepackage[usenames,dvipsnames]{xcolor} % Required for custom colors
\usepackage{ulem}

\definecolor{primary}{HTML}{000000} % The primary document color for content text
\definecolor{headings}{HTML}{000000} % The color of the large sections
\definecolor{subheadings}{HTML}{000000} % The color of subsections and places worked/studied
\definecolor{date}{HTML}{000000} % The color used for the Last Updated text at the top right

%----------------------------------------------------------------------------------------
%	FONTS
%----------------------------------------------------------------------------------------

\usepackage{fontspec} % Required for specifying custom fonts in XeLaTeX

\setmainfont[Color=primary, Path = fonts/lato/,BoldItalicFont=Lato-RegIta,BoldFont=calibrib,ItalicFont=Calibri-Italic]{Calibri} % The primary font for content text; defines bold, italic and bold-italic as well

\setsansfont[Scale=MatchLowercase,Mapping=tex-text, Path = fonts/raleway/]{Raleway-ExtraLight} % The font used where \sfffamily is called
\definecolor{linkcolour}{rgb}{0.25,0.25,0.6}

%----------------------------------------------------------------------------------------
%	LAST UPDATED COMMAND
%----------------------------------------------------------------------------------------

\usepackage[absolute]{textpos} % Required for positioning the Last Updated text at the top right of the page
\usepackage[UKenglish]{isodate} % Prints the Last Updated date in UK English format

\setlength{\TPHorizModule}{0.01\paperwidth} % Sets the units for the horizontal position used in the \begin{textblock} argument
\setlength{\TPVertModule}{0.01\paperwidth} % Sets the units for the vertical position used in the \begin{textblock} argument
\newcommand{\lastupdated}{ % Create a new command for printing the Last Updated text
\begin{textblock}{25}(75,2) % The position of the Last Updated text on the page (75% of the page across, 2% down)
\color{date}\fontspec[Path = fonts/raleway/]{Raleway-ExtraLight}\fontsize{8pt}{10pt}\selectfont % Text styling of the text
Last Updated on \today % Last Updated text
\end{textblock}}

%----------------------------------------------------------------------------------------
%	MAIN HEADING COMMAND
%----------------------------------------------------------------------------------------

\newcommand{\namesection}[3]{ % Defines the command for the main heading
\centering{ % Center the name
\fontsize{20pt}{20pt} % Font size
\fontspec[Path = fonts/lato/]{Roman}\selectfont #1 % First name font
\fontspec[Path = fonts/lato/]{Roman}\selectfont #2 % Last name font
} \\[5pt] % Whitespace between the name and contact information
\centering{ % Center the contact information
\fontspec[Path = fonts/lato/]{Roman}\fontsize{18pt}{18pt}\selectfont #3} % Contact information font
\noindent\makebox[\linewidth]{\color{headings}\rule{\paperwidth}{0.4pt}} % Horizontal rule
\vspace{-5pt} % Reduce whitespace after the rule slightly
}

%----------------------------------------------------------------------------------------
%	SECTION TITLE STYLING AND SPACING
%----------------------------------------------------------------------------------------

\usepackage{titlesec} % Required for customizing section/subsection/etc titles

\titlespacing{\section}{0pt}{0pt}{0pt} % Removes the spacing around the main section titles
\titlespacing{\subsection}{0pt}{0pt}{0pt} % Removes the spacing around the subsections
\newcommand{\sectionspace}{\vspace{8pt}} % Defines a command to add a set amount of space after sections and subsections
\newcommand{\minispace}{\vspace{4pt}} % Defines a command to add a set amount of space after sections and subsections
\newcommand{\microspace}{\vspace{4pt}} % Defines a command to add a set amount of space after sections and subsections

\titleformat{\section}{ % Customize the large section titles
\fontspec[Path = fonts/lato/]{calibrib}\fontsize{12pt}{12pt}\selectfont \raggedright\uppercase}{}{0em}{}

\titleformat{\subsection}{ % Customize the subsections and places worked/studied titles
\fontspec[Path = fonts/lato/]{calibrib}\fontsize{10pt}{10pt}\selectfont\bfseries\uppercase}{}{0em}{}

\newcommand{\runsubsection}[1]{ % Used for creating subsections where a description is required on the same line
\fontspec[Path = fonts/lato/]{calibrib}\fontsize{10pt}{10pt}\selectfont\bfseries\uppercase {#1} \normalfont}

\newcommand{\descript}[1]{ % Used for describing the subsection either on the same line or underneath
\raggedright\scshape\fontspec[Path = fonts/lato/]{calibrib}\fontsize{10pt}{10pt}\selectfont {#1 \\} \normalfont}

\newcommand{\rundescript}[1]{ % Used for describing the subsection either on the same line or underneath
\raggedright\scshape\fontspec[Path = fonts/lato/]{Calibri}\fontsize{10pt}{10pt}\selectfont {#1} \normalfont}

\newcommand{\location}[1]{ % Used for specifying a duration and/or location under a subsection
\raggedright\fontspec[Path = fonts/lato/]{calibrib}\fontsize{10pt}{12pt}\selectfont {#1\\} \normalfont}

\newcommand{\runlocation}[1]{ % Used for specifying a duration and/or location under a subsection
\raggedright\fontspec[Path = fonts/lato/]{calibrib}\fontsize{10pt}{12pt}\selectfont {#1} \normalfont}

%----------------------------------------------------------------------------------------
%	SECTION TITLE STYLING AND SPACING
%----------------------------------------------------------------------------------------

\newenvironment{tightitemize} % Defines the tightitemize environment which modifies the itemize environment to be more compact
{\vspace{-\topsep}\begin{itemize}\itemsep1pt \parskip0pt \parsep0pt}
{\end{itemize}\vspace{-\topsep}}
\def\HS{\hspace{\fontdimen2\font}}