\ProvidesClass{resume}[RESUME]

\LoadClass[11pt,letterpaper]{article}

\usepackage[left=1.0cm,top=1.2cm,right=1.0cm,bottom=1.2cm]{geometry}
\usepackage[parfill]{parskip}

\usepackage{lmodern}

\usepackage{fontspec}

\usepackage{fontawesome5}

\usepackage{kotex}

\pagestyle{empty}

\let\oldbfseries\bfseries
\renewcommand{\bfseries}{\oldbfseries\sffamily}
\renewcommand{\familydefault}{\sfdefault}
\linespread{1.1}

% Uncomment below if the document is mainly in English, so that we use punctuations from main font; not from hangul font
\hangulpunctuations=0

\setsansfont{Helvetica}[
	UprightFont=*-Light,
	BoldFont=*-Bold,
	ItalicFont=*-LightOblique,
]

\setmainhangulfont{NotoSerifCJKkr}[
	UprightFont=*-DemiLight,
	BoldFont=*-Bold,
	Script=Hangul,
	Language=Korean,
	AutoFakeSlant,
]

\setsanshangulfont{NotoSansCJKkr}[
	UprightFont=*-DemiLight,
	BoldFont=*-Bold,
	Script=Hangul,
	Language=Korean,
	AutoFakeSlant,
]

\setmathhangulfont{NotoSansCJKkr}[
	SizeFeatures={
			{Size=-6,  Font=*-Medium},
			{Size=6-9, Font=*},
			{Size=9-,  Font=*-DemiLight},
		},
	Script=Hangul, Language=Korean
]

\def \name#1{\def\@name{#1}}
\def \@name {}

\def \printname {
	\begingroup
	{\namestyle\namesize \@name}\hfil
	\nameskip\break
	\endgroup
}

\def \email#1{\def\@email{#1}}
\def \@email {}

\def \github#1{\def\@github{#1}}
\def \@github {}

\def \blog#1{\def\@blog{#1}}
\def \@blog {}

\def \mobile#1{\def\@mobile{#1}}
\def \@mobile {}

\def \printcontact{
	\begingroup
	\contactstyle
	% \faMobile*\space\@mobile
	% \space\space\space
	\faEnvelope[regular]\space\@email
	\space\space\space
	\faGithub\space\@github
	\space\space\space
	\faLink\space\@blog
	\endgroup
}

\let\old@document=\document
\renewcommand{\document}{
	\old@document
	\printname
	\printcontact
}

\newenvironment{rSection}[1]{
	\sectionskipbefore
	{\bfseries #1}
	\sectionskipafter
	\hrule
	\begin{list}{}{
			\setlength{\leftmargin}{1.5em}
		}
		\item[]
		      }{
	\end{list}
}

\newenvironment{rEducation}[2]{
	{#1} \hfill {\small\it #2}
	\begin{list}{--}{
			\setlength{\leftmargin}{1.5em}
			\setlength{\rightmargin}{1.5em}
		}
		\itemsep -0.5em \vspace{-0.5em}
		\item[]
		      }{
	\end{list}
	\vspace{0.2em}
}

\newenvironment{rSubsection}[2]{
	{\bfseries #1} \hfill {\small\it #2}
	\begin{list}{--}{
			\setlength{\leftmargin}{1.5em}
			\setlength{\rightmargin}{1.5em}
		}
		\itemsep -0.5em \vspace{-0.5em}
		\item[]
		      }{
	\end{list}
	\vspace{0.2em}
}

\def\namestyle{\bfseries}
\def\contactstyle{\sffamily}
\def\namesize{\LARGE}
\def\nameskip{\bigskip}
\def\sectionskipbefore{\medskip}
\def\sectionskipafter{\medskip}
\def\sectionskip{\medskip}
