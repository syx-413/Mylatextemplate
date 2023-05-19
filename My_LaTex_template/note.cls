% !TeX encoding = UTF-8

%% designer for 413 class ;date: 2023/05/18
%
%% note.cls
%
%% Copyright 2023 chhzh123

% Identification
\NeedsTeXFormat{LaTeX2e}

\ProvidesClass{note}[2023/05/19]

% Declaration of options
\DeclareOption{english}{\def\note@english{\relax}}
\DeclareOption{broad}{\def\note@broad{\relax}}
\DeclareOption{compact}{\def\note@compact{\relax}}
\ProcessOptions\relax

% ===========================================
% 首先，使用 \DeclareOption 命令来声明了三个选项 english、broad 和 compact。每一个选项后面都跟着一段命令，在这里分别是
%  \def\note@english{\relax}、\def\note@broad{\relax} 和 \def\note@compact{\relax}
%  这些命令的作用是在选项被激活时执行相应的操作。
% 接着，使用 \ProcessOptions 命令来处理用户输入的选项。如果没有输入任何选项，则会默认使用 \relax 空命令。而如果输入了某个选项，则会执行相应的命令以实现该选项的功能。最后再加上一个 \relax 是为了防止其他操作与该宏包发生冲突。
% ==================================================

% Pass options
\ifdefined\note@english%
\PassOptionsToClass{scheme=plain}{ctexart}%
\fi
% =============================================
% 具体来说，\ifdefined\note@english 是一个条件语句，用于判断是否存在 \note@english 这个命令。如果该命令已被定义，
% 则条件成立，后面的代码就会被执行。反之，如果该命令未被定义，则条件不成立，后面的代码也不会被执行。

% 在这里，当\note@english 命令被定义时，代码会执行 \PassOptionsToClass{scheme=plain}{ctexart} 这行命令。
% 这个命令的作用是将 scheme=plain 选项传递给 LaTeX 文档类 ctexart，以便进一步控制中文排版效果。而如果 \note@english 没有被定义，
% 则该命令不会执行，因此选项 scheme=plain 不会被传递给 ctexart 文档类。
% ==============================================

% Load class
\ifdefined\note@english%
\LoadClass[UTF8, 11pt]{article}%
\else%
\LoadClass[UTF8, 11pt]{ctexart}%
\fi


% Layout
\RequirePackage{standalone}
\RequirePackage{geometry}
\RequirePackage{setspace}
\RequirePackage{titlesec}
\RequirePackage{titling}
\RequirePackage{caption}

% Page style
\pagestyle{plain}

% Page layout
\ifdefined\note@broad
\geometry{top=25.4mm,bottom=25.4mm,left=31.8mm,right=31.8mm} % a4
\else
\geometry{top=20mm,bottom=20mm,left=20mm,right=20mm} % narrow
\fi

% Miscellaneous packages
\RequirePackage{cancel}
\RequirePackage{enumerate}
\RequirePackage{multicol}
\RequirePackage{multirow}
\RequirePackage{float}
\RequirePackage[hyphens]{url}
\RequirePackage[unicode=true,
	colorlinks,
	linkcolor=black,
	anchorcolor=black,
	citecolor=black,
	CJKbookmarks=false]{hyperref}
\RequirePackage{datetime}
% ==============================================================================
% 这段代码似乎是LaTeX代码，它加载了一些常用的宏包（packages）。

% cancel 宏包提供了一个叫 \cancel 的命令，可以划掉某个数学公式中的部分内容。

% enumerate 宏包提供了更多的选项和方式来自定义有序列表（ordered lists），包括使用字母或罗马数字进行标号。

% multicol 宏包提供了一个 multicols 环境，使得在文档中可以方便地实现多栏排版。

% multirow 宏包提供了一个 multirow 命令，可以将表格中的单元格合并成跨行的单元格。

% float 宏包提供了额外的浮动体（float）环境，如 sidewaysfigure 和 sidewaystable，可以让插图或表格横置。

