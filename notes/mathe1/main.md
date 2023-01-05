---
title: \vspace{-2.0cm}Mathematik für Informatik 1
date: \today
toc-title: Inhalt
author: Marvin Borner
header-includes:
  - \usepackage{csquotes}
  - \usepackage{svg}
  - \usepackage{environ}
  - \usepackage{tikz,pgfplots}
  - \usepackage{titleps}
  - \usetikzlibrary{calc,trees,positioning,arrows,fit,shapes}
  - \newpagestyle{main}{\sethead{\toptitlemarks\thesection\quad\sectiontitle}{}{\thepage}\setheadrule{.4pt}}
  - \pagestyle{main}
  - \newcommand\N{\mathbb{N}}
  - \newcommand\R{\mathbb{R}}
  - \newcommand\Z{\mathbb{Z}}
  - \newcommand\Q{\mathbb{Q}}
  - \newcommand\C{\mathbb{C}}
  - \renewcommand\P{\mathbb{P}}
  - \newcommand{\cupdot}{\mathbin{\mathaccent\cdot\cup}}
  - \newcommand{\bigcupdot}{\dot{\bigcup}}
---

# Logik

---

- Aussagen werden einem Wahrheitswert zugeordnet: **w** für _wahr_ und **f** für _falsch_
- Eine Aussage, der der Wahrheitswert **w** schlicht durch Festlegung zugewiesen wurde, heißt **Axiom**

---

## Negation

- Notation: $\neg X$
- Gesprochen: \enquote{nicht X}

|  $X$  | $\neg X$ |
| :---: | :------: |
| **w** |  **f**   |
| **f** |  **w**   |

- $\neg (\forall x : P) \iff \exists x : (\neg P)$
- $\neg (\exists x : P) \iff \forall x : (\neg P)$

## Konjunktion

- Notation: $X \land Y$
- Gesprochen: \enquote{X und Y}

|  $X$  |  $Y$  | $X \land Y$ |
| :---: | :---: | :---------: |
| **w** | **w** |    **w**    |
| **w** | **f** |    **f**    |
| **f** | **w** |    **f**    |
| **f** | **f** |    **f**    |

## Disjunktion

- Notation: $X \lor Y$
- Gesprochen: \enquote{X oder Y}

|  $X$  |  $Y$  | $X \lor Y$ |
| :---: | :---: | :--------: |
| **w** | **w** |   **w**    |
| **w** | **f** |   **w**    |
| **f** | **w** |   **w**    |
| **f** | **f** |   **f**    |

## Nand

- Notation: $X \uparrow Y$
- Gesprochen: \enquote{nicht (X und Y)}

|  $X$  |  $Y$  | $X \uparrow Y$ |
| :---: | :---: | :------------: |
| **w** | **w** |     **f**      |
| **w** | **f** |     **w**      |
| **f** | **w** |     **w**      |
| **f** | **f** |     **w**      |

## Äquivalenz

- Notation: $X \iff Y$
- Gesprochen: \enquote{X genau dann wenn Y}

|  $X$  |  $Y$  | $X \iff Y$ |
| :---: | :---: | :--------: |
| **w** | **w** |   **w**    |
| **w** | **f** |   **f**    |
| **f** | **w** |   **f**    |
| **f** | **f** |   **w**    |

- Alternative: $(X \implies Y) \land (Y \implies X)$

## Implikation

- Notation: $X \implies Y$
- Gesprochen: \enquote{Aus X folgt Y}

|  $X$  |  $Y$  | $X \implies Y$ |
| :---: | :---: | :------------: |
| **w** | **w** |     **w**      |
| **w** | **f** |     **f**      |
| **f** | **w** |     **w**      |
| **f** | **f** |     **w**      |

- Alternative: $(\neg X) \lor Y$
- Der Wahrheitswert der Implikation $X \implies Y$ bewertet nur die Korrektheit des Schließens, nicht jedoch die Wahrheit der Aussagen $X$ und $Y$

## Kontraposition

- Definition: $X \implies Y \iff \neg Y \implies \neg X$

|  $X$  |  $Y$  | $\neg Y$ | $\neg Y$ | $X \implies Y$ | $\neg Y \implies \neg x$ |
| :---: | :---: | :------: | :------: | :------------: | :----------------------: |
| **w** | **w** |  **f**   |  **f**   |     **w**      |          **w**           |
| **w** | **f** |  **f**   |  **w**   |     **f**      |          **f**           |
| **f** | **w** |  **w**   |  **f**   |     **w**      |          **w**           |
| **f** | **f** |  **w**   |  **w**   |     **w**      |          **w**           |

## Quantoren

- $\forall$: \enquote{für alle}
- $\exists$: \enquote{es existiert ein}
- $\exists!$: \enquote{es existiert genau ein}
- $\nexists$: \enquote{es existiert kein}

## Gesetze

- Assoziativgesetze
  - $(X \lor Y) \lor Z \iff X \lor (X \lor Z)$
  - $(X \land Y) \land Z \iff X \land (X \land Z)$
- Kommutativgesetze
  - $X \lor Y \iff Y \lor X$
  - $X \land Y \iff Y \land X$
- Distributivgesetze
  - $X \land (Y \lor Z) \iff (X \land Y) \lor (X \land Z)$
  - $X \lor (Y \land Z) \iff (X \lor Y) \land (X \lor Z)$
- De Morgansche Regeln
  - $\neg (X \lor Y) \iff \neg X \land \neg Y$
  - $\neg (X \land Y) \iff \neg X \lor \neg Y$

# Mengen

---

Eine _Menge_ ist eine Zusammenfassung von bestimmten, wohlunterschiedenen Objekten unserer Anschauung oder unseres Denkens zu einem Ganzen. Die in einer Menge zusammengefassten Objekte heißen _Elemente_ der Menge.

---

## Notation

- Mengen angeben durch Auflisten der Elemente: $\{ 1,2,5,3,4,0 \}$
- Mengen angeben durch Vorschreiben einer Eigenschaft: $\{ x\ \vert\ x \text{ ist eine natürliche Zahl kleiner als } 6 \}$
- $x \in M$ heißt \enquote{x ist Element von M}
- $x \notin M$ heißt \enquote{x ist nicht Element von M}
- $\{ \}$ und $\emptyset$ bezeichnen die _leere Menge_

## Inklusionsrelationen

- $M \subset N \iff (x \in M \implies x \in N)$
- $M = N \iff (M \subset N \land N \subset M)$
- $M \neq N \iff \neg (M = N) \iff ((\exists x \in M : x \notin N) \lor (\exists x \in N : x \notin M))$

## Zahlenbereiche

$$ \P \subsetneq \N \subsetneq \Z \subsetneq \Q \subsetneq \R \subsetneq \C $$

- **Natürliche Zahlen**: $\N = \{ 0,1,2,3,4,5,... \}$
- **Positive natürliche Zahlen**: $\N_{>0} = \{ 1,2,3,4,5,... \}$
- **Ganze Zahlen**: $\Z = \{ ...,-3,-2,-1,0,1,2,3,... \}$
- **Rationale Zahlen**: $\Q = \{ \frac{p}{q}\ \vert\ p,q \in Z, q \neq 0 \}$
- **Komplexe Zahlen**: $\C = 42$ TODO
- **Primzahlen**: Menge der natürlichen Zahlen $p$, die genau zwei positive Teiler, nämlich $1$ und $p$, haben

## Operationen von Mengen

- $M \cap N = \{ x \mid x \in M \land x \in N \}$ heißt der _Durchschnitt_ von $M$ und $N$
- $M \cup N = \{ x \mid x \in M \lor x \in N \}$ heißt die _Vereinigung_ von $M$ und $N$
- $M \setminus N = \{ x \mid x \in M \land x \notin N \}$ heißt die _Differenzmenge_ von $M$ und $N$
- $M \times N = \{ (x, y) \mid x \in M \land y \in N \}$ heißt das _kartesische Produkt_ von $M$ und $N$. Dabei ist $(x, y)$ ein _geordnetes Paar_, und für zwei geordnete Paare $(x, y), (u, v) \in M \times N$ gilt: $$(x, y) = (u, v) \iff (x = u \land y = v)$$
- $M$ und $N$ heißen genau dann _disjunkt_, wenn $M \cap N = \emptyset$, d.h. wenn sie kein Element gemeinsam besitzen
- $P = M \cupdot N \iff (P = M \cup N \land M \cap N = \emptyset)$ beschreibt die _disjunkte Vereinigung_
- $\bigcap_{i \in I} M_i = \{ x \mid \forall i \in I : x \in M_i \}$ heißt der _Durchschnitt_ der $M_i$
- $\bigcup_{i \in I} M_i = \{ x \mid \exists i \in I : x \in M_i \}$ heißt die _Vereinigung_ der $M_i$
- $P = \bigcupdot_{i \in I} M_i \iff (P = \bigcup_{i \in I} M_i \land M_i \cap M_j = \emptyset\ \forall i,j \in I$ mit $i \neq j)$

Beispiel mit den Mengen $I = \{ 1, 2, 3 \}$, $M_1 = \{ a, 1, c \}$, $M_2 = \{ b, 1, e \}$ und $M_3 = \{ d, 1, f \}$:
$$\bigcap_{i \in I} = \{ 1 \} \text { und } \bigcup_{i \in I} = \{ 1, a, b, c, d, e, f \}$$

\begin{tikzpicture}[thick, set/.style = {circle, minimum size = 2cm, fill=gray!30}]
\newcommand\intersection{0.8}

% Set M
\node[set,label={135:$M$}] (M) at (0,0) {};

% Set N
\node[set,label={45:$N$}] (N) at (\intersection,0) {};

% Intersection
\begin{scope}
\clip (0,0) circle(1cm);
\clip (\intersection,0) circle(1cm);
\fill[orange!50](0,0) circle(1cm);
\end{scope}

% Circles outline
\draw (0,0) circle(1cm);
\draw (\intersection,0) circle(1cm);

% Set intersection label
\node at (\intersection/2,-1.5) {$M \cap N$};

\end{tikzpicture}
\begin{tikzpicture}[thick, set/.style = {circle, minimum size = 2cm, fill=orange!50}]
\newcommand\intersection{0.8}

% Set M
\node[set,label={135:$M$}] (M) at (0,0) {};

% Set N
\node[set,label={45:$N$}] (N) at (\intersection,0) {};

% Circles outline
\draw (0,0) circle(1cm);
\draw (\intersection,0) circle(1cm);

% Set intersection label
\node at (\intersection/2,-1.5) {$M \cup N$};

\end{tikzpicture}
\begin{tikzpicture}[thick, set/.style = {circle, minimum size = 2cm, fill=gray!30}]
\newcommand\intersection{0.8}

% Set M
\node[set,fill=orange!50,label={135:$M$}] (M) at (0,0) {};

% Set N
\node[set,label={45:$N$}] (N) at (\intersection,0) {};

% Intersection
\begin{scope}
\clip (0,0) circle(1cm);
\clip (\intersection,0) circle(1cm);
\fill[gray!30](0,0) circle(1cm);
\end{scope}

% Circles outline
\draw (0,0) circle(1cm);
\draw (\intersection,0) circle(1cm);

% Set intersection label
\node at (\intersection/2,-1.5) {$M \setminus N$};

\end{tikzpicture}
\begin{tikzpicture}[thick, set/.style = {circle, minimum size = 2cm, fill=orange!50}]
\newcommand\intersection{2.1}

% Set M
\node[set,label={135:$M$}] (M) at (0,0) {};

% Set N
\node[set,label={45:$N$}] (N) at (\intersection,0) {};

% Circles outline
\draw (0,0) circle(1cm);
\draw (\intersection,0) circle(1cm);

% Set intersection label
\node at (\intersection/2,-1.5) {$M \setminus N$};

\end{tikzpicture}

## Spezielle Mengen

### Komplementärmenge

Für eine Teilmenge $M$ einer Menge $N$ ist $\overline{M} = N \setminus M$.

\begin{center}\begin{tikzpicture}[thick, set/.style = {circle, minimum size = 4cm, fill=gray!30}]

% Set N
\node[set,fill=orange!50,label={45:$N$}] (N) at (0,0) {};

% Set M
\node[set,minimum size=2cm,label={135:$M$}] (M) at (0,0) {};

% Circles outline
\draw (0,0) circle(2cm);
\draw (0,0) circle(1cm);

% Set intersection label
\node at (0,-2.5) {$\overline{M} = N \setminus N$};

\end{tikzpicture}\end{center}

### Potenzmenge

Für eine Menge $M$ ist die Potenzmenge $\mathcal{P}(M) = \{ A\ \vert\ A \subset M \}$.

\begin{center}\begin{tikzpicture}
\node (max) at (0,4) {$\{ x,y,z \}$};
\node (a) at (-2,2) {$\{ x,y \}$};
\node (b) at (0,2) {$\{ x,z \}$};
\node (c) at (2,2) {$\{ y,z \}$};
\node (d) at (-2,0) {$\{ x \}$};
\node (e) at (0,0) {$\{ y \}$};
\node (f) at (2,0) {$\{ z \}$};
\node (min) at (0,-2) {$\emptyset$};
\draw (min) -- (d) -- (a) -- (max) -- (b) -- (f)
(e) -- (min) -- (f) -- (c) -- (max)
(d) -- (b);
\draw[preaction={draw=white, -,line width=4pt}] (a) -- (e) -- (c);
\end{tikzpicture}\end{center}

Außerdem gilt mit der endlichen Menge $M$: $|\mathcal{P}(M)| = 2^{|M|}$

## Gesetze

- Assoziativgesetze
  - $(M \cup N) \cup P = M \cup (N \cup P)$
  - $(M \cap N) \cap P = M \cap (N \cap P)$
- Kommutativgesetze
  - $M \cup N = N \cup M$
  - $M \cap N = N \cap M$
- Distributivgesetze
  - $M \cap (N \cup P) = (M \cap N) \cup (M \cap P)$
  - $M \cup (N \cap P) = (M \cup N) \cap (M \cup P)$
- Identitätsgesetze
  - $M \cup \emptyset = M$
  - $M \subset N \implies M \cap N = M$
- Komplementgesetze
  - $M \subset N \implies M \cup (N \setminus M) = N$
  - $M \subset N \implies M \cap (N \setminus M) = \emptyset$
- De Morgansche Regeln
  - $M \setminus \bigcup_{i \in I} M_i = \bigcap_{i \in I} M \setminus M_i$
  - $M \setminus \bigcap_{i \in I} M_i = \bigcup_{i \in I} M \setminus M_i$

# Abbildungen

---

Es seien $M$ und $N$ zwei Mengen. Eine **Abbildung** oder **Funktion** $f$ von $M$ nach $N$ ist eine _eindeutige Zuordnung_, die $jedem$ Element $x \in M$ _genau ein_ Element $f(x) \in N$ zuweist. Man verwendet den Begriff _Funktion_ nur dann, wenn $N = \R$ ist.

---

Man nennt $M$ den **Definitionsbereich** von $f$ und $N$ den **Ziel-** oder **Wertebereich**.

_Notation_: $$f: M \to N,\ x \mapsto f(x)$$
Für zwei Abbildungen $f: M \to N$ und $g: X \to Y$ gilt: $$f = g \iff (M = X \land N = Y \land \forall x \in M : f(x) = g(x))$$

## Legitime Abbildungen

\begin{center}\begin{tikzpicture}[ele/.style={fill=black,circle,minimum width=.8pt,inner sep=1pt},every fit/.style={ellipse,draw,inner sep=-2pt}]
\node[ele,label=left:$a$] (a1) at (0,3) {};
\node[ele,label=left:$b$] (a2) at (0,2) {};
\node[ele,label=left:$c$] (a3) at (0,1) {};

\node[ele,label=right:$1$] (b1) at (2,3) {};
\node[ele,label=right:$2$] (b2) at (2,2) {};
\node[ele,label=right:$3$] (b3) at (2,1) {};
\node[ele,label=right:$4$] (b4) at (2,0) {};

\node[draw,fit= (a1) (a2) (a3),minimum width=1.4cm] {} ;
\node[draw,fit= (b1) (b2) (b3) (b4),minimum width=1.4cm] {} ;
\draw[->,thick,shorten <=2pt,shorten >=2] (a1) -- (b1);
\draw[->,thick,shorten <=2pt,shorten >=2] (a2) -- (b4);
\draw[->,thick,shorten <=2pt,shorten >=2] (a3) -- (b2);
\end{tikzpicture}
\hspace{1cm}
\begin{tikzpicture}[ele/.style={fill=black,circle,minimum width=.8pt,inner sep=1pt},every fit/.style={ellipse,draw,inner sep=-2pt}]
\node[ele,label=left:$a$] (a1) at (0,3) {};
\node[ele,label=left:$b$] (a2) at (0,2) {};
\node[ele,label=left:$c$] (a3) at (0,1) {};

