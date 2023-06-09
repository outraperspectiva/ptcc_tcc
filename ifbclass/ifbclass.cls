%% ifbclass Latex Class
%% Declarações preliminares

\DeclareOption{pt}{%
  \let\@language=0%
  \PassOptionsToPackage{brazil}{babel}}

\DeclareOption{oneside}{%
  \PassOptionsToClass{oneside}{book}}
\DeclareOption{twoside}{%
  \PassOptionsToClass{twoside}{book}}

\DeclareOption{print}{%
  \let\@scr=0}
\DeclareOption{scr}{%
  \let\@scr=1%
  \PassOptionsToClass{dvipdfm}{book}}

\DeclareOption{singlespacing}{%
  \let\@linespacing=0}
\DeclareOption{onehalfspacing}{%
  \let\@linespacing=1}
\DeclareOption{doublespacing}{%
  \let\@linespacing=2}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 \DeclareOption{ptcc}{%
  \let\@campustype=1
  \let\@degreetype=0
  \let\@coursetype=1}

\DeclareOption{tcc}{%
  \let\@campustype=1
  \let\@degreetype=7
  \let\@coursetype=1}
   
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Default options
\ExecuteOptions{pt,bsc,print,twoside,onehalfspacing}
\ProcessOptions
\LoadClass[openany, 12pt,a4paper]{book}

%% pacotes do documento

\usepackage{colortbl} % define cores em tabelas
\usepackage{color}    % gerenciamento de cores
\usepackage[table]{xcolor} % extensão de esquema de cores 
\usepackage{bibentry}   % permite colocar entradas bibliográficas
\usepackage{subfigure}  % permite subfiguras legendadas
\usepackage{multirow} % https://www.ctan.org/pkg/multirow
\usepackage{rotating} % habilita a rotação de figuras e legendas
\usepackage{booktabs} % para usar tabelas
\usepackage{pdfpages} % numeração de páginas
\usepackage{caption} % permite customizar legendas
\usepackage{sectsty} % para mudar estilos dos cabeçalhos de seção
\usepackage{tikz}    % pacote para criação de gráficos
\usepackage{amsmath} % habilita recursos matemáticos 

%%% pacotes externos

\RequirePackage{amsmath,amsfonts,amssymb,amsthm} % habilita recursos matemático
\RequirePackage{calc} % habilita aritmética com argumentos
\RequirePackage[utf8]{inputenc} %trata codificações de entrada
\RequirePackage{textcase} % para colocar maiúsculas
\RequirePackage{textcomp} % utilizar marcador, copyright, etc
\RequirePackage{url} % para usar links de hipertexto e e-mail
\RequirePackage{colortbl} % define cores em tabelas
\RequirePackage{xspace} % define espaçamento no final da linha
\RequirePackage[T1]{fontenc} % permite hifenização em textos 
\RequirePackage{mathptmx} % define Times Roman (ou equivalente) como fonte de texto padrão
\RequirePackage[scaled=0.92]{helvet} % Helvetica com Times
\RequirePackage{appendix} % formatar títulos de apêndice
\RequirePackage[printonlyused,withpage]{acronym} % garante uso de siglas no texto
\RequirePackage{fancybox} % variantes de \fbox
\RequirePackage{fancyhdr} % controle de cabeçalhos e rodapés
\RequirePackage{setspace} % espaço entre as linhas
\RequirePackage[top=3.00cm,left=3.00cm,bottom=2.00cm,right=2.00cm]{geometry} % personalizar o layout da página
\RequirePackage[calcwidth]{titlesec} % vários estilos de título
\RequirePackage{ifbclass/libs/psboxit} % Permite colocar um desenho PostScript
\RequirePackage[avantgarde]{quotchap} % capítulos decorativos
\RequirePackage[nottoc, notlof, notlot]{tocbibind} % sumário
\RequirePackage{indentfirst} % recuar o primeiro parágrafo após o cabeçalho da seção
\RequirePackage{enumitem} % lista: enumerar, itemizar e descrição
\RequirePackage{natbib} % referências numeradas e por ano do autor
\RequirePackage{lastpage} % referenciar número de páginas
\RequirePackage{listings} % inserir código de programação

 
%% posições dos elementos no projeto
\captionsetup[table]{position=top,justification=centering,width=.85\textwidth,labelfont=bf,font=footnotesize}
\captionsetup[lstlisting]{position=top,justification=centering,width=.85\textwidth,labelfont=bf,font=footnotesize}
\captionsetup[figure]{position=bottom,justification=centering,width=.85\textwidth,labelfont=bf,font=footnotesize}