% url 宏包提供了一个名为 \url 的命令，可以将URL地址进行美化输出，以避免出现不可见字符或超出边界的问题。该宏包还提供了一些其他的选项和命令，如 \path，可以用于排版文件系统路径。

% hyperref 宏包提供了一些命令和选项，使得生成交互式的文档时更加容易，如为引用、脚注或目录添加链接，设置超链接颜色等等。

% datetime 宏包提供了一些命令，可以方便地格式化日期和时间。

% ==============================================================================




% Date format
\newdateformat{builddatemonth}{\THEYEAR.\twodigit{\THEMONTH}}
\newdateformat{builddate}{\THEYEAR\twodigit{\THEMONTH}\twodigit{\THEDAY}}

% Enumerate
\RequirePackage{enumitem}
\setenumerate[1]{itemsep=-1pt,topsep=3pt}
\setitemize[1]{itemsep=-1pt,topsep=3pt}

% Equation display
% \allowdisplaybreaks

% ======================
% new definte commenet date 2023/05/18
\newcommand{\underwrite}[3][]{\genfrac{}{}{#1}{}{\textstyle #2}{\scriptstyle #3}}
\newcommand{\xdownarrow}[1]{{\left\downarrow\vbox to #1{}\right.\kern-\nulldelimiterspace}}
\newcommand{\xuparrow}[1]{{\left\uparrow\vbox to #1{}\right.\kern-\nulldelimiterspace}}



\renewcommand{\thefootnote}{\fnsymbol{footnote}}

% 这个命令用于重新定义脚注的标记方式，使之以一系列符号（如*或†）代替默认的数字编号
% \renewcommand{\thefootnote}{\fnsymbol{footnote}}
% 一些文本。\footnote{第一个脚注。} 更多文本。\footnote{第二个脚注。}







% Chinese fonts
\ifdefined\note@english%
\else
\newcommand{\chuhao}{\fontsize{42.2pt}{\baselineskip}\selectfont}%
\newcommand{\xiaochu}{\fontsize{36.1pt}{\baselineskip}\selectfont}%
\newcommand{\yihao}{\fontsize{26.1pt}{\baselineskip}\selectfont}%
\newcommand{\xiaoyi}{\fontsize{24.1pt}{\baselineskip}\selectfont}%
\newcommand{\erhao}{\fontsize{22.1pt}{\baselineskip}\selectfont}%
\newcommand{\xiaoer}{\fontsize{18.1pt}{\baselineskip}\selectfont}%
\newcommand{\sanhao}{\fontsize{16.1pt}{\baselineskip}\selectfont}%
\newcommand{\xiaosan}{\fontsize{15.1pt}{\baselineskip}\selectfont}%
\newcommand{\sihao}{\fontsize{14.1pt}{\baselineskip}\selectfont}%
\newcommand{\xiaosi}{\fontsize{12.1pt}{\baselineskip}\selectfont}%
\newcommand{\wuhao}{\fontsize{10.5pt}{\baselineskip}\selectfont}%
\newcommand{\xiaowu}{\fontsize{9.0pt}{\baselineskip}\selectfont}%
\newcommand{\liuhao}{\fontsize{7.5pt}{\baselineskip}\selectfont}%
\newcommand{\xiaoliu}{\fontsize{6.5pt}{\baselineskip}\selectfont}%
\newcommand{\qihao}{\fontsize{5.5pt}{\baselineskip}\selectfont}%
\newcommand{\bahao}{\fontsize{5.0pt}{\baselineskip}\selectfont}%
\RequirePackage{ctex}
\renewcommand{\songti}{\CJKfamily{zhsong}} % 宋体
\renewcommand{\heiti}{\CJKfamily{zhhei}} % 黑体
\renewcommand{\kaishu}{\CJKfamily{zhkai}} % 楷书
\newcommand*{\kaiti}{\CJKfamily{zhkai}} % 楷书
\renewcommand{\fangsong}{\CJKfamily{zhfs}} % 仿宋
% \renewcommand{\lishu}{\CJKfamily{zhli}} % 隶书
% \renewcommand{\youyuan}{\CJKfamily{zhyou}} % 幼圆
\fi

\ifdefined\note@compact%

% \postauthor{\end{tabular}\par\end{center}\vspace{-40pt}}

\renewcommand\title[1]{\def\chhzhnote@title{#1}}
\renewcommand\author[1]{\def\chhzhnote@author{#1}}

\makeatletter
\def\@maketitle{%
	\vspace{30pt}%
	\begin{center}%
	{\LARGE\chhzhnote@title}%
	\vskip 10pt%
	\chhzhnote@author%
	\end{center}%
}
\makeatother
%= =============================================================================
% 这段代码似乎是 LaTeX 代码，它根据条件判断是否加载了一个紧凑的布局。如果加载了，则定义了一些命令和重新定义了 \maketitle 命令。

% 当 \note@compact 被定义时，注释掉了 \postauthor 命令。这个命令原本是在作者信息后添加一条分割线，并将下一行移动到页面顶部。这个命令被注释掉是因为在紧凑布局下，不使用分割线，也不需要将下一行移到页面顶部。

% 接着，重新定义了 \title 和 \author 命令，将文章标题和作者信息保存到名为 \chhzhnote@title 和 chhzhnote@author 的命令中。

% 最后，重定义了 \maketitle 命令。新的 \maketitle 命令将文章标题和作者信息居中显示，而不是像默认的 \maketitle 命令那样左对齐显示。其中，\chhzhnote@title 和 chhzhnote@author 分别是保存了文章标题和作者信息的命令。

% 通过以上修改，可以让文档在紧凑布局下更好地显示，并让标题和作者信息居中显示。

%= =============================================================================


\RequirePackage{indentfirst}
% Set indent and font size
% \titleformat*{\section}{\fontsize{15pt}{15pt}\selectfont\bfseries}
\titlespacing*{\section}{0pt}{20bp plus 1ex minus 0.2ex}{6bp plus 0.2ex}[0pt]
% \titleformat*{\subsection}{\fontsize{14pt}{14pt}\selectfont\bfseries}
\titlespacing*{\subsection}{0pt}{12bp plus 1ex minus 0.2ex}{6bp plus 0.2ex}[0pt]
% \titleformat*{\subsubsection}{\fontsize{12pt}{12pt}\selectfont\bfseries}
\titlespacing*{\subsubsection}{0pt}{12bp plus 1ex minus 0.2ex}{6bp plus 0.2ex}[0pt]
\fi

%= =============================================================================
% 它加载了 indentfirst 宏包，并且在条件 \note@compact 被定义时设置了标题和副标题的格式和间距。

% indentfirst 宏包可以让 LaTeX 在新的段落中首行缩进。

% 如果条件 \note@compact 被定义（即使用紧凑布局），则设置了三个标题层级的格式和间距：

% \titlespacing*{\section} 设置了一级标题（section）的间距，将前后垂直间距分别设为 20pt 和 6pt，加上了一些弹性空间。\titlespacing* 命令会保证该设置不会被放置到一个新页的页面底部。
% \titlespacing*{\subsection} 设置了二级标题（subsection）的间距，将前后垂直间距分别设为 12pt 和 6pt，加上了一些弹性空间。同样使用了 \titlespacing* 命令保证该设置不会被放置到一个新页的页面底部。
% \titlespacing*{\subsubsection} 设置了三级标题（subsubsection）的间距，将前后垂直间距分别设为 12pt 和 6pt，加上了一些弹性空间。同样使用了 \titlespacing* 命令保证该设置不会被放置到一个新页的页面底部。
% 在上述设置中，* 号表示不会在该标题的下方添加缩进。如果省略 * 号，则标题后面会有一个固定的缩进距离。

% 另外，注释掉了 \titleformat*{\section}、\titleformat*{\subsection} 和 \titleformat*{\subsubsection} 命令，这些命令可以用于自定义标题格式，但在这里被注释掉了。
%= =============================================================================