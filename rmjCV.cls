% RMJ's CUSTOM CV CLASS

% The structure of all class files can be roughly described in four parts:
% Part 1: Identification -- The file declares itself as a class written with the LaTeX2ε syntax.
% Part 2: Preliminary Declarations -- External packages and classes are imported.
% The commands and definitions needed by the declared options are coded here.
% Part 3: Options -- The class declares and processes the options.
% Part 4: More declarations -- The main body of the class. Almost everything a class does is defined here.

\LoadClass{article}

% Part 1: Identification
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{rmjCV}[2021/04/15 RMJ's custom CV class]

% Part 2: Preliminary Declarations

% Notice that we use \RequirePackage rather than the usual \usepackage command. This is
% because we are in a class file. The \RequirePackage command makes sure that each package
% is only loaded once, even if called multiple times from different style and class files.

\RequirePackage[utf8]{inputenc} % translates various standard and other input encodings into a ‘LaTeX internal language’
\RequirePackage{geometry} % provides an easy and flexible user interface to customize page layout
\RequirePackage{graphicx} % enhanced support for graphics
\RequirePackage{subfigure} % figures divided into subfigures
\RequirePackage{enumerate} % enumerate with redefinable labels
\RequirePackage{titlesec} % select alternative section titles
\RequirePackage[]{hyperref} % extensivE support for hypertext--USE DRAFT OPTION TO DEACTIVATE HYPERLINK FUNCTION
\hypersetup{
	colorlinks=true,
	linkcolor=blue,
	filecolor=magenta,      
	urlcolor=cyan,
}

\RequirePackage{titlesec} % provides an interface to sectioning commands for selection from various title styles
\RequirePackage{fancyhdr} % provides extensive facilities, both for constructing headers and footers, and for controlling their use
\RequirePackage{fontawesome5} % provides support for the included “Font Awesome 5 Free” icon set
\RequirePackage[english]{babel} % manages culturally-determined typographical (and other) rules for a wide range of languages
\RequirePackage{paracol} % provides yet another multi-column typesetting mechanism by which you produce multi-column (e.g., bilingual) document switching and sychronizing each corresponding part in “parallel”

% Part 3: Declare Options

\geometry{letterpaper, margin=0.4in}


% Part 4: More declarations



% formatting for \name{arg1}
\newcommand{\name}[1]{
	\centerline{\Huge{#1}}
}

% Formatting for \position{arg1}
\newcommand{\position}[1]{
	\centerline{\large{\textbf{#1}}}
}

% formatting for \contact [6] 
\newcommand\contact[6]{
	\centerline{
		\makebox[0pt][c]{
			#1 {\large\textperiodcentered} #2 {\large\textperiodcentered} #3 {\large\textperiodcentered}
			#4 {\large\textperiodcentered} #5 {\large\textperiodcentered} #6
		}
	}
}

% formatting for \section{title}
\titleformat{\section}
{\Large\scshape\raggedright}
{}{0em}                     
{}
[\titlerule]

% formatting for \subsection{title}
\titleformat{\subsection}
{\large\scshape\raggedright}
{}{0em}
{}

% formatting for \datedsection{arg1}{arg2}
\newcommand{\datedsection}[2]{%
	\section[#1]{#1 \hfill #2}%
}

% formatting for \datedsubsection{arg1}{arg2}
\newcommand{\datedsubsection}[2]{%
	\subsection[#1]{#1 \hfill #2}%
}

% formatting for \experienceitems{arg1}{arg2}{arg3}
\newcommand{\experienceitems}[3]{
	\begin{itemize}
		\item #1
		\item #2
		\item #3
	\end{itemize}
}


