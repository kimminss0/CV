\ProvidesClass{resume}[RESUME]

\LoadClass[11pt,a4paper]{article}

\usepackage[margin=1.5cm]{geometry} % or 1.8cm?
\usepackage[parfill]{parskip}

\usepackage{fontawesome5}
\usepackage[regular]{sourcesans}

%%% Alternatives
% \usepackage{helvet}
% \usepackage{tgheros}
% \usepackage{lmodern}
% \usepackage[regular]{newcomputermodern}
% \usepackage{libertinus}
% \usepackage{FiraSans}
% \usepackage{merriweather}
%%%

\usepackage{fontspec}
\usepackage{kotex}

\pagestyle{empty}

%%% For using serif as default family
% \let\oldbfseries\bfseries
% \renewcommand{\bfseries}{\oldbfseries\sffamily}
%%%
\renewcommand{\familydefault}{\sfdefault}

%%% For helvetica / tghero
% \setsansfont{TeX Gyre Heros} 
% \setsansfont{Helvetica}
% \setsansfont{Helvetica}[
% 	UprightFont=*-Light,
% 	BoldFont=*-Bold,
% 	ItalicFont=*-LightOblique,
% ]
% \linespread{1.1}
%%%

% Note(weight): extralight - light - regular - medium - semibold - bold - black
\setmainhangulfont{NotoSerifCJKkr}[
	% UprightFont=*-Regular,
	% BoldFont=*-Bold,
	Script=Hangul,
	Language=Korean,
	AutoFakeSlant,
	Scale=0.86,
]

% Note(weight): thin - light - demilight - regular - medium - bold - black
\setsanshangulfont{NotoSansCJKkr}[
	% UprightFont=*-DemiLight,
	% BoldFont=*-Bold,
	Script=Hangul,
	Language=Korean,
	AutoFakeSlant,
	Scale=0.86,
]

\setmathhangulfont{NotoSansCJKkr}[
	SizeFeatures={
			{Size=-6,  Font=*-Medium},
			{Size=6-9, Font=*},
			{Size=9-,  Font=*-DemiLight},
		},
	Script=Hangul,
	Language=Korean,
	Scale=0.86,
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
			\setlength{\leftmargin}{1.0em}
		}
		\item[]
		      }{
	\end{list}
}

\newenvironment{rEducation}[2]{
	{#1} \hfill {\small\it #2}
	\begin{list}{--}{
			\setlength{\leftmargin}{1.0em}
			\setlength{\rightmargin}{1.0em}
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
			\setlength{\leftmargin}{1.0em}
			\setlength{\rightmargin}{1.0em}
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