%% As fontes dos capítulos e (sub)seções devem ter o mesmo tamanho do texto (12)
\sectionfont{\fontsize{12}{15}\selectfont}
\subsectionfont{\fontsize{12}{15}\selectfont}
\subsubsectionfont{\fontsize{12}{15}\selectfont}

%% configurações para conversão em PDF
\usepackage[linkcolor=black,
            citecolor=black,
            urlcolor=black,
            colorlinks,
            pdfpagelabels,
            pdftitle={TCC IFB},
            pdfauthor={TCC IFB},
            breaklinks=true]{hyperref}
            
\if\@scr0
  \RequirePackage{graphicx}
\fi

\if\@scr1
  \RequirePackage[dvips]{graphicx}
  \RequirePackage[dvips,usenames]{color}
  \RequirePackage[dvipdfm,colorlinks,backref]{hyperref}
\fi
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% GENERAL PURPOSE MACROS
% para saber mais sobre a estrutura de uma macro https://www.overleaf.com/learn/latex/How_TeX_macros_actually_work%3A_Part_4
\let\origcleardoublepage=\cleardoublepage
\def\cleardoublepage{
  \newpage{\pagestyle{empty}\origcleardoublepage}
}

%% For use with the pseudocode package
\def\@lopcchapterspace{\relax}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% LABELS
\gdef\resumoname{Resumo} 
\gdef\abstrname{Abstract}
\gdef\acronimoname{Glossário} 
\gdef\acronymname{List of Acronyms}
\gdef\keywordsnamePT{Palavras-chave}
\gdef\keywordsnameEN{Keywords}


