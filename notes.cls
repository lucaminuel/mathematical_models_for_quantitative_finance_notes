\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{notes}[2023/09/12 Classe per appunti]

% Carica le classi di base
\LoadClass{book}

% Pacchetti necessari
\RequirePackage{graphicx}
\RequirePackage{amsmath}
\RequirePackage[12pt]{extsizes}
\RequirePackage{xcolor}
\RequirePackage{mathtools}
\RequirePackage{hyperref}
\RequirePackage[left=1.5cm, right=1.5cm, top=3cm, bottom=3cm]{geometry}
\RequirePackage{fancyhdr}
\RequirePackage{amssymb}
\RequirePackage{mdframed}
\RequirePackage{tikz}
\RequirePackage{dsfont}
\RequirePackage{stackengine}
\RequirePackage{bm}





\pagestyle{fancy}
\fancyhf{}
\fancyhead[RE]{\nouppercase{\leftmark} - \nouppercase{\rightmark}}
\fancyfoot[LO,RE]{\thepage} % Numero di pagina su pagine pari a destra e su pagine dispari a sinistra
\fancyhead[LO]{Mathematical Models for Quantitative Finance Notes (2022)} 
\fancyfoot[CE,CO]{} % Vuoto nel piè di pagina centrale


% Impostazioni di classe
\renewcommand{\chaptername}{}
\renewcommand{\thechapter}{\Roman{chapter}}
\renewcommand{\thesection}{\arabic{chapter}.\arabic{section}}
\renewcommand{\chaptermark}[1]{\markboth{#1}{}}
\renewcommand{\sectionmark}[1]{\markright{#1}}

% Impostazioni dei titoli dei capitoli
\usepackage{titlesec}
\titleformat{\chapter}[display]
{\bfseries\Huge}
{\chaptertitlename\ \thechapter}
{0pt}
{\titlerule\vspace{2ex}\filleft}
[\vspace{2ex}\titlerule]

\newcommand{\expected}[1]{\mathbb{E}\left[#1\right]}


\newenvironment{myquote}{
  \par\addvspace{\baselineskip}
  \itshape\color{blue} ``\ignorespaces
}{
  ''\par\addvspace{\baselineskip}
}

% Impostazioni per teoremi


\mdfdefinestyle{mytheoremstyle}{
  linecolor=red,             % Colore del bordo della scatola (rosso)
  backgroundcolor=gray!20,   % Colore di sfondo della scatola (grigio poco opaco)
  frametitlerule=true,       % Linea del bordo sopra il titolo
  frametitlebackgroundcolor=red, % Colore di sfondo del titolo (rosso)
  frametitlerulewidth=0.5pt, % Spessore del bordo del titolo
  frametitlefont=\bfseries\color{white}, % Stile del titolo (grassetto, bianco)
  innertopmargin=10pt,       % Margine superiore interna
  roundcorner=5pt,           % Raggio degli spigoli tondeggianti
}

\newtheorem{theorem}{Teorema}[chapter]

\newenvironment{mytheorem}[1][]%
  {\begin{mdframed}[style=mytheoremstyle, frametitle={#1}]}%
  {\end{mdframed}}

% Impostazioni per definizioni
\mdfdefinestyle{mydefinitionstyle}{
  linecolor=blue,            % Colore del bordo della scatola (blu)
  backgroundcolor=gray!20,   % Colore di sfondo della scatola (grigio poco opaco)
  frametitlerule=true,       % Linea del bordo sopra il titolo
  frametitlebackgroundcolor=blue, % Colore di sfondo del titolo (blu)
  frametitlerulewidth=0.5pt, % Spessore del bordo del titolo
  frametitlefont=\bfseries\color{white}, % Stile del titolo (grassetto, bianco)
  innertopmargin=10pt,       % Margine superiore interna
  roundcorner=5pt,           % Raggio degli spigoli tondeggianti
}

\newtheorem{definition}{Definizione}[chapter]

\newenvironment{mydefinition}[1][]%
  {\begin{mdframed}[style=mydefinitionstyle, frametitle={#1}]}%
  {\end{mdframed}}


\mdfdefinestyle{mysettingstyle}{
  linecolor=green!70!black,    % Colore del bordo della scatola (verde scuro)
  backgroundcolor=pink!30,     % Colore di sfondo della scatola (rosa chiaro)
  frametitlerule=true,         % Linea del bordo sopra il titolo
  frametitlebackgroundcolor=green!70!black, % Colore di sfondo del titolo (verde scuro)
  frametitlerulewidth=0.5pt,   % Spessore del bordo del titolo
  frametitlefont=\bfseries\color{white}, % Stile del titolo (grassetto, bianco)
  innertopmargin=10pt,         % Margine superiore interna
  roundcorner=5pt,             % Raggio degli spigoli tondeggianti
}

\newtheorem{setting}{Setting}[chapter]

\newenvironment{mysetting}[1][]%
  {\begin{mdframed}[style=mysettingstyle, frametitle={#1}]}%
  {\end{mdframed}}
\endinput