\node[ele,label=right:$1$] (b1) at (2,3) {};
\node[ele,label=right:$2$] (b2) at (2,2) {};
\node[ele,label=right:$3$] (b3) at (2,1) {};
\node[ele,label=right:$4$] (b4) at (2,0) {};

\node[draw,fit= (a1) (a2) (a3),minimum width=1.4cm] {} ;
\node[draw,fit= (b1) (b2) (b3) (b4),minimum width=1.4cm] {} ;
\draw[->,thick,shorten <=2pt,shorten >=2] (a1) -- (b4);
\draw[->,thick,shorten <=2pt,shorten >=2] (a2) -- (b2);
\draw[->,thick,shorten <=2pt,shorten >=2] (a3) -- (b1);
\end{tikzpicture}\end{center}

## Illegitime Abbildungen

\begin{center}\begin{tikzpicture}[ele/.style={fill=black,circle,minimum width=.8pt,inner sep=1pt},every fit/.style={ellipse,draw,inner sep=-2pt}]
\node[ele,label=left:$a$] (a1) at (0,3) {};
\node[ele,fill=red,label=left:$b$] (a2) at (0,2) {};
\node[ele,label=left:$c$] (a3) at (0,1) {};

\node[ele,label=right:$1$] (b1) at (2,3) {};
\node[ele,label=right:$2$] (b2) at (2,2) {};
\node[ele,label=right:$3$] (b3) at (2,1) {};
\node[ele,label=right:$4$] (b4) at (2,0) {};

\node[draw,fit= (a1) (a2) (a3),minimum width=1.4cm] {} ;
\node[draw,fit= (b1) (b2) (b3) (b4),minimum width=1.4cm] {} ;
\draw[->,thick,shorten <=2pt,shorten >=2] (a1) -- (b1);
\draw[->,thick,shorten <=2pt,shorten >=2] (a2) -- (b2);
\draw[->,thick,shorten <=2pt,shorten >=2] (a2) -- (b3);
\draw[->,thick,shorten <=2pt,shorten >=2] (a3) -- (b3);
\end{tikzpicture}
\hspace{1cm}
\begin{tikzpicture}[ele/.style={fill=black,circle,minimum width=.8pt,inner sep=1pt},every fit/.style={ellipse,draw,inner sep=-2pt}]
\node[ele,label=left:$a$] (a1) at (0,3) {};
\node[ele,fill=red,label=left:$b$] (a2) at (0,2) {};
\node[ele,label=left:$c$] (a3) at (0,1) {};

\node[ele,label=right:$1$] (b1) at (2,3) {};
\node[ele,label=right:$2$] (b2) at (2,2) {};
\node[ele,label=right:$3$] (b3) at (2,1) {};
\node[ele,label=right:$4$] (b4) at (2,0) {};

\node[draw,fit= (a1) (a2) (a3),minimum width=1.4cm] {} ;
\node[draw,fit= (b1) (b2) (b3) (b4),minimum width=1.4cm] {} ;
\draw[->,thick,shorten <=2pt,shorten >=2] (a1) -- (b1);
\draw[->,thick,shorten <=2pt,shorten >=2] (a3) -- (b3);
\end{tikzpicture}\end{center}

## Rechenregeln

Mit den Abbildungen/Funktionen $f: U\to\R$, $g: V\to\R$ und $c\in\R$ gilt:
\begin{gather*}
c \cdot f: U\to\R \to \R: x \mapsto c \cdot f(x) \\
f + g: U \cap V \to \R: x \mapsto f(x) + g(x) \\
f - g: U \cap V \to \R: x \mapsto f(x) - g(x) \\
f \cdot g: U \cap V \to \R: x \mapsto f(x) \cdot g(x) \\
\end{gather*}
Falls außerdem $\forall x \in U \cap V: g(x) \neq 0$:
$$\frac{f}{g}: U \cap V \to \R: x \mapsto \frac{f(x)}{g(x)}$$

## Selektionen

### Einschränkung

Mit der Abbildung $f: M \to N$ und $A \subset M$, ist $$f_{\vert A}: A \to N,\ x \mapsto f(x)$$ die **Einschränkung** von $f$ auf $A$. Beispiel mit $A = \{ b,c \}$:

\begin{center}\begin{tikzpicture}[ele/.style={fill=black,circle,minimum width=.8pt,inner sep=1pt},every fit/.style={ellipse,draw,inner sep=-2pt}]
\node[ele,label=left:$a$] (a1) at (0,3) {};
\node[ele,label=left:$b$] (a2) at (0,2) {};
\node[ele,label=left:$c$] (a3) at (0,1) {};

\node[ele,label=right:$1$] (b1) at (2,3) {};
\node[ele,label=right:$2$] (b2) at (2,2) {};
\node[ele,label=right:$3$] (b3) at (2,1) {};
\node[ele,label=right:$4$] (b4) at (2,0) {};

\node[draw,fit= (a1) (a2) (a3),minimum width=1.4cm] {} ;
\node[draw,fit= (b1) (b2) (b3) (b4),minimum width=1.4cm] {} ;
\draw[->,thick,shorten <=2pt,shorten >=2] (a1) -- (b3);
\draw[->,thick,shorten <=2pt,shorten >=2] (a2) -- (b2);
\draw[->,thick,shorten <=2pt,shorten >=2] (a3) -- (b1);

\node at (1,-1) {$f$};
\end{tikzpicture}
\hspace{1cm}
\begin{tikzpicture}[ele/.style={fill=black,circle,minimum width=.8pt,inner sep=1pt},every fit/.style={ellipse,draw,inner sep=-2pt}]
\node[ele,label=left:$ $] (a1) at (0,3) {};
\node[ele,label=left:$b$] (a2) at (0,2) {};
\node[ele,label=left:$c$] (a3) at (0,1) {};

\node[ele,label=right:$1$] (b1) at (2,3) {};
\node[ele,label=right:$2$] (b2) at (2,2) {};
\node[ele,label=right:$3$] (b3) at (2,1) {};
\node[ele,label=right:$4$] (b4) at (2,0) {};

\node[draw,fit= (a1) (a2) (a3),minimum width=1.4cm] {} ;
\node[draw,fit= (b1) (b2) (b3) (b4),minimum width=1.4cm] {} ;
\draw[->,thick,shorten <=2pt,shorten >=2] (a2) -- (b2);
\draw[->,thick,shorten <=2pt,shorten >=2] (a3) -- (b1);

\node at (1,-1) {$f_{\vert A}$};
\end{tikzpicture}\end{center}

### Identität

Mit der Menge $M$ ist die Abbildung $$\text{id}_M : M \to M,\ x \mapsto x$$ die **Identität** auf $M$. Beispiel mit $M = \{ 1,2,3 \}$:

\begin{center}\begin{tikzpicture}[ele/.style={fill=black,circle,minimum width=.8pt,inner sep=1pt},every fit/.style={ellipse,draw,inner sep=-2pt}]
\node[ele,label=left:$1$] (a1) at (0,3) {};
\node[ele,label=left:$2$] (a2) at (0,2) {};
\node[ele,label=left:$3$] (a3) at (0,1) {};

\node[ele,label=right:$1$] (b1) at (2,3) {};
\node[ele,label=right:$2$] (b2) at (2,2) {};
\node[ele,label=right:$3$] (b3) at (2,1) {};

\node[draw,fit= (a1) (a2) (a3),minimum width=1.4cm] {} ;
\node[draw,fit= (b1) (b2) (b3),minimum width=1.4cm] {} ;
\draw[->,thick,shorten <=2pt,shorten >=2] (a1) -- (b1);
\draw[->,thick,shorten <=2pt,shorten >=2] (a2) -- (b2);
\draw[->,thick,shorten <=2pt,shorten >=2] (a3) -- (b3);

\node at (1,0) {$\text{id}_M$};
\end{tikzpicture}\end{center}

### Graph

Mit der Abbildung $f: M \to N$ ist $$\text{Graph}(f) = \{ (x, f(x))\ \vert\ x \in M \} \subset M \times N$$ der **Graph** von $f$. Beispielhafte Visualisierung der Abbildung $f: \R\to\R,\ x \mapsto x^2$:

<!-- prettier-ignore -->
\begin{center}\begin{tikzpicture}
\begin{axis}[axis lines = center]
\addplot[domain=-5:5,color=red]{x*x};
\end{axis}
\end{tikzpicture}\end{center}

- Für zwei Abbildungen $f: M \to N$ und $g: P \to N$ gilt: $$f = g \iff \text{Graph}(f) = \text{Graph}(g)$$
- Ist $\Gamma \subset M \times N$ so, dass $$\forall x \in M\ \exists!\ y \in N: (x,y) \in \Gamma,$$ dann gibt es eine Abbildung $f: M \to N$ mit $\Gamma = \text{Graph}(f)$

### Bild

Mit der Abbildung $f: M \to N$ und $A \subset M$ ist $$f(A) = \{ f(x)\ \vert\ x \in A \} \subset N$$ das **Bild** von $A$ _unter_ $f$. Beispiel mit $f: \R\to\R,\ x \mapsto x^2$ und $A = \{ -2,-1,0,1,2 \} \subset M$: $$f(A) = \{ 0,1,4 \}$$
$\text{im}(f) = f(M) \subset N$ heißt das **Bild** von $f$. Umgangssprachlich bezeichnet das die Menge des getroffenen Zielbereichs. Mit vorigem Beispiel: $\text{im}(f) = \{ x\in\R\ \vert\ x \geq 0 \}$.

### Urbild

Mit der Abbildung $f: M \to N$ und $B \subset N$ ist $$f^{-1}(B) = \{ x \in M\ \vert\ f(x) \in B \} \subset M$$ das **Urbild** von $B$ unter $f$. Beispiel mit $f: \R\to\R,\ x \mapsto x^2$ und $B = \{ 0, 1, 4 \} \subset N$: $$f^{-1}(B) = \{ -2,-1,0,1,2 \}$$
Ist $y \in N$ und $x \in M$ mit $f(x) = y$, so nennt man $x$ **ein Urbild** von $y$ unter $f$.

## Nachfolgerfunktion

Die Abbildung $$\text{nf}: \N\to\N,\ x \mapsto x + 1$$ nennt man **Nachfolgerfunktion**. Es gilt $$\text{im}(\text{nf}) = \N \setminus \{ 0 \}$$ und $$\forall y \in \text{im}(f: \text{nf}^{-1}(\{ y \}) = \{ y - 1 \}$$

## Eindeutigkeiten

### Injektivität (linkseindeutig)

Mit Abbildung $f: M \to N$:

$$f \text{ ist injektiv} \iff \forall x,x' \in M: f(x) = f(x') \implies x = x'$$
oder
$$f \text{ ist injektiv} \iff \text{jedes } y \in N \text{ hat höchstens ein Urbild}$$

\begin{center}\begin{tikzpicture}[ele/.style={fill=black,circle,minimum width=.8pt,inner sep=1pt},every fit/.style={ellipse,draw,inner sep=-2pt}]
\node[ele,label=left:$a$] (a1) at (0,3) {};
\node[ele,label=left:$b$] (a2) at (0,2) {};
\node[ele,label=left:$c$] (a3) at (0,1) {};

\node[ele,label=right:$1$] (b1) at (2,3) {};
\node[ele,label=right:$2$] (b2) at (2,2) {};
\node[ele,label=right:$3$] (b3) at (2,1) {};
\node[ele,label=right:$4$] (b4) at (2,0) {};

\node[draw,fit= (a1) (a2) (a3),minimum width=1.4cm] {} ;
\node[draw,fit= (b1) (b2) (b3) (b4),minimum width=1.4cm] {} ;
\draw[->,thick,shorten <=2pt,shorten >=2] (a1) -- (b1);
\draw[->,thick,shorten <=2pt,shorten >=2] (a2) -- (b2);
\draw[->,thick,shorten <=2pt,shorten >=2] (a3) -- (b4);

\node at (1,-1) {injektiv};
\end{tikzpicture}
\hspace{1cm}
\begin{tikzpicture}[ele/.style={fill=black,circle,minimum width=.8pt,inner sep=1pt},every fit/.style={ellipse,draw,inner sep=-2pt}]
\node[ele,label=left:$a$] (a1) at (0,3) {};
\node[ele,label=left:$b$] (a2) at (0,2) {};
\node[ele,label=left:$c$] (a3) at (0,1) {};

\node[ele,label=right:$1$] (b1) at (2,3) {};
\node[ele,fill=red,label=right:$2$] (b2) at (2,2) {};
\node[ele,label=right:$3$] (b3) at (2,1) {};
\node[ele,label=right:$4$] (b4) at (2,0) {};

\node[draw,fit= (a1) (a2) (a3),minimum width=1.4cm] {} ;
\node[draw,fit= (b1) (b2) (b3) (b4),minimum width=1.4cm] {} ;
\draw[->,thick,shorten <=2pt,shorten >=2] (a1) -- (b2);
\draw[->,thick,shorten <=2pt,shorten >=2] (a2) -- (b2);
\draw[->,thick,shorten <=2pt,shorten >=2] (a3) -- (b4);

\node at (1,-1) {nicht injektiv};
\end{tikzpicture}\end{center}

### Surjektivität (rechtstotal)

Mit Abbildung $f: M \to N$:

$$f \text{ ist surjektiv} \iff \forall y \in N\ \exists x \in M: f(x) = y$$
oder
$$f \text{ ist surjektiv} \iff \text{im}(f) = N$$
oder
$$f \text{ ist surjektiv} \iff \text{jedes } y \in N \text{ hat mindestens ein Urbild}$$

\begin{center}\begin{tikzpicture}[ele/.style={fill=black,circle,minimum width=.8pt,inner sep=1pt},every fit/.style={ellipse,draw,inner sep=-2pt}]
\node[ele,label=left:$a$] (a1) at (0,3) {};
\node[ele,label=left:$b$] (a2) at (0,2) {};
\node[ele,label=left:$c$] (a3) at (0,1) {};
\node[ele,label=left:$d$] (a4) at (0,0) {};

\node[ele,label=right:$1$] (b1) at (2,3) {};
\node[ele,label=right:$2$] (b2) at (2,2) {};
\node[ele,label=right:$3$] (b3) at (2,1) {};

\node[draw,fit= (a1) (a2) (a3) (a4),minimum width=1.4cm] {} ;
\node[draw,fit= (b1) (b2) (b3),minimum width=1.4cm] {} ;
\draw[->,thick,shorten <=2pt,shorten >=2] (a1) -- (b1);
\draw[->,thick,shorten <=2pt,shorten >=2] (a2) -- (b2);
\draw[->,thick,shorten <=2pt,shorten >=2] (a3) -- (b3);
\draw[->,thick,shorten <=2pt,shorten >=2] (a4) -- (b3);

\node at (1,-1) {surjektiv};
\end{tikzpicture}
\hspace{1cm}
\begin{tikzpicture}[ele/.style={fill=black,circle,minimum width=.8pt,inner sep=1pt},every fit/.style={ellipse,draw,inner sep=-2pt}]
\node[ele,label=left:$a$] (a1) at (0,3) {};
\node[ele,label=left:$b$] (a2) at (0,2) {};
\node[ele,label=left:$c$] (a3) at (0,1) {};
\node[ele,label=left:$d$] (a4) at (0,0) {};

\node[ele,label=right:$1$] (b1) at (2,3) {};
\node[ele,fill=red,label=right:$2$] (b2) at (2,2) {};
\node[ele,label=right:$3$] (b3) at (2,1) {};

\node[draw,fit= (a1) (a2) (a3) (a4),minimum width=1.4cm] {} ;
\node[draw,fit= (b1) (b2) (b3),minimum width=1.4cm] {} ;
\draw[->,thick,shorten <=2pt,shorten >=2] (a1) -- (b1);
\draw[->,thick,shorten <=2pt,shorten >=2] (a2) -- (b3);
\draw[->,thick,shorten <=2pt,shorten >=2] (a3) -- (b3);
\draw[->,thick,shorten <=2pt,shorten >=2] (a4) -- (b3);