% Portuguese

  \RequirePackage[portuguese]{babel}
  \newcommand\bibliographytocname{Referências}
  \renewcommand{\bibname}{\bibliographytocname}
  \renewcommand{\appendixtocname}{Apêndice}
  \renewcommand{\appendixpagename}{Apêndice}
  \gdef\@bachelordissertation{Pré Projeto}
  \gdef\@acdassignment{Trabalho Acadêmico}
  \gdef\@pccthesis{Pré Projeto}
  \gdef\@bachelordegree{Bacharel}
  \gdef\@techdegree{Tecnólogo}
  \gdef\@maleadvisertitle{Orientador}
  \gdef\@femaleadvisertitle{Orientadora}
  \gdef\@malecoadvisertitle{Co-Orientador}
  \gdef\@femalecoadvisertitle{Co-Orientadora}
  \gdef\@malemembertitle{Prof.}
  \gdef\@femalemembertitle{Prof.ª}
  \gdef\@notdefined{NÃO DEFINIDO}
  \gdef\acknowledgementsname{Agradecimentos}
  \gdef\@axiomname{Axioma}
  \gdef\@conjecturename{Conjectura}
  \gdef\@defname{Definição}
  \gdef\@lemmaname{Lema}
  \gdef\@theoname{Teorema}
  \gdef\@propname{Proposição}
  \gdef\@corname{Corolário}
  \gdef\@proofname{Prova}
  \gdef\@figurename{Figure}
  \gdef\@tablename{Tabela}
  \gdef\@equationame{equação}
  \gdef\@chaptername{Capítulo}
  \gdef\@textby{Por}
  \gdef\@sectionname{Seção}
  \gdef\@appendixname{Apêndice}
  \gdef\@tocname{Sumário}
  \gdef\@lstlistingname{Lista de Algoritmos}
  \gdef\@listoftablesname{Lista de Tabelas}
  \gdef\@listoffiguresname{Lista de Figuras}
  \gdef\@pagename{página}
  \gdef\@listacronymname{Acrônimos}
  \gdef\@colophontext{%
  \urlstyle{rm}%
  Este volume foi tipografado em \LaTeX\ na classe \textsf{ifbclass}
  (\url{https://github.com/IFBmodels/ifbclass}).
  \if\@scr1
  Para detalhes sobre este documento, clique \Acrobatmenu{GeneralInfo}{aqui}.
  \fi}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% IDENTIFICATION

%% School identification

\def\universitypt#1{%
  \gdef\@universitypt{#1}}
\def\@universitypt{Instituto Federal de Brasília}

\def\universityen#1{%
  \gdef\@universityen{#1}}
\def\@universityen{Federal Institute of Brasilia}

\def\campus#1{%
  \gdef\@campus{#1}}
\def\@campus{%
  \if\@campustype1
    \textit{Campus} Brasília
  \fi}

\def\universitylogo{ifbclass/images/ifblogo}

\let\@showinstitute=0
\def\institutept#1{%
  \let\@showinstitutept=1
  \gdef\@institutept{#1}}
\def\instituteen#1{%
  \let\@showinstituteen=1
  \gdef\@instituteen{#1}}

\let\@showdepartment=0
\def\departmentpt#1{%
  \let\@showdepartment=1
  \gdef\@departmentpt{#1}}
\def\departmenten#1{%
  \let\@showdepartment=1
  \gdef\@departmenten{#1}}

\def\programpt#1{%
  \gdef\@programpt{#1}}
\def\@programpt{%
  \if\@coursetype0
    Bacharelado em Ciência da Computação
  \else\if\@coursetype1
    Curso Superior de Tecnologia em Sistemas para Internet
  \fi\fi}

\def\programen#1{%
  \gdef\@programen{#1}}
\def\@programen{\@notdefined}

\def\majorfieldpt#1{%
  \gdef\@majorfieldpt{#1}}
\def\@majorfieldpt{%
  \if\@coursetype0
    Ciência da Computação
  \else\if\@coursetype1
    Sistemas de Internet
  \fi\fi}

\def\majorfielden#1{%
  \gdef\@majorfielden{#1}}
\def\@majorfielden{\@notdefined}

\def\module#1{%
  \let\@showdepartment=1
  \gdef\@module{#1}}

\def\address#1{%
  \gdef\@address{#1}}
\def\@address{Brasília}

%% Authors identification

\def\author#1{%
  \gdef\@author{#1}
  \if\@scr1 \hypersetup{pdfauthor={\@author}}\fi}
\def\@author{\@notdefined}

\def\adviser{%
  \@ifnextchar [%
    {\@padviser}%
    {\@padviser[\@empty]}}
\def\@padviser[#1]#2{%
  \ifx#1\@empty
    \gdef\@advisertitle{\@maleadvisertitle}
  \else
    \gdef\@advisertitle{\@femaleadvisertitle}
  \fi
  \gdef\@adviser{#2}}
\def\@adviser{\@notdefined}

\let\@showcoadviser=0
\def\coadviser{%
  \@ifnextchar [%
    {\@pcoadviser}%
    {\@pcoadviser[\@empty]}}
\def\@pcoadviser[#1]#2{%
  \let\@showcoadviser=1
  \ifx#1\@empty
    \gdef\@coadvisertitle{\@malecoadvisertitle}
  \else
    \gdef\@coadvisertitle{\@femalecoadvisertitle}
  \fi
  \gdef\@coadviser{#2}}

%% Work identification

\def\title#1{%
  \gdef\@title{#1}
  \if\@scr1 \hypersetup{pdftitle={\@title}}\fi}
\def\@title{\@notdefined}

\def\@texttype{%
  \if\@degreetype0
    \@bachelordissertation
  \else\if\@degreetype1
    \@techdegree
  \fi\fi}


\def\@degree{ 
    \@techdegree
    }


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\let\@showmembroum=0
\def\membroum{%
  \@ifnextchar [%
    {\@pmembroum}%
    {\@pmembroum[\@empty]}}
\def\@pmembroum[#1]#2{%
  \let\@showmembroum=1
  \ifx#1\@empty
    \gdef\@membroumtitle{\@malemembertitle}
  \else
    \gdef\@membroumtitle{\@femalemembertitle}
  \fi
  \gdef\@membroum{#2}}

\let\@showmembrodois=0
\def\membrodois{%
  \@ifnextchar [%
    {\@pmembrodois}%
    {\@pmembrodois[\@empty]}}
\def\@pmembrodois[#1]#2{%
  \let\@showmembrodois=1
  \ifx#1\@empty
    \gdef\@membrodoistitle{\@malemembertitle}
  \else
    \gdef\@membrodoistitle{\@femalemembertitle}
  \fi
  \gdef\@membrodois{#2}}

\let\@showmembrotres=0
\def\membrotres{%
  \@ifnextchar [%
    {\@pmembrotres}%
    {\@pmembrotres[\@empty]}}
\def\@pmembrotres[#1]#2{%
  \let\@showmembrotres=1
  \ifx#1\@empty
    \gdef\@membrotrestitle{\@malemembertitle}
  \else
    \gdef\@membrotrestitle{\@femalemembertitle}
  \fi
  \gdef\@membrotres{#2}}

\let\@showmembroquatro=0
\def\membroquatro{%
  \@ifnextchar [%
    {\@pmembroquatro}%
    {\@pmembroquatro[\@empty]}}
\def\@pmembroquatro[#1]#2{%
  \let\@showmembroquatro=1
  \ifx#1\@empty
    \gdef\@membroquatrotitle{\@malemembertitle}
  \else
    \gdef\@membroquatrotitle{\@femalemembertitle}
  \fi
  \gdef\@membroquatro{#2}}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Citação na Folha de Rosto

\gdef\@presentationtext{%
Trabalho apresentado ao Programa de
\@programpt\
da \@universitypt\ como requisito parcial para obtenção do
grau de \@degree\ em \@majorfieldpt.
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Texto da pagina da banca de graducao
% TODO: unificar o texto entre os campi
% TODO: usar degree/majorfieldpt
\gdef\@textodabanca{%
  \if\@campustype0 %CIC/CTAG
  Trabalho de graduação apresentado por \textbf{\@author} ao programa de Graduação em
  Ciência da Computação do Instituto Federal de Brasília, sob o título \textbf{\@title}, orientado pelo \textbf{Prof.
  \@adviser} e aprovado pela banca examinadora formada pelos professores:
  \vspace{5\baselineskip}
  \fi
  \if\@campustype1 %TSI/CBRA
  \begin{center}
  \@author\\
  \vspace{1\baselineskip}
  \textbf{\@title}\\
  \vspace{1\baselineskip}
  \end{center}
  Trabalho de conclusão de curso de graduação apresentado a Coordenação do Curso Superior
  de Tecnologia em Sistemas de Internet do Instituto Federal de Brasília -- Campus Brasília, 
  como requisito parcial para a obtenção do título de Tecnólogo em Sistemas de Internet.\\
  \begin{center}
  Aprovado em: \noindent\rule{1cm}{0.4pt} de \noindent\rule{3cm}{0.4pt} de \noindent\rule{1cm}{0.4pt}.\\
  \vspace{2\baselineskip}
  \textbf{BANCA EXAMINADORA}
  \vfill
  \end{center}
  \fi
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Chapter formats
\renewcommand{\frontmatter}{\formatFrontmatterChapter}
\renewcommand{\backmatter}{\frontmatter}

\newcommand{\formatFrontmatterChapter}
{
   \titlespacing*{\chapter}{0pt}{-34pt}{40pt}
   \titleformat{\chapter}[display]{
     \centering\normalfont
   }{
     \chaptertitlename~\thechapter
   }{20pt}{\normalsize}
}

\newcommand{\MainChapterFormat}
{
   \renewcommand{\chapnumfont}{%     % define font for chapter number
     \usefont{T1}{pnc}{b}{n}%      % choose New Chancery, bold, normal shape
    \fontsize{18}{100}%          % font size 100pt, baselineskip 100pt
     \selectfont%                  % activate font
   }
    \colorlet{chapnumcol}{gray!85}  % color for chapter number
    \titleformat{\chapter}[display]
     {\bfseries}
     {\chapnumfont\textcolor{chapnumcol}{\thechapter}}
     {-24pt}
     {\normalsize}
}

\newcommand{\formatMainmatterChapter}{
%    \titlespacing*{\chapter}{0pt}{-65pt}{40pt}
   \MainChapterFormat
}

\newcommand{\formatAppendixmatterChapter}
{
%    \titlespacing*{\chapter}{0pt}{-63pt}{40pt}
   \MainChapterFormat
}

\renewcommand{\mainmatter}{
  \formatMainmatterChapter
  \pagestyle{fancy}
  \acresetall % Reset all acronyms
}

\newcommand{\appendixmatter}{
  \formatAppendixmatterChapter
  \pagestyle{fancy}
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% PAGE LAYOUT

%% Line spacing
\if\@linespacing0
  \singlespacing
\else\if\@linespacing1
  \onehalfspacing
\else\if\@linespacing2
  \doublespacing
\fi\fi\fi

%% Paragraphs
\setlength\parindent{1.30cm}

%% Lists, enumerations, etc.
\setlist[itemize]{leftmargin=\parindent+\labelwidth-\labelsep, label={\tiny$\blacksquare$}}
\setlist[enumerate]{leftmargin=\parindent+\labelwidth-\labelsep}

%% Appendix
\newcommand{\theappendix}
{
  \appendixmatter
  \if@openright\cleardoublepage\else\clearpage\fi
  \addappheadtotoc
  \appendix
  \begingroup
    \let\ps@plain\ps@empty
    \appendixpage
  \endgroup
}

%% References
\newenvironment{references}{
	\backmatter
	\bibliographystyle{ifbclass/libs/abnt}
	\setlength{\bibhang}{0pt}
	\singlespacing % Change to singlespacing for the references
	\begingroup
	\raggedright
	\renewcommand{\bibname}{\bibliographytocname}
} {
	\endgroup
	\onehalfspacing % Put onehalfspacing back
}

%% Captions (Tables, Figures, etc.)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%         STANDARD STYLE           %%%%%%%%%%%%%%%%%%%

%% Fonts

\renewcommand\quotefont{\normalfont\normalsize}
\newcommand\quotefonti{\it\normalsize}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Frontpage

\def\frontpage{%
  \if@openright\cleardoublepage\else\clearpage\fi
  \thispagestyle{empty}
  \begin{center}
  \includegraphics[scale=0.5]{ifbclass/images/ifblogo} \\
    {\fontfamily{times}\selectfont \small \@universitypt\\}
    {\fontfamily{times}\selectfont \small \@campus\\}
    {\fontfamily{times}\selectfont \small \@programpt\\}
  \vfill

  \begin{center}
    {\normalsize\bfseries{\MakeUppercase{\@title}}}
    \vskip1\baselineskip
     {\normalsize \bfseries{Por}}
    \vskip1\baselineskip
    \normalsize \textit{\bfseries{\MakeUppercase{\@author}}}
    \vskip1\baselineskip
    {{\normalsize \bfseries{\@texttype}}}\\
  \end{center}
  \vspace{6.5cm}
  \vskip\baselineskip
  \vskip\baselineskip
  \@address\\
  \@date
  \end{center}
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Presentation page

\def\presentationpage{%
  \if@openright\cleardoublepage\else\clearpage\fi
  \thispagestyle{empty}
  \vskip 25mm
  \begin{center}
  {\Large \@author}
  \vfill
  \begin{center}
	{\large\bfseries{\MakeUppercase{\@title}}}\\
  \end{center}
  \vskip 38mm
  \begin{flushright}
    \begin{minipage}{100mm}
    \quotefonti %
    \@presentationtext
    \vskip2\baselineskip
    \end{minipage}
  \end{flushright}
  \flushleft{
    	{\quotefont \@advisertitle:} \@adviser\\
    	\if\@showcoadviser1{\quotefont\@coadvisertitle:} \@coadviser\\\fi
  }
  \vfill
  
 \begin{center}
  		\@address
  		\\
  		\@date
  \end{center}
  \end{center}
  \setcounter{page}{0}
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Ficha catalografica
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Ficha catalografica (Dados internacionais de
% catalogação-na-publicacao)
\newenvironment{fichacatalografica}{%
    \clearpage
    \thispagestyle{empty}
    \singlespacing
    \footnotesize
}{%
    \onehalfspacing
    \normalsize
}%

\newcommand{\FakeFichaCatalografica}{
	\vspace*{\fill}						% Posição verticaL
	\hrule							% Linha horizontal
	\begin{center}					% Minipage Centralizado
	\begin{minipage}[c]{12.5cm}		% Largura

	\@author

	\hspace{0.5cm} \@title  / \@author. --
	\@address, \@date-

	\hspace{0.5cm} \pageref{LastPage} p. : il. (algumas color.) ; 30 cm.\\

	\hspace{0.5cm} \@advisertitle~\@adviser\\

	\hspace{0.5cm}
	\parbox[t]{\textwidth}{\@texttype~--~\@universitypt,
	\@date.}\\

	\hspace{0.5cm}
		1. Palavra-chave1.
		2. Palavra-chave2.
		I. Orientador.
		II. Universidade xxx.
		III. Faculdade de xxx.
		IV. Título\\

	\hspace{8.75cm} CDU 004\\ % TODO: correct CDU

	\end{minipage}
	\end{center}
	\hrule
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Banca
\newcommand{\linhadeassinatura}{\noindent\rule{10cm}{0.4pt}}
\def\banca{%
  \if@openright\cleardoublepage\else\clearpage\fi
  \thispagestyle{empty}
  \noindent
  \vfill
  \@textodabanca

  \vfill

  \begin{center}

  \linhadeassinatura\\
  Prof. \@adviser\\
  Computação/IFB
  \vspace{\baselineskip}

\if\@showmembroum1{
  \linhadeassinatura\\
  \@membroumtitle \ \@membroum \\
  Computação/IFB
  \vspace{\baselineskip}
}\fi

\if\@showmembrodois1{
  \linhadeassinatura\\
  \@membrodoistitle \ \@membrodois \\
  Computação/IFB
  \vspace{\baselineskip}
}\fi

\if\@showmembrotres1{
  \linhadeassinatura\\
  \@membrotrestitle \ \@membrotres \\
  Computação/IFB
  \vspace{\baselineskip}
}\fi

\if\@showmembroquatro1{
  \linhadeassinatura\\
  \@membroquatrotitle \ \@membroquatro \\
  Computação/IFB
  \vspace{\baselineskip}
}\fi

  \vfill
  \@address
  \\
  \@date

  \end{center}
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Dedicatory


\def\dedicatory{%
  \if@openright\cleardoublepage\else\clearpage\fi
  \thispagestyle{empty}
  ~\\
  \vfill
  \begin{flushright}
    \begin{minipage}{100mm}
    \quotefonti
    \begin{flushright}}
\def\enddedicatory{
		\end{flushright}
    \normalfont
    \end{minipage}
  \end{flushright}}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Acknowledgements

\def\acknowledgements{%
  \pagestyle{empty}
  \chapter*{\acknowledgementsname}
  \thispagestyle{empty}}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Resumo


\def\resumo{%
  %\onehalfspacing
  \pagestyle{empty}
  \gdef\@keywordsname{\keywordsnamePT}
  \chapter*{\resumoname}
  \thispagestyle{empty}}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Abstract


\def\abstract{%
  %\onehalfspacing
  \gdef\@keywordsname{\keywordsnameEN}
  \pagestyle{empty}
  \chapter*{\abstrname}
  \thispagestyle{empty}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Keywords


\def\@keywordsname{\@defaultkeywordsname}
\def\keywords{%
  \par\vskip\baselineskip\noindent{\bf\@keywordsname: }}
\def\endkeywords{}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Quotations

\newenvironment{citationblock}%
  {%
  \begin{spacing}{1.}
   \small
   \begin{list}{}{%
       \setlength{\listparindent}{0cm}%
       \setlength{\itemindent}{\listparindent}%
       \setlength{\rightmargin}{0cm}%
       \setlength{\leftmargin}{4cm}%
       \setlength{\parsep}{0pt}}%
    \item\relax}%
  {\end{list}\end{spacing}}

\def\epigraph{%
  \if@openright\cleardoublepage\else\clearpage\fi
  \thispagestyle{empty}
  ~\\
  \vfill
  \begin{quotation}}
\def\endepigraph{\end{quotation}}

\def\quotation{%
  \@ifnextchar [%
    {\begin{pquot@tion}}%
    {\begin{pquot@tion}[\@empty]\end{pquot@tion}}}
\def\endquotation{\end{pquot@tion}\@afterindentfalse\@afterheading}

\def\pquot@tion[#1]#2{%
  \def\@qauthor{#2}
  \def\@qnote{#1}
  \begin{flushright}
    \begin{minipage}{0.8\textwidth}
      \begin{flushright}\quotefonti}
      
\def\endpquot@tion{%
        \vskip.2\baselineskip%
        \quotefont---\MakeTextUppercase{\@qauthor}
        \if\@qnote\@empty
          \relax
        \else
          \space(\@qnote)
        \fi
      \end{flushright}
    \end{minipage}
  \end{flushright}
  \normalfont\vskip2\baselineskip}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Table of contents

\setcounter{tocdepth}{4}

\renewcommand\tableofcontents{%
   \pagestyle{empty}
   \chapter*{\@tocname}
   \thispagestyle{empty}
   \@starttoc{toc}
   \thispagestyle{empty}
   }

\renewcommand\listoffigures{%
   \pagestyle{empty}
   \chapter*{\@listoffiguresname}
   \thispagestyle{empty}
   \@starttoc{lof}}

\renewcommand\lstlistoflistings{%
  \pagestyle{empty}
  \chapter*{\@lstlistingname}
  \thispagestyle{empty}
  \@starttoc{lol}}


\renewcommand\listoftables{%
   \pagestyle{empty}
   \chapter*{\@listoftablesname}
   \thispagestyle{empty}
   \@starttoc{lot}}

\newcommand{\listofacronyms}{%
   \pagestyle{empty}
      \chapter*{\acronimoname}
      \thispagestyle{empty}
   }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Some codes coming from phdthesis

% %% make the equation numbers have little ovals around them
 \def\tagform@#1{\maketag@@@{\cornersize{0.8}\ovalbox{\ignorespaces\sffamily{#1}\unskip\@@italiccorr}}}
%
% %% Load up PS insertion package
 \PScommands

% %% now reset the headers and footers
 \fancyhead{}
 \fancyfoot{}

% %% put the page numbers on the top in a nice box
% %% even side pages
 \fancyhead[LE]{%
 	\rule{0cm}{4mm}\color{black}{\thepage}\hfill\leftmark
 }

% %% odd side pages
 \fancyhead[RO]{
 	\rule{0cm}{4mm}\color{black}{\rightmark}\hfill\thepage
 }

% Header style of the chapter page
\fancypagestyle{plain}{
  \fancyhead{}
  \fancyfoot{}
  \fancyhead{\hfill\thepage}
  \renewcommand{\headrulewidth}{0pt}
 }

% %% bring the style into effect

 \pagestyle{fancy}
%http://tug.ctan.org/tex-archive/macros/latex/contrib/fancyhdr/fancyhdr.pdf
% Header style of the chapter page



\renewcommand{\chaptermark }[1]{%
	\markboth{\MakeUppercase{%
			\ #1}}{}}

% %% make the quotation appear next to the chapter number
\renewcommand\chapterheadstartvskip{\vspace*{-5\baselineskip}}

%% Sectioning
\setcounter{secnumdepth}{4}

%% Tables and figures
\long\def\@makecaption#1#2{%
  \vskip\abovecaptionskip
  \sbox\@tempboxa{\small\bf #1\rm\enskip #2}%
  \ifdim \wd\@tempboxa >\hsize
    {\small\bf#1\rm\enskip #2\par}
  \else
    \global \@minipagefalse
    \hb@xt@\hsize{\hfil\box\@tempboxa\hfil}%
  \fi
  \vskip\belowcaptionskip}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Mathematics

% Equation numbering
\renewcommand{\theequation}{\rm\thechapter.\arabic{equation}}

% Theorem-like environments
\newtheoremstyle{theo}%
	{\topsep}{\topsep}% Space above and below
	{\slshape}% Body style
	{0pt}% Heading indent amount
	{\bfseries}{.}% Heading font and punctuation after it
	{1ex plus 0pt minus .2ex}% Space after heading
	{}% Head spec (empty = same as �plain� style
\theoremstyle{definition}
\newtheorem{Def}{\@defname}[chapter]
\theoremstyle{theo}
\newtheorem{Axi}{\@axiomname}[chapter]
\newtheorem{Conj}{\@conjecturename}[chapter]
\newtheorem{Lem}{\@lemmaname}[chapter]
\newtheorem{Theo}{\@theoname}[chapter]
\newtheorem{Prop}{\@propname}[chapter]
\newtheorem{Cor}{\@corname}[chapter]

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Code BLocks

\lstnewenvironment{code}[1][language=Python,caption=Name,label=code:Name]
  {
  \lstset{
    #1,
    basicstyle=\ttfamily\small,
    aboveskip={1.0\baselineskip},
    belowskip={1.0\baselineskip},
    columns=fixed,
    extendedchars=true,
    breaklines=true,
    tabsize=4,
    prebreak=\raisebox{0ex}[0ex][0ex]{\ensuremath{\hookleftarrow}},
    frame=lines,
    showtabs=false,
    showspaces=false,
    showstringspaces=false,
    keywordstyle=\color[rgb]{0.627,0.126,0.941},
    commentstyle=\color[rgb]{0.133,0.545,0.133},
    stringstyle=\color[rgb]{01,0,0},
    numbers=left,
    numberstyle=\small,
    stepnumber=1,
    numbersep=10pt,
    escapeinside={\%*}{*)}
    }
  }
 {}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Reference macros

\newcommand{\figref}[2][]{\@figurename~\ref{#2}#1\xspace}
\newcommand{\tabref}[1]{\@tablename~\ref{#1}\xspace}
\newcommand{\eqnref}[1]{\@equationame~\eqref{#1}\xspace}
\newcommand{\chapref}[1]{\@chaptername~\ref{#1}\xspace}
\newcommand{\secref}[1]{\@sectionname~\ref{#1}\xspace}
\newcommand{\appref}[1]{\@appendixname~\ref{#1}\xspace}
\newcommand{\axiref}[1]{\@axiomname~\ref{#1}\xspace}
\newcommand{\conjref}[1]{\@conjname~\ref{#1}\xspace}
\newcommand{\defref}[1]{\@defname~\ref{#1}\xspace}
\newcommand{\lemref}[1]{\@lemmaname~\ref{#1}\xspace}
\newcommand{\theoref}[1]{\@theoname~\ref{#1}\xspace}
\newcommand{\corref}[1]{\@corname~\ref{#1}\xspace}
\newcommand{\propref}[1]{\@propname~\ref{#1}\xspace}
\newcommand{\pgref}[1]{\@pagename~\pageref{#1}\xspace}


%% Options for \documentclass command:
%%         * Idiom
%%           pt   - Portguese (default)
%%         * Text type
%%           tcc  - projeto de conclusão
%%           ptcc  - qualificação
%%
%%         * Media
%%           scr  - to eletronic version (PDF) / see the users guide
%%
%%         * Pagination
%%           oneside - unique face press
%%           twoside - two faces press
%%
%%		   * Line spacing
%%           singlespacing  - the same as using \linespread{1}
%%           onehalfspacing - the same as using \linespread{1.3}
%%           doublespacing  - the same as using \linespread{1.6}
%%
%% Comandos de referência. Use os seguintes comandos para fazer referências em seu texto:
%%          \figref  -- for Figure reference
%%          \tabref  -- for Table reference
%%          \eqnref  -- for equation reference
%%          \chapref -- for chapter reference
%%          \secref  -- for section reference
%%          \appref  -- for appendix reference
%%          \axiref  -- for axiom reference
%%          \conjref -- for conjecture reference
%%          \defref  -- for definition reference
%%          \lemref  -- for lemma reference
%%          \theoref -- for theorem reference
%%          \corref  -- for corollary reference
%%          \propref -- for proprosition reference
%%          \pgref   -- for page reference
%%
%% Comandos de citação:
%%          \citet (from natbib) -- citação indireta
%%          \citep (from natbib) -- citação direta

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%