\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{mathematics}[2026/09/28 Mathematics document class]

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{book}}
\ProcessOptions\relax
\LoadClass{book}

\RequirePackage{fix-cm}
\RequirePackage{lmodern}
\RequirePackage{newtxtext}
\RequirePackage{geometry}
\RequirePackage{amsmath}
\RequirePackage{amssymb}
\RequirePackage{mathtools}
\RequirePackage{amsthm}
\RequirePackage{bbm}
\RequirePackage{bm}
\RequirePackage{interval}
\RequirePackage{xpatch}
\RequirePackage[strict]{changepage}
\RequirePackage{multicol}
\RequirePackage{cancel}
\RequirePackage{caption}
\RequirePackage{enumerate}
\RequirePackage{enumitem}
\RequirePackage{graphicx}
\RequirePackage[fontsize=14pt]{fontsize}
\RequirePackage{esvect}
\RequirePackage{float}
\RequirePackage{adjustbox}
\RequirePackage{mathrsfs}
\RequirePackage{tikz-cd}
\RequirePackage{authblk}
\RequirePackage{xcolor}
\RequirePackage{tikz}
\usetikzlibrary{shapes.geometric, positioning, patterns}
\RequirePackage{tcolorbox}
\tcbuselibrary{breakable}
\tcbuselibrary{most}

\geometry{a4paper,centering,scale=0.8}
\raggedbottom
\setlength{\parindent}{0em}
\numberwithin{equation}{section}

% Custom colors.
\definecolor{primaryTeal}{RGB}{40,137,124}
\definecolor{paleTeal}{RGB}{240,251,248}
\definecolor{deepTeal}{RGB}{33,96,92}
\definecolor{paleBlue}{RGB}{239,249,251}
\definecolor{deepBlue}{RGB}{3,92,127}
\definecolor{mutedBlue}{RGB}{82,137,168}
\definecolor{paleGold}{RGB}{246,250,235}
\definecolor{deepOlive}{RGB}{77,82,59}
\definecolor{paleLavender}{RGB}{240,243,252}
\definecolor{deepSlate}{RGB}{49,55,70}
\definecolor{accentPink}{RGB}{220,115,156}

\RequirePackage[
    colorlinks,
    pdfpagelabels=false,
    linkcolor=primaryTeal,
    anchorcolor=primaryTeal,
    citecolor=primaryTeal
]{hyperref}