\node at (1,-1) {nicht surjektiv};
\end{tikzpicture}\end{center}

### Bijektivität (eineindeutig)

Mit Abbildung $f: M \to N$:

$$f \text{ ist bijektiv} \iff f \text{ ist injektiv und surjektiv}$$
oder
$$f \text{ ist bijektiv} \iff g: N \to M \text{ existiert}: (g \circ f = \text{id}_M) \land (f \circ g = \text{id}_N)$$
oder
$$f \text{ ist bijektiv} \iff \text{jedes } y \in N \text{ hat genau ein Urbild}$$

\begin{center}\begin{tikzpicture}[ele/.style={fill=black,circle,minimum width=.8pt,inner sep=1pt},every fit/.style={ellipse,draw,inner sep=-2pt}]
\node[ele,label=left:$a$] (a1) at (0,3) {};
\node[ele,label=left:$b$] (a2) at (0,2) {};
\node[ele,label=left:$c$] (a3) at (0,1) {};
\node[ele,label=left:$d$] (a4) at (0,0) {};

\node[ele,label=right:$1$] (b1) at (2,3) {};
\node[ele,label=right:$2$] (b2) at (2,2) {};
\node[ele,label=right:$3$] (b3) at (2,1) {};
\node[ele,label=right:$4$] (b4) at (2,0) {};

\node[draw,fit= (a1) (a2) (a3) (a4),minimum width=1.4cm] {} ;
\node[draw,fit= (b1) (b2) (b3) (b4),minimum width=1.4cm] {} ;
\draw[->,thick,shorten <=2pt,shorten >=2] (a1) -- (b2);
\draw[->,thick,shorten <=2pt,shorten >=2] (a2) -- (b3);
\draw[->,thick,shorten <=2pt,shorten >=2] (a3) -- (b4);
\draw[->,thick,shorten <=2pt,shorten >=2] (a4) -- (b1);

\node at (1,-1) {bijektiv};
\end{tikzpicture}
\hspace{1cm}
\begin{tikzpicture}[ele/.style={fill=black,circle,minimum width=.8pt,inner sep=1pt},every fit/.style={ellipse,draw,inner sep=-2pt}]
\node[ele,label=left:$a$] (a1) at (0,3) {};
\node[ele,label=left:$b$] (a2) at (0,2) {};
\node[ele,label=left:$c$] (a3) at (0,1) {};
\node[ele,label=left:$d$] (a4) at (0,0) {};

\node[ele,label=right:$1$] (b1) at (2,3) {};
\node[ele,fill=red,label=right:$2$] (b2) at (2,2) {};
\node[ele,label=right:$3$] (b3) at (2,1) {};
\node[ele,fill=red,label=right:$4$] (b4) at (2,0) {};

\node[draw,fit= (a1) (a2) (a3) (a4),minimum width=1.4cm] {} ;
\node[draw,fit= (b1) (b2) (b3) (b4),minimum width=1.4cm] {} ;
\draw[->,thick,shorten <=2pt,shorten >=2] (a1) -- (b1);
\draw[->,thick,shorten <=2pt,shorten >=2] (a2) -- (b3);
\draw[->,thick,shorten <=2pt,shorten >=2] (a3) -- (b4);
\draw[->,thick,shorten <=2pt,shorten >=2] (a4) -- (b4);

\node at (1,-1) {nicht bijektiv};
\end{tikzpicture}\end{center}

## Komposition

Mit den Abbildungen $f: M \to N$ und $g: N \to P$, ist $$g \circ f: M \to P,\ x \mapsto g(f(x))$$ die **Komposition** oder **Verkettung** von $f$ und $g$. Beispiel:

\begin{center}\begin{tikzpicture}[ele/.style={fill=black,circle,minimum width=.8pt,inner sep=1pt},every fit/.style={ellipse,draw,inner sep=-2pt}]
\node[ele,label=left:$a$] (a1) at (0,3) {};
\node[ele,label=left:$b$] (a2) at (0,2) {};
\node[ele,label=left:$c$] (a3) at (0,1) {};

\node[ele,label=right:$1$] (b1) at (2,3) {};
\node[ele,label=right:$2$] (b2) at (2,2) {};
\node[ele,label=right:$3$] (b3) at (2,1) {};

\node[ele,label=right:$\alpha$] (c1) at (4,3) {};
\node[ele,label=right:$\beta$] (c2) at (4,2) {};
\node[ele,label=right:$\gamma$] (c3) at (4,1) {};

\node[draw,fit= (a1) (a2) (a3),minimum width=1.4cm] {} ;
\node[draw,fit= (b1) (b2) (b3),minimum width=1.4cm] {} ;
\node[draw,fit= (c1) (c2) (c3),minimum width=1.4cm] {} ;
\draw[->,thick,shorten <=2pt,shorten >=2] (a1) -- (b1);
\draw[->,thick,shorten <=2pt,shorten >=2] (b1) ++(13pt,0) -- (c2);
\draw[->,thick,shorten <=2pt,shorten >=2] (a2) -- (b1);
\draw[->,thick,shorten <=2pt,shorten >=2] (a3) -- (b2);
\draw[->,thick,shorten <=2pt,shorten >=2] (b2) ++(18pt,0) -- (c1);
\draw[->,thick,shorten <=2pt,shorten >=2] (b3) ++(12pt,0) -- (c3);

\node at (1,0) {$f: M \to N$};
\node at (3,0) {$g: N \to P$};

\draw[->,thick] (2,-1) -- (2, -2);
\end{tikzpicture}\end{center}

\begin{center}\begin{tikzpicture}[ele/.style={fill=black,circle,minimum width=.8pt,inner sep=1pt},every fit/.style={ellipse,draw,inner sep=-2pt}]
\node[ele,label=left:$a$] (a1) at (0,3) {};
\node[ele,label=left:$b$] (a2) at (0,2) {};
\node[ele,label=left:$c$] (a3) at (0,1) {};

\node[ele,label=right:$\alpha$] (c1) at (4,3) {};
\node[ele,label=right:$\beta$] (c2) at (4,2) {};
\node[ele,label=right:$\gamma$] (c3) at (4,1) {};

\node[draw,fit= (a1) (a2) (a3),minimum width=1.4cm] {} ;
\node[draw,fit= (c1) (c2) (c3),minimum width=1.4cm] {} ;
\draw[->,thick,shorten <=2pt,shorten >=2] (a1) -- (c2);
\draw[->,thick,shorten <=2pt,shorten >=2] (a2) -- (c2);
\draw[->,thick,shorten <=2pt,shorten >=2] (a3) -- (c1);

\node at (2,0) {$g \circ f: M \to P$};
\end{tikzpicture}\end{center}

### Assoziativität

Mit den Abbildungen $f: M \to N$, $g: N \to P$ und $h: P \to Q$ gilt: $$(h \circ g) \circ f = h \circ (g \circ f),$$ weshalb man auch kurz $h \circ g \circ f$ schreibt.

### Eindeutigkeiten unter Komposition

Mit den Abbildungen $f: M \to N$ und $g: N \to P$ gilt:

- Sind $f$ und $g$ injektiv, so ist $g \circ f$ injektiv.
- Sind $f$ und $g$ surjektiv, so ist $g \circ f$ surjektiv.
- Sind $f$ und $g$ bijektiv, so ist $g \circ f$ bijektiv.

# Vollständige Induktion

---

Sei $\mathcal{A}(n)$ eine Aussageform mit zulässigen Werten $n\in\N$. Falls $\mathcal{A}(0)$ wahr ist und $\mathcal{A}(n) \implies \mathcal{A}(n+1)$ wahr ist, so ist $\mathcal{A}(n)$ wahr für alle $n\in\N$.

---

- \enquote{$\mathcal{A}(0)$ wahr} nennt man den _Induktionsanfang_
- \enquote{$\mathcal{A}(n)$ wird als wahr vorausgesetzt} nennt man die _Induktionsvoraussetzung_
- \enquote{$\mathcal{A}(n) \implies \mathcal{A}(n + 1)$} nennt man den _Induktionsschluss_

# Mächtigkeit von Mengen

---

- Eine Menge $M$ ist **endlich**, wenn sie nur endlich viele Elemente enthält. In diesem Fall bezeichnet man mit $\#M = |M|$ die Anzahl an Elementen in $M$ und nennt die Zahl die **Mächtigkeit** von $M$. Enthält $M$ unendlich viele ELemente, so nennt man $M$ **unendlich** und setzt $\#M = |M| = \infty$.
- Zwei Mengen $M$ und $N$ heißen **gleichmächtig**, wenn es eine bijektive Abbildung $f: M \to N$ gibt.
- Eine Menge heißt **abzählbar unendlich**, wenn sie gleichmächtig zu $\N$ ist.
- Eine Menge heißt **überabzählbar**, wenn sie weder endlich noch abzählbar unendlich ist.
- Für $m,n\in\Z$ bezeichnet man mit $$\{ m,...,n \} = \{ k\in\Z\ \vert\ m \leq k \leq n \}$$ die Menge der ganzen Zahlen zwischen $m$ und $n$.

---

## Eigenschaften endlicher Mengen

- Ist eine Menge endlich und enthält genau $n$ Elemente, so kann man die Elemente in $M$ mit $x_1,x_2,x_3,...,x_n$ abzählen und man erhält eine bijektive Abbildung $$f: \{ 1,...,n \} \to M: i \mapsto x_i.$$ Umgekehrt erlaubt eine solche Abbildung, die Elemente von $M$ abzuzählen und man erhält $|M| = n$. Damit sieht man, dass eine Menge genau dann endlich von Mächtigkeit $n$ ist, wenn es eine Bijektion von $\{ 1,...n \}$ nach $M$ gibt.
- Ist die Menge $M$ endlich und $A \subset M$, so ist auch $A$ endlich und $|A| \leq |M|$.
- Ist $M = A \cupdot B$ eine endliche Menge, so gilt $|M| = |A| + |B|$.

**Zusammenhang zwischen Mächtigkeit und Abbildung**:

Mit den nicht-leeren endlichen Mengen $M$ und $N$ gilt:

- $|M| \leq |N| \iff$ eine injektive Abbildung $f: M \to N$ existiert
- $|M| \geq |N| \iff$ eine surjektive Abbildung $f: M \to N$ existiert
- $|M| = |N| \iff$ eine bijektive Abbildung $f: M \to N$ existiert

## Schubfachprinzip

Aus dem Zusammenhang zwischen Mächtigkeit und Abbildung folgt $$f: M \to N \text{ ist eine Abbildung und } |M| > |N| \implies f \text{ ist nicht injektiv}.$$ Diese Kontraposition nennt man auch das **Schubfachprinzip**. Umgangssprachlich heißt das: Wenn man $m > n$ Gegenstände auf $n$ Schubfächer verteilen möchte, dann muss man in mindestens ein Schubfach zwei legen.

Beispiel des Versuchs einer Konstruktion einer injektiven Abbildung trotz $|M| > |N|$ mit $M = \{ 1,2,3,4 \}$ und $N = \{ a,b,c \}$:

\begin{center}\begin{tikzpicture}[ele/.style={fill=black,circle,minimum width=.8pt,inner sep=1pt},every fit/.style={ellipse,draw,inner sep=-2pt}]
\node[ele,label=left:$1$] (a1) at (0,3) {};
\node[ele,label=left:$2$] (a2) at (0,2) {};
\node[ele,label=left:$3$] (a3) at (0,1) {};
\node[ele,fill=red,label=left:$4$] (a4) at (0,0) {};

\node[ele,label=right:$a$] (b1) at (2,3) {};
\node[ele,label=right:$b$] (b2) at (2,2) {};
\node[ele,label=right:$c$] (b3) at (2,1) {};

\node[draw,fit= (a1) (a2) (a3) (a4),minimum width=1.4cm] {} ;
\node[draw,fit= (b1) (b2) (b3),minimum width=1.4cm] {} ;
\draw[->,thick,shorten <=2pt,shorten >=2] (a1) -- (b1);
\draw[->,thick,shorten <=2pt,shorten >=2] (a2) -- (b2);
\draw[->,thick,shorten <=2pt,shorten >=2] (a3) -- (b3);

\node at (1,-1) {Injektivität nicht möglich};
\end{tikzpicture}\end{center}

## Abzählbarkeit von Zahlenbereichen

- Die Menge $\Q$ der rationalen Zahlen ist abzählbar unendlich, da man mithilfe des Cantorschen Diagonalverfahrens eine bijektive Abbildung von $\N$ nach $\Q$ konstruieren kann:

\begin{center}\begin{tikzpicture}[node distance=1cm, arrow/.style={thick,-stealth}]
\node (a0) at (-1,5) {$0$};
\node (a1) at (0,5) {$1$};
\node (a2) at (1,5) {$\frac{1}{2}$};
\node (a3) at (2,5) {$\frac{1}{3}$};
\node (a4) at (3,5) {$\frac{1}{4}$};
\node (a5) at (4,5) {$\frac{1}{5}$};
\node (a6) at (5,5) {...};

\node (b1) at (0,4) {$-1$};
\node (b2) at (1,4) {$-\frac{1}{2}$};
\node (b3) at (2,4) {$-\frac{1}{3}$};
\node (b4) at (3,4) {$-\frac{1}{4}$};
\node (b5) at (4,4) {$-\frac{1}{5}$};
\node (b6) at (5,4) {...};

\node (c1) at (0,3) {$2$};
\node (c2) at (1,3) {$\frac{2}{2}$};
\node (c3) at (2,3) {$\frac{2}{3}$};
\node (c4) at (3,3) {$\frac{2}{4}$};
\node (c5) at (4,3) {$\frac{2}{5}$};
\node (c6) at (5,3) {...};

\node (d1) at (0,2) {$-2$};
\node (d2) at (1,2) {$-\frac{2}{2}$};
\node (d3) at (2,2) {$-\frac{2}{3}$};
\node (d4) at (3,2) {$-\frac{2}{4}$};
\node (d5) at (4,2) {$-\frac{2}{5}$};
\node (d6) at (5,2) {...};

\node (e1) at (0,1) {$\vdots$};
\node (e2) at (1,1) {$\vdots$};
\node (e3) at (2,1) {$\vdots$};
\node (e4) at (3,1) {$\vdots$};
\node (e5) at (4,1) {$\vdots$};

\draw [arrow] (a0) -- (a1);
\draw [arrow] (a1) -- (b1);
\draw [arrow] (b1) -- (a2);
\draw [arrow] (a2) -- (a3);
\draw [arrow] (a3) -- (b2);
\draw [arrow] (b2) -- (c1);
\draw [arrow] (c1) -- (d1);
\draw [arrow] (d1) -- (c2);
\draw [arrow] (c2) -- (b3);
\draw [arrow] (b3) -- (a4);
\draw [arrow] (a4) -- (a5);
\draw [arrow] (a5) -- (b4);
\draw [arrow] (b4) -- (c3);
\draw [arrow] (c3) -- (d2);

\end{tikzpicture}\end{center}

- Die Menge $\R$ der reelen Zahlen ist überabzählbar.

# Äquivalenzrelationen

---

Mit den Mengen $M$ und $N$, ist jede Teilmenge $R \subset M \times N$ eine **Relation** zwischen $M$ und $N$. Für $x \in M$ und $y \in N$ schreibt man auch $xRy$ statt $(x,y) \in R$, wenn $x$ in Relation zu $y$ bezüglich $R$ steht.

---

Für die Äquivalenzrelation $R$ auf die Menge $M$ gilt die Notation: $$x \sim y \iff (x,y) \in R.$$

## Axiome

1. _Reflexivität_: $x \sim x$
1. _Symmetrie_: $x \sim y \implies y \sim x$
1. _Transitivität_: $x \sim y \land y \sim z \implies x \sim z$

Beispiel einer abstrakten Alltagssituation: In einer Schule werden SchülerInnen klassisch in Schulklassen unterteilt. Übertragen sind die Axiome dann für die Schüler Alfred, Ben und Christoph:

1. Alfred gehört zu einer Schulklasse.
1. Wenn Alfred in derselben Schulklasse ist wie Ben, dann ist Ben auch in derselben Schulklasse wie Alfred.
1. Wenn Alfred in derselben Schulklasse ist wie Ben und wenn zugleich Ben in derselben Schulklasse ist wie Christoph, dann ist auch Alfred in derselben Schulklasse wie Christoph.

In diesem Fall ist dann die Relation \enquote{SchülerIn $x$ ist in derselben Schulklasse wie SchülerIn $y$} die _Äquivalenzrelation_, die SchülerInnen derselben Schulklasse _äquivalent_ und die Schulklassen die _Äquivalenzklassen_.

\begin{center}\begin{tikzpicture}[x=0.75pt,y=0.75pt,yscale=-1,xscale=1]
% Generated using mathcha.io
\draw [fill={rgb, 255:red, 216; green, 216; blue, 216 } ,fill opacity=0.38 ] (10.08,222.25) .. controls (10.08,106.27) and (152.23,12.25) .. (327.58,12.25) .. controls (502.93,12.25) and (645.08,106.27) .. (645.08,222.25) .. controls (645.08,338.23) and (502.93,432.25) .. (327.58,432.25) .. controls (152.23,432.25) and (10.08,338.23) .. (10.08,222.25) -- cycle ;
\draw [color={rgb, 255:red, 255; green, 0; blue, 0 } ,draw opacity=1 ][fill={rgb, 255:red, 255; green, 0; blue, 0 } ,fill opacity=0.07 ] (45,224.63) .. controls (45,156.9) and (106.8,102) .. (183.04,102) .. controls (259.28,102) and (321.08,156.9) .. (321.08,224.63) .. controls (321.08,292.35) and (259.28,347.25) .. (183.04,347.25) .. controls (106.8,347.25) and (45,292.35) .. (45,224.63) -- cycle ;
\draw [color={rgb, 255:red, 0; green, 56; blue, 255 } ,draw opacity=1 ][fill={rgb, 255:red, 0; green, 36; blue, 255 } ,fill opacity=0.09 ] (294,112.13) .. controls (294,66.77) and (334.54,30) .. (384.54,30) .. controls (434.55,30) and (475.08,66.77) .. (475.08,112.13) .. controls (475.08,157.48) and (434.55,194.25) .. (384.54,194.25) .. controls (334.54,194.25) and (294,157.48) .. (294,112.13) -- cycle ;
\draw [color={rgb, 255:red, 0; green, 255; blue, 18 } ,draw opacity=1 ][fill={rgb, 255:red, 0; green, 255; blue, 64 } ,fill opacity=0.15 ] (319,292.13) .. controls (319,238.48) and (380.8,195) .. (457.04,195) .. controls (533.28,195) and (595.08,238.48) .. (595.08,292.13) .. controls (595.08,345.77) and (533.28,389.25) .. (457.04,389.25) .. controls (380.8,389.25) and (319,345.77) .. (319,292.13) -- cycle ;
\draw [fill={rgb, 255:red, 255; green, 0; blue, 0 } ,fill opacity=1 ] (132.45,169.89) -- (152.06,172.25) -- (149.92,191.88) -- (145.56,186.38) -- (123.81,203.66) -- (128.18,209.15) -- (108.57,206.8) -- (110.71,187.17) -- (115.08,192.66) -- (136.82,175.39) -- cycle ;
\draw [fill={rgb, 255:red, 255; green, 0; blue, 0 } ,fill opacity=1 ] (171.25,236.85) -- (182.75,256.14) -- (161.41,263.16) -- (163.87,256.58) -- (131.04,244.31) -- (128.58,250.88) -- (117.08,231.59) -- (138.41,224.58) -- (135.95,231.15) -- (168.79,243.43) -- cycle ;
\draw [fill={rgb, 255:red, 255; green, 0; blue, 0 } ,fill opacity=1 ] (225.02,221) -- (219.54,243.94) -- (199.19,232.02) -- (205.65,229.26) -- (190.78,194.41) -- (184.32,197.16) -- (189.8,174.23) -- (210.15,186.14) -- (203.69,188.9) -- (218.56,223.75) -- cycle ;
\draw [fill={rgb, 255:red, 255; green, 0; blue, 0 } ,fill opacity=1 ] (141.42,125.91) .. controls (144.77,122.76) and (157.93,131.32) .. (170.82,145.04) -- (164.76,150.74) .. controls (151.87,137.03) and (138.7,128.46) .. (135.35,131.61) ;\draw [fill={rgb, 255:red, 255; green, 0; blue, 0 } ,fill opacity=1 ] (135.35,131.61) .. controls (132.69,134.11) and (137.01,143.23) .. (145.35,153.75) -- (143.33,155.65) -- (155.66,159.29) -- (153.44,146.15) -- (151.42,148.05) .. controls (143.08,137.53) and (138.76,128.4) .. (141.42,125.91)(135.35,131.61) -- (141.42,125.91) ;
\draw [fill={rgb, 255:red, 255; green, 0; blue, 0 } ,fill opacity=1 ] (280,228.97) .. controls (283.26,232.22) and (275.13,245.66) .. (261.84,258.99) -- (255.94,253.11) .. controls (269.23,239.78) and (277.36,226.34) .. (274.11,223.09) ;\draw [fill={rgb, 255:red, 255; green, 0; blue, 0 } ,fill opacity=1 ] (274.11,223.09) .. controls (271.52,220.52) and (262.54,225.14) .. (252.3,233.82) -- (250.34,231.86) -- (247.1,244.3) -- (260.17,241.65) -- (258.2,239.69) .. controls (268.44,231.01) and (277.42,226.4) .. (280,228.97)(274.11,223.09) -- (280,228.97) ;
\draw [fill={rgb, 255:red, 255; green, 0; blue, 0 } ,fill opacity=1 ] (71.28,251.71) .. controls (67.32,249.24) and (69.89,233.12) .. (77.02,215.69) -- (84.19,220.16) .. controls (77.06,237.58) and (74.49,253.71) .. (78.45,256.17) ;\draw [fill={rgb, 255:red, 255; green, 0; blue, 0 } ,fill opacity=1 ] (78.45,256.17) .. controls (81.59,258.13) and (87.9,250.9) .. (93.93,239.12) -- (96.32,240.61) -- (94.94,226.86) -- (84.38,233.17) -- (86.76,234.66) .. controls (80.73,246.43) and (74.42,253.66) .. (71.28,251.71)(78.45,256.17) -- (71.28,251.71) ;
\draw [fill={rgb, 255:red, 0; green, 255; blue, 91 } ,fill opacity=1 ] (417.45,243.89) -- (437.06,246.25) -- (434.92,265.88) -- (430.56,260.38) -- (408.81,277.66) -- (413.18,283.15) -- (393.57,280.8) -- (395.71,261.17) -- (400.08,266.66) -- (421.82,249.39) -- cycle ;
\draw [fill={rgb, 255:red, 0; green, 255; blue, 91 } ,fill opacity=1 ] (458.25,313.85) -- (469.75,333.14) -- (448.41,340.16) -- (450.87,333.58) -- (418.04,321.31) -- (415.58,327.88) -- (404.08,308.59) -- (425.41,301.58) -- (422.95,308.15) -- (455.79,320.43) -- cycle ;
\draw [fill={rgb, 255:red, 0; green, 255; blue, 91 } ,fill opacity=1 ] (513.48,300.42) -- (508.49,324.5) -- (487.65,311.44) -- (494.11,308.69) -- (478.26,271.55) -- (471.81,274.31) -- (476.8,250.23) -- (497.64,263.28) -- (491.18,266.04) -- (507.03,303.18) -- cycle ;
\draw [fill={rgb, 255:red, 0; green, 255; blue, 91 } ,fill opacity=1 ] (428.42,203.91) .. controls (431.77,200.76) and (444.93,209.32) .. (457.82,223.04) -- (451.76,228.74) .. controls (438.87,215.03) and (425.7,206.46) .. (422.35,209.61) ;\draw [fill={rgb, 255:red, 0; green, 255; blue, 91 } ,fill opacity=1 ] (422.35,209.61) .. controls (419.69,212.11) and (424.01,221.23) .. (432.35,231.75) -- (430.33,233.65) -- (442.66,237.29) -- (440.44,224.15) -- (438.42,226.05) .. controls (430.08,215.53) and (425.76,206.4) .. (428.42,203.91)(422.35,209.61) -- (428.42,203.91) ;
\draw [fill={rgb, 255:red, 0; green, 255; blue, 91 } ,fill opacity=1 ] (558,304.97) .. controls (561.26,308.22) and (553.13,321.66) .. (539.84,334.99) -- (533.94,329.11) .. controls (547.23,315.78) and (555.36,302.34) .. (552.11,299.09) ;\draw [fill={rgb, 255:red, 0; green, 255; blue, 91 } ,fill opacity=1 ] (552.11,299.09) .. controls (549.52,296.52) and (540.54,301.14) .. (530.3,309.82) -- (528.34,307.86) -- (525.1,320.3) -- (538.17,317.65) -- (536.2,315.69) .. controls (546.44,307.01) and (555.42,302.4) .. (558,304.97)(552.11,299.09) -- (558,304.97) ;
\draw [fill={rgb, 255:red, 0; green, 255; blue, 91 } ,fill opacity=1 ] (357.28,329.71) .. controls (353.32,327.24) and (355.89,311.12) .. (363.02,293.69) -- (370.19,298.16) .. controls (363.06,315.58) and (360.49,331.71) .. (364.45,334.17) ;\draw [fill={rgb, 255:red, 0; green, 255; blue, 91 } ,fill opacity=1 ] (364.45,334.17) .. controls (367.59,336.13) and (373.9,328.9) .. (379.93,317.12) -- (382.32,318.61) -- (380.94,304.86) -- (370.38,311.17) -- (372.76,312.66) .. controls (366.73,324.43) and (360.42,331.66) .. (357.28,329.71)(364.45,334.17) -- (357.28,329.71) ;
\draw [fill={rgb, 255:red, 0; green, 19; blue, 255 } ,fill opacity=1 ] (347.56,81.47) .. controls (351.45,77.84) and (365.02,86.04) .. (377.87,99.8) -- (370.81,106.39) .. controls (357.97,92.63) and (344.4,84.42) .. (340.5,88.06) ;\draw [fill={rgb, 255:red, 0; green, 19; blue, 255 } ,fill opacity=1 ] (340.5,88.06) .. controls (337.55,90.82) and (341,99.59) .. (348.44,109.67) -- (346.09,111.86) -- (360.23,116.27) -- (357.85,100.89) -- (355.5,103.08) .. controls (348.06,93) and (344.6,84.23) .. (347.56,81.47)(340.5,88.06) -- (347.56,81.47) ;

\draw (153,153) node [anchor=north west][inner sep=0.75pt] [align=left] {Alfred};
\draw (84,207) node [anchor=north west][inner sep=0.75pt] [align=left] {Ben};
\draw (187,245) node [anchor=north west][inner sep=0.75pt] [align=left] {Christoph};
\draw (440,230) node [anchor=north west][inner sep=0.75pt] [align=left] {Anne};
\draw (371,284) node [anchor=north west][inner sep=0.75pt] [align=left] {Freddi};
\draw (474,322) node [anchor=north west][inner sep=0.75pt] [align=left] {Dominik};
\draw (360,105) node [anchor=north west][inner sep=0.75pt] [align=left] {Phillip};
\draw (150,52) node [anchor=north west][inner sep=0.75pt] [align=left] {\textbf{\underline{Alle SchülerInnen}}};
\draw (232,158) node [anchor=north west][inner sep=0.75pt] [font=\normalsize,color={rgb, 255:red, 0; green, 0; blue, 0 } ,opacity=1 ] [align=left] {\textbf{\underline{Klasse 1}}};
\draw (350,40) node [anchor=north west][inner sep=0.75pt] [align=left] {\textbf{\underline{Klasse 2}}};
\draw (511.17,240) node [anchor=north west][inner sep=0.75pt] [align=left] {\textbf{\underline{Klasse 3}}};
\end{tikzpicture}\end{center}

## Äquivalenzklassen

Mit der Menge $M$ und der Äquivalenzrelation $\sim$ auf $M$, heißt für $x \in M$ die Menge $$[x] = \{ y \in M\ \vert\ y \sim x \}$$ die **Äquivalenzklasse** von $x$. Jedes $y \in [x]$ heißt ein **Repräsentant** der Klasse $[x]$.

Mit dem vorigen Beispiel gilt: $$[\text{Alfred}] = \{ \text{Alfred, Ben, Christoph} \}.$$

---

Mit $$M/{\sim} = \{ [x]\ \vert\ x \in M \}$$ bezeichnet man die Menge der **Äquivalenzklassen modulo der Äquivalenzrelation** $\sim$.

Mit dem vorigen Beispiel gilt: $$M/{\sim} = \{ [\text{Alfred}], [\text{Ben}], [\text{Christoph}], [\text{Philipp}], [\text{Anne}], [\text{Dominik}], [\text{Freddi}] \}.$$

## Disjunkte Zerlegung

Ist $(M_i)_{i \in I}$ eine disjunkte Zerlegung der Menge $M$ und die Relation auf $M$ $$x \sim y \iff \exists i \in I : x,y \in M_i,$$ dann ist $\sim$ eine Äquivalenzrelation auf $M$.

---

Ist $\sim$ eine Äquivalenzrelation auf der Menge $M$, dann bilden die Äquivalenzklassen eine disjunkte Zerlegung von $M$, d.h. jedes $x \in M$ liegt in genau einer Äquivalenzklasse. Insbesondere gilt für Äquivalenzklassen $[x]$ und $[y]$ entweder $[x] = [y]$ oder $[x] \cap [y] = \emptyset$.

---

Voriges Beispiel der Schulklassen ist hilfreich um zu sehen, dass kein Repräsentant in zwei Äquivalenzklassen gleichzeitig sein kann und damit eine disjunkte Zerlegung der SchülerInnen vorliegen muss.

## Kongruenz modulo $n$

Mit $n\in\Z_{>0}$ und $a,b\in\Z$ wird die Äquivalenzrelation $\equiv$ definiert: $$a \equiv b \pmod{n} \iff n\ \vert\ a - b$$
Das heißt, die Reste der ganzzahligen Division von $a$ mit $n$, sowie von $b$ mit $n$, müssen gleich sein. Zwei äquivalente Zahlen $a$ und $b$ werden dann auch **kongruent modulo $n$** genannt.

---

Beispiel mit $5 \equiv 11 \pmod{3}$:

Die Aussage ist wahr, da $\frac{5}{3} = 1 \text{ Rest } 2$ und $\frac{11}{3} = 3 \text{ Rest } 2$ die gleichen Reste besitzen bzw. auch $3\ \vert\ (11 - 5) = 3\ \vert\ 6$ wahr ist.

---

TODO: Beispiele (ggf. S.55?)

Man bezeichnet die Äquivalenzklasse von $a\in\Z$ mit $$[a] = \{ b\in\Z\ \vert\ a \equiv b \pmod{n} \}$$
Die Menge der Äquivalenzklassen ist $$\Z/n\Z = \{ [a]\ \vert\ a\in\Z \}$$ und es gilt $|\Z/n\Z| = n$.

# Gruppen

---

Eine **Gruppe** ist ein Paar $(G,*)$ bestehend aus einer _nicht-leeren_ Menge $G$ und einer zweistelligen Operation \enquote{$*$}, d.h. einer Abbildung $$*: G \times G \to G: (g,h) \mapsto g * h,$$ sodass folgende _Gruppenaxiome_ gelten:

1. _Assoziativgesetz_: $(g * h) * k = g * (h * k)\ \forall g,h,k \in G$
2. _Existenz eines Neutralen_: $\exists e \in G: \forall g \in G: e * g = g$
3. _Existenz von Inversen_: $\forall g \in G: \exists g^{-1} \in G: g^{-1} * g = e$

Eine Gruppe $(G,*)$ heißt **abelsch** oder **kummutativ**, wenn $(G,*)$ zudem noch dem folgenden Axiom genügt:

4. _Kommutativgesetz_: $g * h = h * g\ \forall g,h \in G$

---

## Eigenschaften

- Aufgrund der Axiome erhält man folgende Eigenschaften für eine Gruppe $(G,*)$:

  - Das neutrale Element $e \in G$ ist eindeutig bestimmt und hat die Eigenschaft $$e * g = g * e = g\ \forall g \in G$$
  - Mit $g \in G$ ist das inverse Element $g^{-1}$ zu $g$ eindeutig bestimmt und hat die Eigenschaft $$g^{-1} * g = g * g^{-1} = e$$
  - Für $g,h \in G$ gelten $(g^{-1})^{-1} = g$ und $(g * h)^{-1} = h^{-1} * g^{-1}$