% Custom mathematical notation.
\newcommand{\ee}{\mathrm{e}}
\newcommand{\ztd}{\mathrm{d}}
\newcommand{\ii}{\mathrm{i}}
\newcommand{\ztj}{\mathrm{j}}
\newcommand{\ztk}{\mathrm{k}}
\newcommand{\CC}{\mathbb{C}}
\newcommand{\QQ}{\mathbb{Q}}
\newcommand{\RR}{\mathbb{R}}
\newcommand{\ZZ}{\mathbb{Z}}
\newcommand{\NN}{\mathbb{N}}
\newcommand{\PP}{\mathbb{P}}
\newcommand{\EE}{\mathbb{E}}
\newcommand{\defm}[2]{%
    \hypertarget{#1}{{#2}}%
}
\newcommand{\refm}[2]{%
    \hyperlink{#1}{\textcolor{primaryTeal}{#2}}%
}
\newcommand{\dis}{\displaystyle}
\newcommand{\pl}{|\!|}
\newcommand{\dd}{\mathrm{d}}
\newcommand{\DD}{\mathrm{D}}
\DeclareMathOperator{\Vect}{\mathrm{Vect}}
\DeclareMathOperator{\Span}{\mathrm{Span}}
\DeclareMathOperator{\diam}{\mathrm{diam}}
\DeclareMathOperator{\Aff}{\mathrm{Aff}}
\DeclareMathOperator{\Conv}{\mathrm{Conv}}
\DeclareMathOperator{\orb}{\mathrm{orb}}
\DeclareMathOperator{\GL}{\mathrm{GL}}
\newcommand{\pa}{\partial}
\DeclareMathOperator{\Obj}{\mathrm{Obj}}
\DeclareMathOperator{\Id}{\mathrm{Id}}
\DeclareMathOperator{\id}{\mathrm{Id}}
\newcommand{\op}{\mathrm{op}}
\newcommand{\set}{\mathbf{set}}
\DeclareMathOperator{\Aut}{\mathrm{Aut}}
\DeclareMathOperator{\End}{\mathrm{End}}
\DeclareMathOperator{\Hom}{\mathrm{Hom}}
\DeclareMathOperator{\Iso}{\mathrm{Iso}}
\DeclareMathOperator{\sgn}{\mathrm{sgn}}
\DeclareMathOperator{\stab}{\mathrm{Stab}}
\DeclareMathOperator{\supp}{\mathrm{Supp}}
\DeclareMathOperator{\cc}{C_{c}}
\DeclareMathOperator{\ccp}{C_{c}^{+}}
\DeclareMathOperator{\ord}{\mathrm{ord}}
\DeclareMathOperator{\lcm}{\mathrm{lcm}}
\DeclareMathOperator{\tr}{\mathrm{tr}}
\DeclareMathOperator{\Sp}{\mathrm{Sp}}
\DeclareMathOperator{\Der}{\mathrm{Der}}
\DeclareMathOperator{\Vol}{\mathrm{Vol}}
\newcommand{\commutator}[2]{\left[#1, #2\right]_{*}}
\DeclareMathOperator{\Ber}{\mathrm{Ber}}
\DeclareMathOperator{\Bin}{\mathrm{Bin}}
\DeclareMathOperator{\Pois}{\mathrm{Pois}}
\DeclareMathOperator{\Geo}{\mathrm{Geo}}
\DeclareMathOperator{\Unif}{\mathrm{Unif}}
\DeclareMathOperator{\Expo}{\mathrm{Expo}}
\DeclareMathOperator{\Norm}{\mathrm{Norm}}
\DeclareMathOperator{\Var}{\mathrm{Var}}
\DeclareMathOperator{\Cov}{\mathrm{Cov}}

\numberwithin{figure}{section}

% General-purpose boxes.
\newenvironment{solidbox}
    {\begin{tcolorbox}[colback=mutedBlue,colframe=mutedBlue,arc=1mm]}
    {\end{tcolorbox}}
\newenvironment{outlinedbox}
    {\begin{tcolorbox}[colback=mutedBlue!5!white,colframe=mutedBlue,arc=1mm]}
    {\end{tcolorbox}}
\newenvironment{titlebox}
    {\begin{tcolorbox}[
        enhanced,
        colback=mutedBlue!5!white,
        boxrule=0pt,
        frame hidden,
        borderline south={0.5mm}{0.1mm}{mutedBlue}
    ]}
    {\end{tcolorbox}}
\newenvironment{definitionpanel}
    {\begin{tcolorbox}[
        breakable,
        enhanced,
        colback=paleTeal,
        boxrule=0pt,
        frame hidden,
        borderline west={0.7mm}{0.1mm}{deepTeal}
    ]}
    {\end{tcolorbox}}
\newenvironment{proofpanel}
    {\begin{tcolorbox}[
        breakable,
        enhanced,
        colback=paleBlue,
        boxrule=0pt,
        frame hidden,
        borderline west={0.7mm}{0.1mm}{deepBlue}
    ]}
    {\end{tcolorbox}}
\newenvironment{theorempanel}
    {\begin{tcolorbox}[
        breakable,
        enhanced,
        colback=paleGold,
        boxrule=0pt,
        frame hidden,
        borderline west={0.7mm}{0.1mm}{deepOlive}
    ]}
    {\end{tcolorbox}}
\newenvironment{examplepanel}
    {\begin{tcolorbox}[
        breakable,
        enhanced,
        colback=paleLavender,
        boxrule=0pt,
        frame hidden,
        borderline west={0.7mm}{0.1mm}{deepSlate}
    ]}
    {\end{tcolorbox}}
\newenvironment{remarkpanel}
    {\begin{tcolorbox}[
        breakable,
        enhanced,
        colback=accentPink!10!white,
        boxrule=0pt,
        frame hidden,
        borderline west={0.7mm}{0.1mm}{accentPink!30!black}
    ]}
    {\end{tcolorbox}}
\newcommand{\hl}[1]{%
    \tcbox[
        on line,
        arc=0pt,
        colback=mutedBlue!5!white,
        colframe=mutedBlue!5!white,
        boxsep=1pt,
        left=1pt,
        right=1pt,
        top=1.5pt,
        bottom=1.5pt,
        boxrule=0pt
    ]{\bfseries\color{mutedBlue}#1}%
}
% Theorem environments.
\newtheoremstyle{probabilitytheorem}
    {0pt}
    {}
    {}
    {\parindent}
    {\bfseries}
    {}
    {1em}
    {}
\theoremstyle{probabilitytheorem}
\swapnumbers
\newtheorem{pttheorem}{\color{deepOlive} Theorem}[section]
\newtheorem{ptdefinition}[pttheorem]{\color{deepTeal} Definition}
\newtheorem{ptexample}[pttheorem]{\color{deepSlate} Example}
\newtheorem{ptapplication}[pttheorem]{\color{deepSlate} Application}
\newtheorem*{ptsolution}{\color{deepBlue} Solution}
\newtheorem*{ptproof}{\color{deepBlue} Proof}
\newtheorem{ptproposition}[pttheorem]{\color{deepOlive}Proposition}
\newtheorem{ptcorollary}[pttheorem]{\color{deepOlive}Corollary}
\newtheorem{ptremark}[pttheorem]{Remark}
\newtheorem{ptaxiom}[pttheorem]{Axiom}
\newtheorem{ptnotation}[pttheorem]{\color{deepTeal}Notation}
\newtheorem{ptlemma}[pttheorem]{\color{deepOlive}Lemma}
\newenvironment{definitionbox}
    {\begin{definitionpanel}\begin{ptdefinition}}
    {\end{ptdefinition}\end{definitionpanel}}
\newenvironment{notationbox}
    {\begin{definitionpanel}\begin{ptnotation}}
    {\end{ptnotation}\end{definitionpanel}}
\newenvironment{proofbox}
    {\begin{proofpanel}\begin{ptproof}}
    {$\hfill\square$\end{ptproof}\end{proofpanel}}
\newenvironment{theorembox}
    {\begin{theorempanel}\begin{pttheorem}}
    {\end{pttheorem}\end{theorempanel}}
\newenvironment{lemmabox}
    {\begin{theorempanel}\begin{ptlemma}}
    {\end{ptlemma}\end{theorempanel}}
\newenvironment{examplebox}
    {\begin{examplepanel}\begin{ptexample}}
    {\end{ptexample}\end{examplepanel}}
\newenvironment{applicationbox}
    {\begin{examplepanel}\begin{ptapplication}}
    {\end{ptapplication}\end{examplepanel}}
\newenvironment{propositionbox}
    {\begin{theorempanel}\begin{ptproposition}}
    {\end{ptproposition}\end{theorempanel}}
\newenvironment{corollarybox}
    {\begin{theorempanel}\begin{ptcorollary}}
    {\end{ptcorollary}\end{theorempanel}}
\newenvironment{axiombox}
    {\begin{examplepanel}\begin{ptaxiom}}
    {\end{ptaxiom}\end{examplepanel}}
\newenvironment{remarkbox}
    {\begin{remarkpanel}\begin{ptremark}}
    {\end{ptremark}\end{remarkpanel}}

\setcounter{tocdepth}{4}
\setcounter{secnumdepth}{3}

\makeatletter
\newcommand{\makefrontmatter}{%
    \hypersetup{pageanchor=false}%
    \pagecolor{green!2}%
    \begin{titlebox}
        \begin{center}
            \Huge
            \@title\par
            \vfill
            \large
            \@author\par
            \@date
        \end{center}
    \end{titlebox}%
    \pagestyle{empty}%
    \newpage
    \nopagecolor
    \pagenumbering{roman}%
    \setcounter{page}{1}%
    \tableofcontents
    \clearpage
    \pagestyle{headings}%
    \hypersetup{pageanchor=true}%
    \pagenumbering{arabic}%
    \setcounter{page}{1}%
}
\makeatother