- Häufig wird \enquote{$*$} die _Gruppenmultiplikation_ genannt.

- Ist $(G,*)$ eine Gruppe mit endlich vielen Elementen $n\in\N$, so bezeichnet man mit $\#G = |G| = n$ die **Ordnung** der Gruppe.

## Kürzungsregeln

Für die Gruppe $(G,*)$ gilt mit $g,a,b \in G$:

- $g * a = g * b \implies a = b$
- $a * g = b * g \implies a = b$

## Multiplikative Gruppe

Wird die Gruppenoperation als Multiplikation und mit \enquote{$\cdot$} bezeichnet, so schreibt man

- für das Neutrale Element $1_G$ bzw. 1
- für das Inverse zu $g$ $g^{-1}$ oder $\frac{1}{g}$
- häufig das Multiplikationszeichen nicht, wenn die Bedeutung klar ersichtlich ist (z.B. $gh$ statt $g \cdot h$)
- für das Produkt von $g1,...,g_n \in G$ $$\prod_{i=1}^n g_i = g_1 \cdot g_2 \cdot ... \cdot g_n$$

Außerdem gelten normale multiplikative Potenzgesetze. Allerdings gilt $$(g \cdot h)^n = g^n \cdot h^n$$ **nicht** in nicht-abelschen Gruppen, da z.B. mit $n = 4$ Kommutativität notwendig ist:
\begin{displaymath}
\begin{split}
(g \cdot h)^n &= g^n \cdot h^n \\
\implies (g \cdot h)^4 &= g^4 \cdot h^4 \\
\implies (g \cdot h) \cdot (g \cdot h) \cdot (g \cdot h) \cdot (g \cdot h) &= (g \cdot g \cdot g \cdot g) \cdot (h \cdot h \cdot h \cdot h) \\
\implies g \cdot h \cdot g \cdot h \cdot g \cdot h \cdot g \cdot h &= g \cdot g \cdot g \cdot g \cdot h \cdot h \cdot h \cdot h
\end{split}
\end{displaymath}

## Additive Gruppe

Wird die Gruppenoperation als Addition und mit \enquote{$+$} bezeichnet, so schreibt man

- für das Neutrale Element meist $0_G$ bzw. 0
- für das Inverse zu $g$ meist $-g$ und meist $g - h$ statt $g + (-h)$
- für die Summe von $g1,...,g_n \in G$ $$\sum_{i=1}^n g_i = g_1 + g_2 + ... + g_n$$

Außerdem gelten normale additive Rechenregeln. Insbesondere muss man bei Rechnungen aufpassen, die je nach Variablen unterschiedliche Operationen mit gleichem Symbol nutzen. Beispiel mit $g,h \in G$ und $m,n \in \Z$:

- $\underbrace{(m + n)}_{\text{Add. in } \Z}g = \underbrace{mg + ng}_{\text{Add. in } G}$
- $n \cdot \underbrace{(m + n)}_{\text{Add. in } G} = \underbrace{ng + nh}_{\text{Add. in } G}$
- $0_\Z \cdot g = 0_G$
- $n \cdot 0_G = 0_G$

# Körper

---

Ein **Körper** ist ein Tripel $(K,+,\cdot)$ bestehend aus einer Menge $K$ zusammen mit zwei zweistelligen Operationen
$$+: K \times K \to K: (x,y) \mapsto x + y, \quad (\textit{\enquote{Addition}})$$
und
$$\cdot: K \times K \to K: (x,y) \mapsto x \cdot y, \quad (\textit{\enquote{Multiplikation}})$$
sodass folgende Axiome erfüllt sind:

1. $(K,+)$ ist eine abelsche Gruppe mit neutralem Element $0$.
2. $(K \setminus \{ 0 \}, \cdot)$ ist eine abelsche Gruppe mit neutralem Element $1$.
3. _Distributivgesetz_: $x \cdot (y + z) = x \cdot y + x \cdot z$ für $x,y,z \in K$.

Ist eine Teilmenge $L \subset K$ eines Körpers mit den _gleichen_ Operationen wieder selbst ein Körper, so nennen wir $L$ einen **Teilkörper** von $K$.

---

Beispiele:

- Die rationalen Zahlen $(\Q,+,\cdot)$ und die reelen Zahlen $(\R,+,\cdot)$ mit der üblichen Addition und Multiplikation sind Körper. $\Q$ ist ein Teilkörper von $\R$.
- Die ganzen Zahlen $(\Z,+,\cdot)$ sind kein Körper, da z.B. der Zahl $2$ ein multiplikatives Inverses fehlt (weil nur $2 \cdot \frac{1}{2} = e = 1$).
- Der kleinstmögliche und zudem endliche Körper ist $\mathbb{F}_2 = \{ 0,1 \}$ und wird durch folgende Additions- und Multiplikationstafeln definiert:

\begin{center}\begin{tabular}{ c || c | c }
$+$ & $0$ & $1$ \\ \hline\hline
$0$ & $0$ & $1$ \\ \hline
$1$ & $1$ & $0$
\end{tabular}
\quad
\begin{tabular}{ c || c | c }
$\cdot$ & $0$ & $1$ \\ \hline\hline
$0$ & $0$ & $0$ \\ \hline
$1$ & $0$ & $1$
\end{tabular}\end{center}

## Rechenregeln

Mit Körper $K$, $x,y,z \in K$ und $u,v \in K \setminus \{ 0 \}$ gilt:

- $-(-x) = x$
- $x + y = z \iff x = z - y$
- $-(x + y) = -x -y$
- $0 \cdot x = x \cdot 0 = 0$
- $(-x) \cdot y = x \cdot (-y) = -(x \cdot y)$
- $(-x) \cdot (-y) = x \cdot y$
- $x \cdot (y - z) = x \cdot y - x \cdot z$
- $(x^{-1})^{-1} = x, \text{ für } x \neq 0$
- $x \cdot y = 0 \iff x = y \text{ oder } y = 0$
- $z \cdot x = z \cdot y,\ z \neq 0 \implies x = y$
- $\frac{x}{u} \cdot \frac{y}{v} = \frac{x \cdot y}{u \cdot v}$
- $\frac{x}{u} + \frac{y}{v} = \frac{x \cdot v + y \cdot u}{u \cdot v}$

# Produkte und Summen

TODO: Später?

# Ordnungsrelationen

---

Eine **Ordnungsrelation** (auch _Halbordnung_ oder _partielle Ordnung_) auf die Menge $M$ ist eine Relation $R \subset M \times M$, sodass für alle $x,y,z \in M$ mit der Notation
$$x \leq y \iff (x,y) \in R$$
gilt:

1. _Reflexivität_: $x \leq x$
1. _Antisymmetrie_: $x \leq y \land y \leq x \implies x = y$
1. _Transitivität_: $x \leq y \land y \leq z \implies x \leq z$

---

## Total- und Wohlordnungen

Mit der Menge $M$ gilt:

- Eine Ordnungsrelation \enquote{$\leq$} auf $M$ heißt **Totalordnung** oder **lineare Ordnung**, falls je zwei Elemente aus $M$ vergleichbar sind, d.h. für je zwei Elemente $x,y \in M$ gilt $x \leq y$ oder $y \leq x$.
- Ist \enquote{$\leq$} eine Ordnungsrelation auf $M$, $A \subset M$ und $x \in A$, so heißt x **minimal** (bzw. **maximal** in $A$, falls für alle $y \in A$ mit $y \leq x$ (bzw. $x \leq y$) gilt $x = y$.
- Eine Totalordnung heißt **Wohlordnung**, falls jede nicht-leere Teilmenge von $M$ ein minimales Element besitzt.

Minima und Maxima einer Menge $M$ bezüglich einer Totalordnung werden mit $\min(M)$ bzw. $\max(M)$ bezeichnet.

Beispiele:

- Die natürlichen Zahlen $(\N,\leq)$ mit der üblichen Kleiner-Gleich-Relation $\leq$ sind wohlgeordnet (**archimedisches Prinzip**).
- Die reelen Zahlen $(\R,\leq)$ mit der üblichen Kleiner-Gleich-Relation $\leq$ sind totalgeordnet, aber nicht wohlgeordnet.
- Die reelen Zahlen $(\Z,\leq)$ mit der üblichen Kleiner-Gleich-Relation $\leq$ sind totalgeordnet, aber nicht wohlgeordnet:
  $$... < -2 < -1 < 0 < 1 < 2 < ...$$ Die \enquote{unübliche Anordnung} $$0 < -1 < 1 < -2 < 2 < -3 < 3 < ...$$ ist eine Wohlordnung auf $\Z$.

## Supremum und Infimum

Es sei \enquote{$\leq$} eine Totalordnung auf einer Menge $M$ und $\emptyset \neq A \subset M$ eine nicht-leere Teilmenge von $M$. Die Menge $B = \{ 1,2,3 \} \subset \R$ dient hierbei als Beispiel. Dann nennt man

- $s \in M$ eine **obere Schranke** von $A$, falls $\forall x \in A : s \geq x$.
  $$\text{Obere Schranken von } B:\ \{ b\ \vert\ b \geq 3 \}$$
- $A$ **nach oben beschränkt**, falls $A$ eine obere Schranke besitzt.
- $s \in M$ das **Supremum** von $A$, falls $s$ das Minimum der Menge der oberen Schranken von $A$ ist. Dieses Minimum ist eindeutig bestimmt, wenn es existiert, und wird dann mit $\sup(A)$ bezeichnet.
  $$\sup(B) = 3$$
- $s \in M$ eine **untere Schranke** von $A$, falls $\forall x \in A : s \leq x$.
  $$\text{Untere Schranken von } B:\ \{ b\ \vert\ b \leq 1 \}$$
- $A$ **nach unten beschränkt**, falls $A$ eine untere Schranke besitzt.
- $s \in M$ das **Infimum** von $A$, falls $s$ das Maximum der Menge aller unteren Schranken von $A$ ist. Dieses Maximum ist eindeutig bestimmt, wenn es existiert, und wird dann mit $\inf(A)$ bezeichnet.
  $$\inf(B) = 1$$
- $A$ **beschränkt**, wenn $A$ nach oben _und_ nach unten beschränkt ist.

**Supremumsaxiom:**

\begin{center}\fbox{\parbox{12cm}{\centering Jede nicht-leere, nach unten/oben beschränkte Teilmenge von $\R$ besitzt ein Infimum/Supremum in $\R$}}\end{center}

$\Q$ erfüllt die Eigenschaften des Supremumsaxioms nicht, da beispielsweise $$\{ x \in \Q\ \vert\ x > 0 \land x^2 \leq 2 \}$$ zwar nach oben beschränkt ist, aber kein Supremum in $\Q$ besitzt.

# Angeordnete Körper

---

Es sei $K$ ein Körper und \enquote{$\leq$} eine Totalordnung auf $K$. Man nennt das Quadrupel $(K,+,\cdot,\leq)$ einen **angeordneten Körper**, wenn die Totalordnung mit der Addition und der Multiplikation verträglich ist, d.h. wenn für alle $x,y,z \in K$ $$x < y \implies x + z < y + z$$ und $$x < y,\ 0 < z \implies x \cdot z < y \cdot z$$ gilt. Ist $x \in K$ und $x > 0$, so nennt man $x$ **positiv**, ist $x < 0$, so nennt man $x$ **negativ**.

---

## Rechenregeln

Mit dem angeordneten Körper $(K,+,\cdot,\leq)$ und $x,y,u,v \in K$ gilt:

- $x > 0 \iff -x < 0$.
- Ist $x \neq 0$, so ist $x^2 > 0$.
- $1 > 0$.
- Ist $0 < x < y$, so ist $0 < \frac{1}{y} < \frac{1}{x}$.
- Ist $x < y$ und $u < v$, so ist $x + y < y + v$.
- Ist $0 < x$ und $n\in\N$, so ist $0 < x^n$.
- Ist $0 \leq x,y$ und $n\in\N$ mit $n \geq 1$, so gilt $$x < y \iff x^n < y^n.$$

## Charakterisierung des Supremums und Infimums

Mit dem angeordneten Körper $(K,+,\cdot,\leq)$, $A \subset K$ und $s \in K$ gilt:
$$s = \sup(A) \iff \forall x \in A: x \leq s \text{ und } \forall 0 < \varepsilon \in K: \exists x \in A: s - \varepsilon < x$$
sowie
$$s = \inf(A) \iff \forall x \in A: x \geq s \text{ und } \forall 0 < \varepsilon \in K: \exists x \in A: s + \varepsilon > x$$

Mit den nicht-leeren Teilmengen $A,B \subset \R$ mit $\forall a \in A, b \in B: a \leq b$ gilt $$\sup(A) \leq \inf(B).$$

# Eigenschaften der reelen Zahlen $\R$

- Der Körper $\R$ der reelen Zahlen mit der üblichen Ordnungsrelation ist der einzige angeordnete Körper, in dem jede nicht-leere, nach oben beschränkte Menge ein Supremum besitzt. TODO: Why not $\N$, ..?
- Für $x,y\in\R$ mit $0 < x < y$ gibt es eine natürliche Zahl $n\in\N$, sodass $y < n \cdot x$ (**archimedische Ordnung**)
- Für alle $x\in\R$ gibt es eine ganze Zahl $n$, sodass $n \leq x < n + 1$.
- Für alle $\varepsilon\in\R$ mit $\varepsilon > 0$ gibt es eine natürliche Zahl $n$, sodass $0 < \frac{1}{n} < \varepsilon$.
- $\Q$ liegt dicht in $\R$: Sind $a,b \in \R$ mit $a < b$, so gibt es eine rationale Zahl im Intervall $(a,b)$.
- Mit $x \in \R$, $x \geq -1$ und $n\in\N$ gilt $(1+x)^n \geq 1 + n \cdot x$ (**bernoullische Ungleichung**)
- Existenz von $n$-ten Wurzeln in $\R$: $\forall x\in\R \geq 0,\ n\in\N \geq 2\ \exists! a\in\R \geq 0 : a^n = x$
- $\sqrt{2}$ ist irrational

## Intervalle

Mit $a,b\in\R$ gilt:

- **Abgeschlossenes Intervall**: $[a,b] = \{ x\in\R\ \vert\ a \leq x \leq b \}$
- **Offenes Intervall**: $(a,b) = \{ x\in\R\ \vert\ a < x < b \}$
- **Halboffenes Intervall**: $$[a,b) = \{ x\in\R\ \vert\ a \leq x < b \}$$ $$(a,b] = \{ x\in\R\ \vert\ a < x \leq b \}$$
- **Uneigentliches Intervall**:
  $$[a,\infty) = \{ x\in\R\ \vert\ a \leq x \}$$
  $$(a,\infty) = \{ x\in\R\ \vert\ a < x \}$$
  $$(-\infty,a] = \{ x\in\R\ \vert\ x \leq a \}$$
  $$(-\infty,a) = \{ x\in\R\ \vert\ x < a \}$$
  $$(-\infty,\infty) = \R$$

# Der Körper der komplexen Zahlen $\C$

---

Die Menge $\C = \{ (x,y)\ \vert\ x,y\in\R \}$ zusammen mit der durch
$$(x,y) + (u,v) = (x + u, y + v),\ \text{ für } (x,y),(u,v)\in\C,$$ und
$$(x,y) \cdot (u,v) = (xu - yv, xv + yu),\ \text{ für } (x,y),(u,v)\in\C,$$
definierte Addition und Multiplikation ist ein Körper, den man den Körper der **komplexen Zahlen** nennt.

---

## Notation

Mit $x\in\R$ und $x = (x,0)$, sowie mit $i = (0,1)$, gilt für $z = (x,y)\in\C$ $$z = (x,y) = (x,0) + (0,y) = (x,0) + (0,1) \cdot (y,0) = x + iy$$
Damit gilt dann $$i^2 = (0,1) \cdot (0,1) = -1$$
Daraus folgt auch die Definition der Multiplikation in dieser Notation: $$(x + iy)(u + iv) = (xu + i^2yv) + i(xv + yu) = (xu - yv) + i(xv + yu)$$

Die **Betragsfunktion** wird auf $\C$ definiert durch $$|\cdot| \C \to \R_{\geq 0}: x + iy \mapsto \sqrt{x^2 + y^2}.$$
Man nennt $|x|$ den **Absolutbetrag** von $x$.

Die **komplexe Konjugation** wird definiert durch $$\overline{\cdot}: \C \to \C: z = x + iy \mapsto \overline{z} = x - iy.$$
Für $z\in\C$ heißt $\overline{z}$ die zu $z$ **konjugiert komplexe Zahl**.

Der **Realteil** wird definiert durch die Abbildung $$\text{Re}: \C \to \R: x + iy \mapsto x.$$
$\text{Re}(x + iy) = x$ nennt man dann den Realteil von $z$.

Der **Imaginärteil** wird definiert durch die Abbildung $$\text{Im}: \C \to \R: x + iy \mapsto y.$$
$\text{Im}(x + iy) = y$ nennt man dann den Imaginärteil von $z$.

## Eigenschaften

- $\C$ ist eine Teilmenge von $\R$, da es eine Abbildung $$\iota: \R\to\C: x \mapsto (x,0)$$ gibt.
- Es gibt keine Totalordnung \enquote{$\leq$} auf $\C$, die $\C$ zu einem angeordneten Körper macht (da $0 \nless i^2$).

## Rechenregeln

Mit $z,w\in\C$ gilt:

- Der Betrag ist multiplikativ: $|z| \cdot |w| = |zw|$
- Der Betrag erfüllt die _Dreiecksungleichung_: $|z + w| \leq |z| + |w|$ und $||z| - |w|| \leq |z - w|$.
- $z = 0 \iff |z| = 0$
- $z \cdot \overline{z} = |z|^2$.
- Wenn $z \neq 0$, dann ist $z^{-1} = \frac{1}{z} = \frac{\overline{z}}{|z|^2}$.
- Die komplexe Konjugation ist additiv: $\overline{z} + \overline{w} = \overline{z+w}$.
- Die komplexe Konjugation ist multiplikativ: $\overline{z} \cdot \overline{w} = \overline{z \cdot w}$.
- $\overline{\overline{z}} = z$.
- $\text{Re}(z) = \frac{z + \overline{z}}{2} \leq |z|$.
- $\text{Im}(z) = \frac{z - \overline{z}}{2i} \leq |z|$.
- $|z| = |\overline{z}| = |-z|$.

## Geometrische Deutung

### Graph von $z$

Mit $z = x + yi = 4 + 5i$:

\begin{center}\begin{tikzpicture}
\begin{axis}[axis lines=center,xmin=-1,xmax=5,ymin=-1,ytick={-1,...,6},ymax=6,minor tick num=1,ticks=both,yticklabels={$-i$, $0$, $i$, $2i$, $3i$, $4i$, $5i$, $6i$}]
\addplot[black,mark=*] coordinates {(4,5)} {};
\addplot[ultra thick,dashed,red] coordinates { (0,0) (4,0) } node[pos=0.5,above] {$\text{Re}(z)=4$};
\addplot[,dashed,red] coordinates { (4,0) (4,5) } node[pos=0.5,left] {$\text{Im}(z)=5$};

\node [above,red] at (axis cs: 4,5) {$4+5i$};
\end{axis}
\end{tikzpicture}\end{center}

### Vektoraddition

Mit $z = x + yi = 1 + 3i$ und $w = u + vi = 4 + 2i$ und $z + w = 5 + 5i$:

\begin{center}\begin{tikzpicture}
\begin{axis}[axis lines=center,xmin=-1,xmax=6,ymin=-1,ytick={-1,...,6},ymax=6,minor tick num=1,ticks=both,yticklabels={$-i$, $0$, $i$, $2i$, $3i$, $4i$, $5i$, $6i$}]
\addplot[black,mark=*] coordinates {(1,3)} {};
\addplot[black,mark=*] coordinates {(5,5)} {};
\addplot[black,mark=*] coordinates {(4,2)} {};

\addplot[red] coordinates { (0,0) (1,3) } node[pos=1,left] {$z$};
\addplot[red] coordinates { (0,0) (5,5) } node[pos=1,above] {$z+w$};
\addplot[red] coordinates { (0,0) (4,2) } node[pos=1,right] {$w$};

\addplot[dashed,red] coordinates { (1,3) (5,5) };
\addplot[dashed,red] coordinates { (4,2) (5,5) };
\end{axis}
\end{tikzpicture}\end{center}

### Betrag

Mit $z = x + iy = 4 + 5i$, entspricht der Betrag $|z| = \sqrt{x^2 + y^2} = \sqrt{4^2 + 5^2} \approx 6.4 = r$ der euklidischen Länge des Vektors $z$:

\begin{center}\begin{tikzpicture}
\begin{axis}[axis lines=center,xmin=-1,xmax=5,ymin=-1,ytick={-1,...,6},ymax=6,minor tick num=1,ticks=both,yticklabels={$-i$, $0$, $i$, $2i$, $3i$, $4i$, $5i$, $6i$}]
\addplot[black,mark=*] coordinates {(4,5)} {};
\addplot[red] coordinates { (0,0) (4,5) } node[pos=0.5,above] {$r$};
\addplot[ultra thick,dashed,red] coordinates { (0,0) (4,0) } node[pos=0.5,above] {$\text{Re}(z)=4$};
\addplot[dashed,red] coordinates { (4,0) (4,5) } node[pos=0.5,left] {$\text{Im}(z)=5$};

\node [above,red] at (axis cs: 4,5) {$4+5i$};
\end{axis}
\end{tikzpicture}\end{center}

Damit ergibt sich, weshalb $|z| = r = \sqrt{x^2 + y^2}$, da $\text{Re}(z)^2 + \text{Im}(z)^2 = x^2 + y^2 = r^2$ (Satz des Pythagoras).

Daraus erschließt sich auch die Dreiecksungleichung, da in einem Dreieck die Summe der Seitenlängen von zwei Seiten stets eine obere Schranke für die Seitenlänge der dritten Seite ist.

### Einheitskreis

TODO (auch Polarkoordinaten-Zeug und n-te Wurzel)

# Folgen und ihre Grenzwerte

\begin{center}\fbox{\parbox{12cm}{\centering Ab hier ist stets $K \in \{ \R,\C \}$}}\end{center}

---

Eine **Folge** in $K$ ist eine Abbildung $$\alpha: \N \to K.$$ Durch ihre Funktionswerte $\alpha_n = \alpha(n)$ mit $n\in\N$ ist diese eindeutig festgelegt. Deshalb schreibt man statt $\alpha: \N \to K$ häufig nur $(a_n)_{n\in\N}$ oder $(a_0,a_1,a_2,...)$.

---

## Konstante Folgen

Mit $c \in K$ heißt $\alpha: \N \to K : n \mapsto c$ bzw. $a_n = c$ mit $n\in\N$ eine **konstante Folge**.

Beispiel mit $(a_n)_{n\in\N} = (2)_{n\in\N}$:
\begin{center}\begin{tikzpicture}
\begin{axis}[axis lines=center,xmin=0,ymin=-1,ymax=4,ytick distance=1]
\addplot[black,mark=*] coordinates {(0,2)} {};
\addplot[black,mark=*] coordinates {(1,2)} {};
\addplot[black,mark=*] coordinates {(2,2)} {};
\addplot[black,mark=*] coordinates {(3,2)} {};
\addplot[black,mark=*] coordinates {(4,2)} {};
\addplot[black,mark=*] coordinates {(5,2)} {};
\end{axis}
\end{tikzpicture}\end{center}

## Konvergenz und Grenzwert

Mit der Folge $(a_n)_{n\in\N}$ in $K$ und $a \in K$ gilt:
$a$ ist genau dann ein **Grenzwert** von $(a_n)_{n\in\N}$, wenn $$\forall \varepsilon > 0,\ \varepsilon \in \R: \exists n_\varepsilon\in\N: \forall n \geq n_\varepsilon: |a_n - a| < \varepsilon.$$
In diesem Fall sagt man, dass $(a_n)_{n\in\N}$ **gegen $\alpha$ konvergiert** und schreibt $$\lim_{n\to\infty} a_n = a \text{ oder } a_n \to a.$$
Wenn es kein $a \in K$ gibt, so dass $(a_n)_{n\in\N}$ gegen $a$ konvergiert, nennt man $(a_n)_{n\in\N}$ **divergent**.

Falls eine Folge $(a_n)_{n\in\N}$ in $K$ gegen $0$ konvergiert, nennt man $(a_n)_{n\in\N}$ eine **Nullfolge**.

Hilfreiche Umformung: $$a_n \to a \iff a_n - a \to 0 \iff |a_n - a| \to 0.$$

TODO: Vorgehen mit abschätzen usw. (auch bei Cauchy)

Beispiel: **Epsilon-Schlauch**

\includesvg{assets/schlauch}

Mit einem $\varepsilon > 0$ gibt es also einen Mindestindex $n_\varepsilon$, sodass sich ab diesem Index die Folge im Epsilon-Schlauch $(a-\varepsilon,a+\varepsilon)$ befindet. Die Folge ist konvergent, falls dies auch für jedes andere $\varepsilon > 0$ gilt.

### Geometrische Folge

Mit $q \in K$ und $|q| < 1$, ist $(q^n)_{n\in\N}$ eine Nullfolge.

## Beschränkte Folgen

Eine Folge $(a_n)_{n\in\N}$ in $K$ heißt **beschränkt**, wenn die Menge $$\{ |a_n| \in \R\ \vert\ n\in\N \}$$ beschränkt ist, d.h. wenn es eine Zahl $s\in\R$ gibt, sodass $|a_n| \leq s$ für alle $n\in\N$.

- Jede konvergente Folge in $K$ ist beschränkt.
- Ist $(a_n)_{n\in\N}$ eine Nullfolge in $K$ und $(b_n)_{n\in\N}$ eine beschränkte Folge in $K$, so ist $(a_n \cdot b_n)_{n\in\N}$ eine Nullfolge.

## Grenzwertsätze und Konvergenzkriterien

Mit den konvergenten Folgen $(a_n)_{n\in\N}$ und $(b_n)_{n\in\N}$ in $K$ mit $a_n \to a$ und $b_n \to b$ gilt:

- $a_n + b_n \to a + b$ und $a_n - b_n \to a - b$
- $a_n \cdot b_n \to a \cdot b$
- $|a_n| \to |a|$
- Wenn $b \neq 0$, so gibt es ein $n_0\in\N$ mit $b_n \neq 0$ für alle $n \geq n_0$ und die Folge $\left(\frac{a_n}{b_n}\right)_{n \geq n_0}$ ist konvergent mit $$\frac{a_n}{b_n} \to \frac{a}{b}.$$
- Ist $(a_n)_{n\in\N}$ im abgeschlossenen Intervall $[a,b]$, so gilt $\lim_{n\to\infty} a_n \in [a,b]$.

### Einschachtelungssatz

Mit den konvergenten Folgen $(a_n)_{n\in\N}$, $(b_n)_{n\in\N}$ und $(c_n)_{n\in\N}$ in $\R$ mit $a_n \to a$ und $b_n \to b$ gilt:

- Ist $a_n \leq b_n$ für alle $n \geq n_0$, so ist $a \leq b$.
- Ist $a_n \leq c_n \leq b_n$ für alle $n \geq n_0$ und ist a = b, so gilt $c_n \to a$.

## Monotonie

$(a_n)_{n\in\N}$ ist eine Folge in $\R$. Man nennt $(a_n)_{n\in\N}$ **monoton wachsend**, falls $$\forall n\in\N: a_n \leq a_{n+1}.$$
Analog nennt man $(a_n)_{n\in\N}$ **monoton fallend**, falls $$\forall n\in\N: a_n \geq a_{n+1}.$$

**Monotoniekriterium**: Jede monoton wachsende oder fallende beschränkte Folge in $\R$ ist konvergent.

## Supremum und Infimum

Mit der nicht-leeren Menge $A \subset \R$ gilt:

- Ist $A$ nach oben beschränkt, so gibt es eine monoton wachsende Folge $(a_n)_{n\in\N}$ in $A$, die gegen $\sup(A)$ konvergiert.
- Ist $A$ nach unten beschränkt, so gibt es eine monoton fallende Folge $(a_n)_{n\in\N}$ in $A$, die gegen $\inf(A)$ konvergiert.

TODO: Heron-Verfahren verstehen

## Der Satz von Bolzano-Weierstraß

Mit der Folge $(a_n)_{n\in\N}$ in $K$ und der in $\N$ aufsteigenden Folge $n_0 < n_1 < n_2 < n_3 < ...$, ist $$(a_{n_k})_{k\in\N} = (a_{n_0}, a_{n_1}, a_{n_2}, a_{n_3}, ...)$$ eine **Teilfolge** von $(a_n)_{n\in\N}$.

Jede beschränkte Folge in $K$ besitzt eine konvergente Teilfolge.

Beispiel: Die divergente beschränkte Folge $((-1)^n)_{n\in\N}$ besitzt als konvergente Teilfolge die konstante Folge $((-1)^{2k})_{k\in\N} = (1)_{k\in\N}$

## Cauchy-Kriterium

Eine Folge $(a_n)_{n\in\N}$ in $K$ heißt **Cauchy-Folge**, falls $$\forall \varepsilon > 0,\ \varepsilon \in \R:\ \exists n_\varepsilon \in \N: \forall m > n \geq n_\varepsilon: |a_m - a_n| < \varepsilon.$$ Sprich, eine Folge, bei der der Abstand beliebiger Folgenglieder ab einem bestimmten $n_\varepsilon$ immer kleiner als $\varepsilon$ ist.

- Eine Folge in $K$ ist (konvergent $\iff$ eine Cauchy-Folge).
- Eine Cauchy-Folge rationaler Zahlen muss in $\Q$ nicht konvergent sein, d.h. ihr Grenzwert in $\R$ muss keine rationale Zahl sein.

Beispiel: **Konvergente/Cauchy Folge**

\includesvg{assets/folge}

## Bestimmte Divergenz

Mit der Folge $(a_n)_{n\in\N}$ in $\R$ gilt:

- $(a_n)_{n\in\N}$ **divergiert bestimmt gegen $\infty$**, falls $$\forall s > 0: \exists n_s\in\N: \forall n \geq n_s: a_n > s.$$ Man nennt $\lim_{n\to\infty} a_n = \infty$ dann auch den uneigentlichen **Grenzwert** von $(a_n)_{n\in\N}$.
- $(a_n)_{n\in\N}$ **divergiert bestimmt gegen $-\infty$**, falls $$\forall s > 0: \exists n_s\in\N: \forall n \geq n_s: a_n < s.$$ Man nennt $\lim_{n\to\infty} a_n = -\infty$ dann auch den uneigentlichen **Grenzwert** von $(a_n)_{n\in\N}$.

Beispiel: Die Folge $(n)_{n\in\N}$ ist bestimmt divergent mit Grenzwert $\infty$, die Folge $((-1)^n \cdot n)_{n\in\N}$ ist divergent, aber nicht bestimmt divergent.

## Landau-Symbole

TODO?

# Unendliche Reihen

---

Mit der Folge $(a_n)_{n\in\N}$ in $K$, ist die Folge $(s_n)_{n\in\N}$ mit der Summe der **Partialsummen** von $(a_n)_{n\in\N}$ auch die durch $(a_n)_{n\in\N}$ definierte **Reihe** $$s_n = \sum_{k=0}^n a_k.$$

Die Reihe heißt **konvergent**, wenn $(s_n)_{n\in\N}$ eine konvergente Folge ist, andernfalls heißt sie **divergent**.

---

## Teleskopsumme

Die Reihe $\sum_{n=1}^\infty \frac{1}{n(n+1)}$ ist konvergent mit Grenzwert $\sum_{n=1}^\infty \frac{1}{n(n+1)} = 1$:

<!-- prettier-ignore -->
\begin{displaymath}\begin{split}
s_n &= \sum_{k=1}^n \frac{1}{k(k+1)} = \sum_{k=1}^n \frac{1}{k} - \frac{1}{k+1} \\
&= \left(\frac{1}{1} - \frac{1}{2}\right) + \left(\frac{1}{2} - \frac{1}{3}\right) + \left(\frac{1}{3} - \frac{1}{4}\right) + ... + \left(\frac{1}{n} - \frac{1}{n+1}\right) \\
&= 1 - \frac{1}{n+1} \to 1.
\end{split}\end{displaymath}

Reihen, die sich auf zwei Summanden reduzieren, weil sich die übrigen Teile der Summe auslöschen, nennt man **Teleskopsummen**.

## Harmonische Reihe

<!-- prettier-ignore -->
Die Reihe $\sum_{n=1}^\infty \frac{1}{n}$ ist **divergent**. Die Reihe $\sum_{n=1}^\infty \frac{1}{n^{1+\varepsilon}}$ mit $\varepsilon > 0$ **konvergiert**.

## Grenzwertsätze

Mit den konvergenten Reihen $\sum_{n=0}^\infty a_n$ und $\sum_{n=0}^\infty b_n$ in $K$ und $a \in K$ gilt:

- $\sum_{n=0}^\infty (a_n + b_n) = \sum_{n=0}^\infty a_n + \sum_{n=0}^\infty b_n$ ist konvergent.
- $\sum_{n=0}^\infty (a_n - b_n) = \sum_{n=0}^\infty a_n - \sum_{n=0}^\infty b_n$ ist konvergent.
- $\sum_{n=0}^\infty (a \cdot b_n) = a \cdot \sum_{n=0}^\infty a_n$ ist konvergent.
- Mit $\forall n\in\N: a_n \leq b_n$ und $K = \R$: $\sum_{n=0}^\infty a_n \leq \sum_{n=0}^\infty b_n$.

## Konvergenzkriterien für unendliche Reihen

### Cauchy-Kriterium

Mit der Reihe $\sum_{n=0}^\infty a_n$ in $K$ ist genau dann $\sum_{n=0}^\infty a_n$ konvergent, wenn $$\forall \varepsilon > 0: \exists n_\varepsilon\in\N: \forall m > n \geq n_\varepsilon: \left| \sum_{k=n+1}^m a_k \right| < \varepsilon.$$

### Restglieder

Wenn die Reihe $\sum_{k=0}^\infty a_k$ konvergent ist, so ist die Folge der Restglieder eine Nullfolge, d.h. $$\lim_{n\to\infty} \sum_{k=n}^\infty a_k = 0.$$

### Nullfolgekriterium

Ist $\sum_{n=0}^\infty a_n$ eine konvergente Reihe in $K$, so ist $(a_n)_{n\in\N}$ eine Nullfolge.

### Geometrische Reihe

Mit $q \in K$ gilt:

- Ist $|q| < 1$, so ist die **geometrische Reihe** $\sum_{n=0}^\infty q^n$ konvergent mit Grenzwert $$\sum_{n=0}^\infty q^n = \frac{1}{1-q}.$$
- Ist $|q| \geq 1$, so ist die **geometrische Reihe** $\sum_{n=0}^\infty q^n$ divergent.

### Leibniz-Kriterium

ist $(a_n)_{n\in\N}$ eine monoton fallende Nullfolge in $\R$, so konvergiert die Reihe $$\sum_{n=0}^\infty (-1)^n \cdot a_n.$$
Demnach ist auch die alternierende harmonische Reihe $\sum_{n=1}^\infty \frac{(-1)^n}{n}$ konvergent.

### Umklammern

TODO: Verstehen und Beispiele

Mit der konvergenten Reihe $\sum_{n=0}^\infty a_n$ in $K$ und der aufsteigenden Folge $0 = k_0 < k_1 < k_2 < ...$ in $\N$, sowie mit $$b_n = \sum_{k=k_n}^{k_{n+1}-1} a_k = a_{k_n} + a_{k_{n+1}} + ... + a_{k_{n+1}-1}$$ ist die Reihe $\sum_{n=0}^\infty b_n$ konvergent und es gilt $$\sum_{n=0}^\infty a_n = \sum_{n=0}^\infty b_n.$$

## Absolute Konvergenz

Eine Reihe $\sum_{n=0}^\infty a_n$ in $K$ heißt **absolut konvergent**, wenn die Reihe ihrer **Absolut**beträge $\sum_{n=0}^\infty |a_n|$ konvergiert. Da die Folge der Partialsummen $t_n = \sum_{k=0}^n |a_k|$ monoton wächst, ist dies gleichwertig dazu, dass die Folge $(t_n)_{n\in\N}$ beschränkt ist.

Ist die Reihe $\sum_{n=0}^\infty a_n$ in $K$ absolut konvergent, so ist sie auch konvergent.

Beispiel: Die alternierende harmonische Reihe ist konvergent, aber nicht absolut konvergent.

### Umordnung

TODO: Verstehen und Beispiele

Mit der Folge $(a_n)_{n\in\N}$ in $K$ und der bijektiven Abbildung $\sigma: \N \to \N$ nennt man die Folge $$(a_{\sigma(n)})_{n\in\N} = (a_{\sigma(0)},a_{\sigma(1)},a_{\sigma(2)},a_{\sigma(3)},a_{\sigma(4)},...)$$ eine **Umordnung** von $(a_n)_{n\in\N}$ und die Reihe $$\sum_{n=0}^\infty a_{\sigma(n)} = a_{\sigma(0)}+a_{\sigma(1)}+a_{\sigma(2)}+a_{\sigma(3)}+a_{\sigma(3)}+...$$ eine **Umordnung** der Reihe $\sum_{n=0}^\infty a_n$.

Durch Umordnung einer konvergenten Reihe kann sich der Grenzwert ändern. Jede Umordnung einer absolut konvergenten Reihe ist absolut konvergent und konvergiert gegen den gleichen Grenzwert.

## Konvergenzkriterien für absolute Konvergenz

### Majorantenkriterium

Mit den Reihen $\sum_{n=0}^\infty a_n$ und $\sum_{n=0}^\infty b_n$ in $K$ gilt:

Ist $\sum_{n=0}^\infty b_n$ absolut konvergent und $\forall n \geq n_0: |a_n| \leq |b_n|$, so ist auch $\sum_{n=0}^\infty a_n$ absolut konvergent.

$\sum_{n=0}^\infty b_n$ ist dann eine konvergente **Majorante** von $\sum_{n=0}^\infty a_n$.

### Minorantenkriterium

Mit den Reihen $\sum_{n=0}^\infty a_n$ und $\sum_{n=0}^\infty b_n$ in $\R$ gilt:

Ist $\sum_{n=0}^\infty b_n$ divergent und $\forall n\in\N: |a_n| \geq |b_n| \geq 0$, so ist auch $\sum_{n=0}^\infty a_n$ divergent.

$\sum_{n=0}^\infty b_n$ ist dann eine divergente **Minorante** von $\sum_{n=0}^\infty a_n$.

### Wurzelkriterium

Mit der Reihe $\sum_{n=0}^\infty a_n$ in $K$ gilt:

- Existiert ein $q < 1$ mit $\sqrt[n]{|a_n|} \leq q$ für $n \geq n_0$, so ist $\sum_{n=0}^\infty a_n$ absolut konvergent.
- Ist $\forall n \geq n_0: \sqrt[n]{|a_n|} \geq 1$, so ist $\sum_{n=0}^\infty a_n$ divergent.

### Quotientenkriterium

Mit der Reihe $\sum_{n=0}^\infty a_n$ in $K$ und $\forall n \geq n_0: a_n \neq 0$ gilt:

- Existiert ein $q < 1$ mit $\left| \frac{a_{n+1}}{a_n} \right| \leq q$ für $n \geq n_0$, so ist $\sum_{n=0}^\infty a_n$ absolut konvergent.
- Ist $\forall n \geq n_0: \left| \frac{a_{n+1}}{a_n} \right| \geq 1$, so ist $\sum_{n=0}^\infty a_n$ divergent.

### Praktikables Quotienten-/Wurzelkriterium

Mit der Reihe $\sum_{n=0}^\infty a_n$ in $K$ und $\forall n \geq n_0: a_n \neq 0$ gilt:

- Falls $\lim_{n\to\infty} \left| \frac{a_{n+1}}{a_n} \right| < 1$ oder $\lim_{n\to\infty} \sqrt[n]{|a_n|} < 1$, so ist $\sum_{n=0}^\infty a_n$ absolut konvergent.
- Falls $\lim_{n\to\infty} \left| \frac{a_{n+1}}{a_n} \right| > 1$ oder $\lim_{n\to\infty} \sqrt[n]{|a_n|} > 1$, so ist $\sum_{n=0}^\infty a_n$ divergent.
- Falls $\lim_{n\to\infty} \left| \frac{a_{n+1}}{a_n} \right| = 1$ oder $\lim_{n\to\infty} \sqrt[n]{|a_n|} = 1$, so wird für $\sum_{n=0}^\infty a_n$ keine Aussage getroffen.

### Cauchy-Produkt

TODO: Verstehen und Beispiele.

Mit den absolut konvergenten Reihen $\sum_{n=0}^\infty a_n$ und $\sum_{n=0}^\infty b_n$ in $K$, sowie mit $$c_n = \sum_{k=0}^n a_k \cdot b_{n-k} = \sum_{i + j = n} a_i \cdot b_j.$$ für $n\in\N$, so ist ist die Reihe $\sum_{n=0}^\infty c_n$ absolut konvergent und es gilt $$\sum_{n=0}^\infty c_n = \sum_{n=0}^\infty a_n \cdot \sum_{n=0}^\infty b_n.$$

## Potenzreihen

Mit der Folge $(a_n)_{n\in\N}$ in $K$, $a \in K$ und der Variable $t$ gilt: Ein Ausdruck der Form $\sum_{n=0}^\infty a_n \cdot (t-a)^n$ eine **Potenzreihe** über $K$ in der Variable $t$ mit **Entwicklungspunkt** $a$. Mit $a=0$ schreibt man auch $\sum_{n=0}^\infty a_n \cdot t^n$.

---

Wenn mit der Folge $(a_n)_{n\in\N}$ in $K$ und $y \in K$ die Reihe $\sum_{n=0}^\infty a_n \cdot y^n$ konvergiert, so ist die Reihe $\sum_{n=0}^\infty a_n \cdot x^n$ absolut konvergent für alle $x \in K$ mit $|x| < |y|$.

### Konvergenzradius

Für eine Potenzreihe $\sum_{n=0}^\infty a_n \cdot t^n$ über $K$ nennt man $$r = \sup \left\{ |y|\ \Bigg\vert\ y \in K,\ \sum_{n=0}^\infty a_n \cdot y^n \text{ ist konvergent} \right\} \in \R_{\geq 0} \cup \{ \infty \}$$ den **Konvergenzradius** der Potenzreihe. Sprich: Für welche $t$ konvergiert die Potenzreihe?

Mit der Potenzreihe $\sum_{n=0}^\infty a_n \cdot t^n$ über $K$ mit Konvergenzradius $r$ gilt:

- Ist $x \in K$ mit $|x| < r$, so ist $\sum_{n=0}^\infty a_n \cdot x^n$ absolut konvergent.
- Ist $x \in K$ mit $|x| > r$, so ist $\sum_{n=0}^\infty a_n \cdot x^n$ divergent.
- Ist $x \in K$ mit $|x| = r$, so ist $x$ der **Rand** des Konvergenzbereiches und es wird keine Aussage getroffen.
- Ist $r = \infty$, so ist $\sum_{n=0}^\infty a_n \cdot x^n$ für alle $x \in K$ absolut konvergent.

Mit $U_r(0) = \{ x \in K\ \vert\ |x| < r \}$ definiert die Potenzreihe eine Abbildung, die auch **Konvergenzbereich** der Potenzreihe genannt wird: $$U_r(0) \to K: x \mapsto \sum_{n=0}^\infty a_n \cdot x^n$$
Ist $K = \R$, so ist die Menge $U_r(0) = (-r,r)$ ein offenes Intervall. Ist $K = \C$, so ist die Menge $U_r(0)$ ein Kreis mit Radius $r$ um den Ursprung.

TODO: Beispiele

### Cauchy-Hadamard

Mit der Potenzreihe $\sum_{n=0}^\infty a_n \cdot t^n$ über $K$ gilt:

- Falls der eigentliche oder uneigentliche Grenzwert $\lim_{n\to\infty} \left| \frac{a_{n+1}}{a_n} \right| \in \R_{\geq 0} \cup \{ \infty \}$ existiert, so ist der Konvergenzradius von $\sum_{n=0}^\infty a_n \cdot t^n$ gegeben durch $$r = \frac{1}{\lim_{n\to\infty} \left| \frac{a_{n+1}}{a_n} \right|}.$$
- Falls der eigentliche oder uneigentliche Grenzwert $\lim_{n\to\infty} \sqrt[n]{|a_n|} \in \R_{\geq 0} \cup \{ \infty \}$ existiert, so ist der Konvergenzradius von $\sum_{n=0}^\infty a_n \cdot t^n$ gegeben durch $$r = \frac{1}{\lim_{n\to\infty} \sqrt[n]{|a_n|}}.$$

### Exponentialfunktion

Die Potenzreihe $\sum_{n=0}^\infty \frac{t^n}{n!}$ über $K$ hat den Konvergenzradius $r = \infty$. Die Dadurch definierte Abbildung $$\exp: K \to K: x \mapsto \exp(x) = \sum_{n=0}^\infty \frac{x^n}{n!}$$ nennt man die **Exponentialfunktion**. Sie genügt der **Funktionalgleichung** $$\exp(x+y) = \exp(x) \cdot exp(y)$$ für $x,y \in K$.

Außerdem gilt $e^x = \exp(x)$, $e = \sum_{n=0}^\infty \frac{1}{n!}$ und damit mit den Potenzgesetzen auch $e^{x+y} = e^x \cdot e^y$.

### Sinus und Cosinus

TODO: Oder später dann?

### $b$-adische Zahldarstellung

TODO: Relevant?

# Grenzwerte von Funktionen

## $\varepsilon$-Umgebung

Mit $\varepsilon > 0$ und $a\in\R$ heißt das Intervall $$U_\varepsilon = (a - \varepsilon, a + \varepsilon) = \{ x\in\R\ \vert\ |x - a| < \varepsilon \}$$ die **$\varepsilon$-Umgebung** von $a$.

## Häufungspunkte

- Mit der Teilmenge $U\subset\R$ und $a\in\R$ nennt man $a$ einen **Häufungspunkt** von $U$, wenn $$\forall \varepsilon > 0: \exists x \in U \setminus \{ a \}: 0 < |x - a| < \varepsilon.$$
- $a\in\R$ ist genau dann ein Häufungspunkt von $U\subset\R$, wenn jede $\varepsilon$-Umgebung von $a$ einen von $a$ verschiedenen Punkt aus $U$ enthält. TODO: Verstehen
- $a\in\R$ ist genau dann ein Häufungspunkt von $U\subset\R$, wenn es eine Folge $(a_n)_{n\in\N}$ mit $a_n \in U \setminus \{ a \}$ und $lim_{n\to\infty} a_n = a$ gibt, d.h. $a$ ist Grenzwert einer Folge in $U \setminus \{ a \}$.

Beispiel mit der Folge $(-1)^n \cdot \frac{n}{n+1}$ in $\R$ mit den zwei Häufungspunkten $+1$ und $-1$:

\begin{center}
\includesvg[width=15cm]{assets/haeufungspunkt}
\end{center}

## $\varepsilon$-$\delta$-Kriterium

Mit $U\subset\R$, der Funktion $f: U\to\R$ und dem Häufungspunkt $a$ von $U$, ist $y\in\R$ der **Grenzwert** von $f$ in $a$, falls $$\forall \varepsilon > 0: \exists \delta_\varepsilon > 0: \forall x \in U \text{ mit } 0 < |x - a| < \delta_\varepsilon \text{ gilt } |f(x) - y| < \varepsilon.$$ Man schreibt dann $$\lim_{x \to a} f(x) = y$$ und sagt, $f(x)$ **konvergiert** gegen $y$ für $x$ gegen $a$.

\begin{center}\begin{tikzpicture}[holdot/.style={circle,draw,fill=white,inner sep=1pt}]
\draw[line width=4mm,blue!30] (3,0)--(3,4);
\draw[very thick,red!80!pink,dashed] (2.8,0) -- (2.8,4);
\draw[double distance=4mm,very thick,double=orange,red!80!pink] (0,4) -- (5,4);
\draw[very thick,red!80!pink,dashed] (3.2,0) -- (3.2,4.2);
\draw[thick,-latex] (-2,0) -- (6,0);
\draw[thick,-latex] (0,-1) -- (0,6);
\draw[very thick,blue!50!cyan] (-0.8,0.2) -- (3.5,4.5) to[out=45,in=135]
node[pos=0.5,above,font=\large]{$f(x) \to y \text{ für } x \to a$} (5,4.5);
\draw[very thick,dashed] (0,4) node[left] (L) {$y$} -| (3,0) node[below] (x0) {$a$};
\draw[very thick,blue!50!cyan,fill=white] (3,4) circle[radius=2pt];
\draw (L) -- ++(120:0.7) node[above] {$y+\varepsilon$}
(L) -- ++(-120:0.7) node[below] {$y-\varepsilon$}
(x0) -- ++(-45:0.7) node[below right] {$a+\delta$}
(x0) -- ++(-135:0.7) node[below left] {$a-\delta$};
\end{tikzpicture}\end{center}

## Folgenkriterium

Mit $U\subset\R$, der Funktion $f: U\to\R$ und dem Häufungspunkt $a$ (inkl. bestimmte Divergenz mit $\pm\infty$) von $U$ gilt:
$$\lim_{x \to a} f(x) = y \iff \forall (a_n)_{n\in\N},\ a_n \in U \setminus \{ a \},\ \lim_{n\to\infty} f(a_n) = a: \lim_{n\to\infty} f(a_n) = y.$$

Beispiel mit $f: \R\to\R: x \mapsto x^2$ und $a = 3$. Für eine Folge $(a_n)_{n\in\N}$ mit $a_n \to 3$ gilt dann wegen der Grenzwertsätze für Folgen $$\lim_{n\to\infty} f(a_n) = a^2_n = a_n \cdot a_n \to 3 \cdot 3 = 9.$$ Demnach gilt auch $$\lim_{x \to 3} x^2 = 9 = f(3).$$

TODO: Visualisierung und Verständnis

## Grenzwertsätze

Mit den Funktionen $f: U\to\R$, $g: U\to\R$, dem Häufungspunkt $a$ (inkl. bestimmte Divergenz mit $\pm\infty$) von $U$ und $c\in\R$ gilt:

- Der Grenzwert von $f$ in $a$ ist eindeutig bestimmt, d.h. falls $\lim_{x \to a} f(x) = y$ und $\lim_{x \to a} f(x) = z$, so ist $y = z$. TODO: Verstehen
- Wenn $\lim_{x \to a} f(x)$ und $\lim_{x \to a} g(x)$ existieren, so gelten:
  - $\lim_{x \to a}(c \cdot f)(x) = c \cdot \lim_{x \to a} f(x).$
  - $\lim_{x \to a}(f + g)(x) = \lim_{x \to a} f(x) + \lim_{x \to a} g(x).$
  - $\lim_{x \to a}(f - g)(x) = \lim_{x \to a} f(x) - \lim_{x \to a} g(x).$
  - $\lim_{x \to a}(f \cdot g)(x) = \lim_{x \to a} f(x) \cdot \lim_{x \to a} g(x).$
- Wenn außerdem $\lim_{x \to a} f(x) \neq 0$, so ist $a$ ein Häufungspunkt der Menge $V = \{ x \in U\ \vert\ f(x) \neq 0 \}$ und es gilt $$\lim_{x \to a} \frac{1}{f}(x) = \frac{1}{\lim_{x \to a} f(x)}.$$

## Polynome

Mit der Variable $t$ und $a_0, ..., a_n \in \R$ ist ein Ausdruck der Form $$\sum_{k=0}^n a_k \cdot t^k = a_n \cdot t^n + a_{n-1} \cdot t^{n-1} + ... + a_1 \cdot t + a_0$$ ein **Polynom** in der Variable $t$ mit Koeffizienten in $\R$. Ist $a_n \neq 0$, so heißt $$\deg \left( \sum_{k=0}^n a_k \cdot t^k \right) = n$$ der **Grad** des Polynoms. Außerdem ist $\deg(0) = -\infty$. Mit $$\R[t] = \left\{ \sum_{k=0}^n a_k \cdot t^k\ \Bigg\vert\ n\in\N,\ a_0,...,a_n \in \R \right\}$$ wird die Menge aller Polynome in der Variable $t$ mit Koeffizienten in $\R$ bezeichnet, so dass der Grad eine Abbildung $\deg: \R[t] \to \N \cup \{ -\infty \}$ ist.

Für ein Polynom $f = \sum_{k=0}^n a_k \cdot t^k \in \R[t]$ und ein $x\in\R$ ist $$f(x) = \sum_{k=0}^n a_k \cdot x^k.$$ Sind $f,g\in\R[t]$ zwei Polynome, $g \neq 0$ nicht das Nullpolynom, so ist die Funktion $$f: \R\to\R: x \mapsto f(x)$$ eine **Polynomfunktion** und die Funktion $$\frac{f}{g}: \R \setminus \{ x\in\R\ \vert\ g(x) = 0 \} \to \R: x \mapsto \frac{f(x)}{g(x)}$$ eine **rationale Funktion**.

Ist $h: \R\to\R$ irgendeine Funktion, so ist $x\in\R$ mit $h(x) = 0$ eine **Nullstelle** von $h$.

Es gilt: $$|\{ x\in\R\ \vert\ g(x) = 0 \}| \leq \deg(g) < \infty.$$

## Uneigentliche Grenzwerte

Mit $U\subset\R$, $f: U\to\R$ und $y\in\R$ gilt:

- $U$ ist **nach oben/unten** beschränkt, wenn die Menge $U \cap [0,\infty)$ bzw. $U \cap (-\infty, 0]$ nicht beschränkt ist.
- Ist $U$ ist nach oben beschränkt, so ist $y$ der **Grenzwert** von $f$ in $\infty$, wenn $$\forall \varepsilon > 0:\ \exists s_\varepsilon > 0: \forall x \in U \text{ mit } x > s_\varepsilon \text{ gilt } |f(x) - y| < \varepsilon.$$ Man schreibt dann $\lim_{x\to\infty} f(x) = y$.
- Ist $U$ ist nach unten beschränkt, so ist $y$ der **Grenzwert** von $f$ in $\infty$, wenn $$\forall \varepsilon > 0:\ \exists s_\varepsilon < 0: \forall x \in U \text{ mit } x < s_\varepsilon \text{ gilt } |f(x) - y| < \varepsilon.$$ Man schreibt dann $\lim_{x\to\infty} f(x) = y$.

TODO: Visualisierung (bzw. Wiederholung mergen?)

### Definition

Mit $U\subset\R$, $f: U\to\R$ und dem Häufungspunkt $a$ von $U$ gilt:

- $\infty$ ist der **uneigentliche Grenzwert** von $f$ in $a$, wenn $$\forall s > 0: \exists \delta_s > 0: \forall x \in U \text{ mit } 0 < |x - a| < \delta_s \text{ gilt } f(x) > s.$$ Man schreibt dann $\lim_{x \to a} f(x) = \infty$.
- $-\infty$ ist der **uneigentliche Grenzwert** von $f$ in $a$, wenn $$\forall s < 0: \exists \delta_s > 0: \forall x \in U \text{ mit } 0 < |x - a| < \delta_s \text{ gilt } f(x) < s.$$ Man schreibt dann $\lim_{x \to a} f(x) = -\infty$.
- Ist $U$ nach oben unbeschränkt, so ist $\infty$ ist der **uneigentliche Grenzwert** von $f$ in $\infty$, wenn $$\forall s > 0: \exists t > 0: \forall x \in U \text{ mit } x > t \text{ gilt } f(x) > s.$$ Man schreibt dann $\lim_{x \to \infty} f(x) = \infty$.
- Ist $U$ nach oben unbeschränkt, so ist $-\infty$ ist der **uneigentliche Grenzwert** von $f$ in $\infty$, wenn $$\forall s < 0: \exists t > 0: \forall x \in U \text{ mit } x > t \text{ gilt } f(x) < s.$$ Man schreibt dann $\lim_{x \to \infty} f(x) = -\infty$.
- Ist $U$ nach unten unbeschränkt, so ist $\infty$ ist der **uneigentliche Grenzwert** von $f$ in $-\infty$, wenn $$\forall s > 0: \exists t < 0: \forall x \in U \text{ mit } x < t \text{ gilt } f(x) > s.$$ Man schreibt dann $\lim_{x \to \infty} f(x) = \infty$.
- Ist $U$ nach unten unbeschränkt, so ist $-\infty$ ist der **uneigentliche Grenzwert** von $f$ in $-\infty$, wenn $$\forall s < 0: \exists t < 0: \forall x \in U \text{ mit } x < t \text{ gilt } f(x) < s.$$ Man schreibt dann $\lim_{x \to \infty} f(x) = -\infty$.

TODO: Visualisierung

# Stetigkeit

## $\varepsilon$-$\delta$-Kriterium

Mit $U\subset\R$, der Funktion $f: U\to\R$ und $a \in U$, ist $f$ **stetig in $a$**, wenn $$\forall \varepsilon > 0: \exists \delta_\varepsilon > 0: \forall x \in U \text{ mit } |x - a| < \delta_\varepsilon \text{ gilt } |f(x) - f(a)| < \varepsilon.$$
Die Funktion $f$ heißt **stetig** (auf $U$), wenn sie stetig in jedem Punkt in $U$ ist. $\mathcal{C}(U,\R) = \{ f: U \to \R\ \vert\ f \text{ stetig } \}$ ist die Menge der auf $U$ stetigen Funktionen.

\begin{center}\begin{tikzpicture}[holdot/.style={circle,draw,fill=white,inner sep=1pt}]
\draw[line width=4mm,blue!30] (3,0)--(3,4);
\draw[very thick,red!80!pink,dashed] (2.8,0) -- (2.8,4);
\draw[double distance=4mm,very thick,double=orange,red!80!pink] (0,4) -- (5,4);
\draw[very thick,red!80!pink,dashed] (3.2,0) -- (3.2,4.2);
\draw[thick,-latex] (-2,0) -- (6,0);
\draw[thick,-latex] (0,-1) -- (0,6);
\draw[very thick,blue!50!cyan] (-0.8,0.2) -- (3.5,4.5) to[out=45,in=135]
node[pos=0.5,above,font=\large]{$f(x)$} (5,4.5);
\draw[very thick,dashed] (0,4) node[left] (L) {$f(a)$} -| (3,0) node[below] (x0) {$a$};
\draw[very thick,blue!50!cyan,fill=white] (3,4) circle[radius=2pt];
\draw (L) -- ++(120:0.7) node[above] {$f(a)+\varepsilon$}
(L) -- ++(-120:0.7) node[below] {$f(a)-\varepsilon$}
(x0) -- ++(-45:0.7) node[below right] {$a+\delta$}
(x0) -- ++(-135:0.7) node[below left] {$a-\delta$};
\end{tikzpicture}\end{center}

Da die Stetigkeit sich immer nur auf eine $\varepsilon$-Umgebung von $a$ bezieht, ist Stetigkeit eine _lokale_ Eigenschaft.

## Stetigkeit in Häufungspunkten

Mit $U\subset\R$, $f: U\to\R$ und dem Häufungspunkt $a \in U$, gilt:
$$f \text{ ist stetig in } a \iff \lim_{x \to a} f(x) = f(a).$$

Beispiel mit $f: \R\to\R: x \mapsto \begin{cases} x & \text{falls $x < 1$} \\ x + 1 & \text{falls $x \ge 1$} \end{cases}$

<!-- prettier-ignore -->
\begin{center}\begin{tikzpicture}
\begin{axis}[axis lines = center]
\addplot[domain=-5:1,color=black]{x};
\addplot[domain=1:5,color=black]{x + 1};
\end{axis}
\end{tikzpicture}\end{center}

$f$ ist in $1$ nicht stetig, da $\lim_{x \to 1} f(x) = 1 \neq 2 = f(1)$.

Beispiel mit $f: \R\to\R: x \mapsto |x|$

<!-- prettier-ignore -->
\begin{center}\begin{tikzpicture}
\begin{axis}[axis lines = center]
\addplot[domain=-5:0,color=black]{abs(x)};
\addplot[domain=0:5,color=black]{x};
\end{axis}
\end{tikzpicture}\end{center}

$f$ ist in $0$ stetig, da $\lim_{x \to 0} f(x) = 0 = f(0)$.

Die Betragsfunktion ist außerdem im Allgemeinen stetig, da aufgrund der Grenzwertsätze für Folgen für $a\in\R$ und $(a_n)_{n\in\N}$ mit $a_n \to a$ auch $|a_n| \to |a|$ gilt. TODO

## Folgenkriterium

Mit $U \subset \R$, $f: U\to\R$ und $a \in U$ gilt:

$f$ ist genau dann stetig in $a$, wenn $$\forall (a_n)_{n\in\N} \text{ mit } a_n \in U \text{ und } \lim_{n\to\infty} a_n = a \text{ gilt } \lim_{n\to\infty} f(a_n) = f(a).$$

## Rechenregeln

Mit $c\in\R$ und den den in $a \in U$ stetigen Funktionen $f: U\to\R$ und $g: U\to\R$ gilt:

- $c \cdot f$, $f+g$, $f-g$ und $f \cdot g$ sind stetig in $a$.
- Ist $g(a) \neq 0$, so ist auch $\frac{f}{g}: U \setminus \{ x \in U\ \vert\ g(x) = 0 \} \to \R$ stetig in $a$.

Mit $a \in U$ und den Funktionen $f: U\to\R$ und $g: V\to\R$ mit $\text{im}(f) \subset V$ gilt: Ist $f$ stetig in $a$ und $g$ stetig in $f(a)$, so ist $g \circ f$ stetig in $a$.

## Fortsetzbarkeit

Mit der stetigen Funktion $f: U\to\R$ und dem Häufungspunkt $a\in\R \setminus U$ von $U$, nennt man $f$ in $a$ **stetig fortsetzbar**, falls $\lim_{x \to a} f(x)$ existiert.

Dann nennt man auch $$g: U \cup \{ a \} \to \R: x \mapsto \begin{cases}f(x) & \text{ falls } x \neq a\\ \lim_{z \to a} f(z) & \text{ falls } x = a\end{cases}$$ die **stetige Fortsetzung** von $f$, und $g$ ist aufgrund der Stetigkeit in Häufungspunkten stetig in $a$ und damit stetig auf $U \cup \{ a \}$. TODO: Wie bitte

## Eigenschaften

### Zwischenwertsatz

Eine stetige Funktion $f: [a,b]\to\R$ nimmt jeden Wert zwischen $f(a)$ und $f(b)$ an.

### Beschränktheit

Eine Funktion $f: U\to\R$ heißt **beschränkt**, wenn $\text{im}(f)$ beschränkt ist.

Eine stetige Funktion $f: [a,b]\to\R$ ist beschränkt.

### Minima/Maxima

Eine stetige Funktion $f: [a,b]\to\R$ nimmt ihr Maximum und ihr Minimum an, d.h. es gibt $c,d \in [a,b]$, so dass für alle $x \in [a,b]$ gilt $$f(c) \leq f(x) \leq f(d).$$

## Monotonie

### Definition

TODO: Woanders hin?

Mit der Funktion $f: U\to\R$ gilt:

- $f$ heißt **monoton wachsend**, wenn für $x,y \in U$ aus $x \leq y$ stets $f(x) \leq f(y)$ folgt.
- $f$ heißt **streng monoton wachsend**, wenn für $x,y \in U$ aus $x < y$ stets $f(x) < f(y)$ folgt.
- $f$ heißt **monoton fallend**, wenn für $x,y \in U$ aus $x \leq y$ stets $f(x) \geq f(y)$ folgt.
- $f$ heißt **streng monoton fallend**, wenn für $x,y \in U$ aus $x < y$ stets $f(x) > f(y)$ folgt.

Ist $f: U\to\R$ streng monoton wachsend oder fallend, so ist $f$ injektiv.
Denn, für $x,y \in U$ mit $x \neq y$ gilt $x < y$ oder $x > y$ und somit $f(x) < f(y)$ oder $f(x) > f(y)$, aber in jedem Fall $f(x) \neq f(y)$.

### Umkehrsatz

Mit $a,b\in\R \cup \{ -\infty, \infty \}$ mit $a < b$, der Funktion $f: (a,b) \to \R$, $c = \inf(\text{im}(f))\in\R \cup \{ -\infty \}$ und $d = \sup(\text{im}(f))\in\R \cup \{ \infty \}$ gilt:

- Ist $f$ streng monoton wachsend und stetig, so gilt:
  - $f: (a,b) \to (c,d)$ ist bijektiv.
  - $f^{-1}: (c,d) \to (a,b)$ ist streng monoton wachsend und stetig.
- Ist $f$ streng monoton fallend und stetig, so gilt:
  - $f: (a,b) \to (c,d)$ ist bijektiv.
  - $f^{-1}: (c,d) \to (a,b)$ ist streng monoton fallend und stetig.
