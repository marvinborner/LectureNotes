---
author: Marvin Borner
date: "`\\today`{=tex}"
lang: de-DE
pandoc-latex-environment:
  bsp-box:
  - bsp
  defi-box:
  - defi
  visu-box:
  - visu
toc-title: Inhalt
---

# Logik

::: defi
Aussagen werden **einem** Wahrheitswert zugeordnet: **w** für *wahr* und
**f** für *falsch*. Eine Aussage, der der Wahrheitswert **w** schlicht
durch Festlegung zugewiesen wurde, heißt **Axiom**.
:::

## Negation (nicht)

-   Notation: $\neg X$

-   Gesprochen: `\enquote{nicht X}`{=tex}

        $X$    $\neg X$
      ------- ----------
       **w**    **f**
       **f**    **w**

-   $\neg\neg x \iff x$

-   $\neg (\forall x : P) \iff \exists x : (\neg P)$

-   $\neg (\exists x : P) \iff \forall x : (\neg P)$

## Konjunktion (und)

-   Notation: $X \land Y$

-   Gesprochen: `\enquote{X und Y}`{=tex}

        $Y$     $X$    $X \land Y$
      ------- ------- -------------
       **w**   **w**      **w**
       **w**   **f**      **f**
       **f**   **w**      **f**
       **f**   **f**      **f**

## Disjunktion (oder)

-   Notation: $X \lor Y$

-   Gesprochen: `\enquote{X oder Y}`{=tex}

        $Y$     $X$    $X \lor Y$
      ------- ------- ------------
       **w**   **w**     **w**
       **w**   **f**     **w**
       **f**   **w**     **w**
       **f**   **f**     **f**

## Bijunktion (Äquivalenz)

-   Notation: $X \iff Y$

-   Gesprochen: `\enquote{X genau dann wenn Y}`{=tex}

        $Y$     $X$     $X \iff Y$
      ------- ------- ------------
       **w**   **w**         **w**
       **w**   **f**         **f**
       **f**   **w**         **f**
       **f**   **f**         **w**

-   Alternative: $(X \implies Y) \land (Y \implies X)$

## Subjunktion (Implikation)

-   Notation: $X \implies Y$

-   Gesprochen: `\enquote{Aus X folgt Y}`{=tex}

        $Y$     $X$    $X \implies Y$
      ------- ------- ----------------
       **w**   **w**       **w**
       **w**   **f**       **f**
       **f**   **w**       **w**
       **f**   **f**       **w**

-   Alternative: $(\neg X) \lor Y$

-   Der Wahrheitswert der Implikation $X \implies Y$ bewertet nur die
    Korrektheit des Schließens, nicht jedoch die Wahrheit der Aussagen
    $X$ und $Y$

## Kontraposition

-   Definition: $X \implies Y \iff \neg Y \implies \neg X$

  ---------------------------------------------------------------------------------
    $X$     $Y$    $\neg Y$   $\neg Y$   $X \implies Y$   $\neg Y \implies \neg x$
  ------- ------- ---------- ---------- ---------------- --------------------------
   **w**   **w**    **f**      **f**         **w**                 **w**

   **w**   **f**    **f**      **w**         **f**                 **f**

   **f**   **w**    **w**      **f**         **w**                 **w**

   **f**   **f**    **w**      **w**         **w**                 **w**
  ---------------------------------------------------------------------------------

-   Die Kontraposition ist sehr hilfreich für **Widerspruchsbeweise**

## Quantoren

-   $\forall$: `\enquote{für alle}`{=tex}
-   $\exists$: `\enquote{es existiert ein}`{=tex}
-   $\exists!$: `\enquote{es existiert genau ein}`{=tex}
-   $\nexists$: `\enquote{es existiert kein}`{=tex}

## Präzedenz

Sortiert nach stärkster Bindung:

1.  Negation ($\neg$)
2.  Konjunktion ($\land$) und Disjunktion ($\lor$)
3.  Implikation ($\iff$) und Äquivalenz ($\implies$)

## Gesetze

-   Absorption
    -   $X \land w \iff X$
    -   $X \land f \iff f$
    -   $X \lor w \iff w$
    -   $X \lor f \iff X$
-   Assoziativität
    -   $(X \lor Y) \lor Z \iff X \lor (X \lor Z)$
    -   $(X \land Y) \land Z \iff X \land (X \land Z)$
-   Kommutativität
    -   $X \lor Y \iff Y \lor X$
    -   $X \land Y \iff Y \land X$
-   Distributivität
    -   $X \land (Y \lor Z) \iff (X \land Y) \lor (X \land Z)$
    -   $X \lor (Y \land Z) \iff (X \lor Y) \land (X \lor Z)$
-   De Morgansche Regeln
    -   $\neg (X \lor Y) \iff \neg X \land \neg Y$
    -   $\neg (X \land Y) \iff \neg X \lor \neg Y$

# Mengen

::: defi
Eine *Menge* ist eine Zusammenfassung von bestimmten,
wohlunterschiedenen Objekten unserer Anschauung oder unseres Denkens zu
einem Ganzen. Die in einer Menge zusammengefassten Objekte heißen
*Elemente* der Menge.
:::

## Notation

-   Mengen angeben durch Auflisten der Elemente: $\{ 1,2,5,3,4,0 \}$
-   Mengen angeben durch Vorschreiben einer Eigenschaft:
    $\{ x \mid x \text{ ist eine natürliche Zahl kleiner als } 6 \}$
-   $x \in M$ heißt `\enquote{x ist Element von M}`{=tex}
-   $x \notin M$ heißt `\enquote{x ist nicht Element von M}`{=tex}
-   $\{ \}$ und $\emptyset$ bezeichnen die *leere Menge*

## Inklusionsrelationen

-   $M \subset N \iff (x \in M \implies x \in N)$
-   $M = N \iff (M \subset N \land N \subset M)$
-   $M \neq N \iff \neg (M = N) \iff ((\exists x \in M : x \notin N) \lor (\exists x \in N : x \notin M))$
-   $M \subsetneq N \iff (M \subset N \land M \neq N)$

## Zahlenbereiche

$$ \P \subsetneq \N \subsetneq \Z \subsetneq \Q \subsetneq \R \subsetneq \C $$

-   **Natürliche Zahlen**: $\N = \{ 0,1,2,3,4,5,... \}$
-   **Positive natürliche Zahlen**: $\N_{>0} = \{ 1,2,3,4,5,... \}$
-   **Ganze Zahlen**: $\Z = \{ ...,-3,-2,-1,0,1,2,3,... \}$
-   **Rationale Zahlen**:
    $\Q = \{ \frac{p}{q} \mid p,q \in Z, q \neq 0 \}$
-   **Komplexe Zahlen**: $\C = 42$ TODO
-   **Primzahlen**: Menge der natürlichen Zahlen $p$, die genau zwei
    positive Teiler, nämlich $1$ und $p$, haben

## Operationen von Mengen

-   $M \cap N = \{ x \mid x \in M \land x \in N \}$ heißt der
    **Durchschnitt** von $M$ und $N$
-   $M \cup N = \{ x \mid x \in M \lor x \in N \}$ heißt die
    **Vereinigung** von $M$ und $N$
-   $M \setminus N = \{ x \mid x \in M \land x \notin N \}$ heißt die
    **Differenzmenge** von $M$ und $N$
-   $M \times N = \{ (x, y) \mid x \in M \land y \in N \}$ heißt das
    **kartesische Produkt** von $M$ und $N$. Dabei ist $(x, y)$ ein
    **geordnetes Paar (Tupel)**, und für zwei geordnete Paare
    $(x, y), (u, v) \in M \times N$ gilt:
    $$(x, y) = (u, v) \iff (x = u \land y = v)$$
-   $M$ und $N$ heißen genau dann **disjunkt**, wenn
    $M \cap N = \emptyset$, d.h. wenn sie kein Element gemeinsam
    besitzen
-   $P = M \cupdot N \iff (P = M \cup N \land M \cap N = \emptyset)$
    beschreibt die **disjunkte Vereinigung**
-   $\bigcap_{i \in I} M_i = \{ x \mid \forall i \in I : x \in M_i \}$
    heißt der **Durchschnitt** der $M_i$
-   $\bigcup_{i \in I} M_i = \{ x \mid \exists i \in I : x \in M_i \}$
    heißt die **Vereinigung** der $M_i$
-   $P = \bigcupdot_{i \in I} M_i \iff (P = \bigcup_{i \in I} M_i \land M_i \cap M_j = \emptyset\ \forall i,j \in I$
    mit $i \neq j)$

::: visu
**Visualisierung im Venn-Diagramm**:

```{=tex}
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
\node at (\intersection/2,-1.5) {$M \cupdot N$};

\end{tikzpicture}
```
:::

::: bsp
**Beispiel** mit den Mengen $I = \{ 1, 2, 3 \}$, $M_1 = \{ a, 1, c \}$,
$M_2 = \{ b, 1, e \}$ und $M_3 = \{ d, 1, f \}$:
$$\bigcap_{i \in I} = \{ 1 \} \text { und } \bigcup_{i \in I} = \{ 1, a, b, c, d, e, f \}$$
:::

## Spezielle Mengen

### Komplementärmenge

Für eine Teilmenge $M$ einer Menge $N$ ist
$\overline{M} = N \setminus M$.

::: visu
**Visualisierung**:

```{=tex}
\begin{center}\begin{tikzpicture}[thick, set/.style = {circle, minimum size = 4cm, fill=gray!30}]

% Set N
\node[set,fill=orange!50,label={45:$N$}] (N) at (0,0) {};

% Set M
\node[set,minimum size=2cm,label={135:$M$}] (M) at (0,0) {};

% Circles outline
\draw (0,0) circle(2cm);
\draw (0,0) circle(1cm);

% Set intersection label
\node at (0,-2.5) {$\overline{M} = N \setminus M$};

\end{tikzpicture}\end{center}
```
:::

### Potenzmenge

Für eine Menge $M$ ist die Potenzmenge
$\pot(M) = \{ A \mid A \subset M \}$.

::: visu
**Visualisierung**:

```{=tex}
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
```
:::

Außerdem gilt mit der endlichen Menge $M$: $|\pot(M)| = 2^{|M|}$

::: bsp
**Beispiel** mit der Menge $M = \{1,2,3\}$:
$$\pot(M) = \{\emptyset, \{1\},\{2\},\{3\},\{1,2\},\{1,3\},\{2,3\},\{1,2,3\}\}$$
sowie $$|\pot(M)| = 8 = 2^{3} = 2^{|M|}$$
:::

## Gesetze

-   Assoziativität
    -   $(M \cup N) \cup P = M \cup (N \cup P)$
    -   $(M \cap N) \cap P = M \cap (N \cap P)$
-   Kommutativität
    -   $M \cup N = N \cup M$
    -   $M \cap N = N \cap M$
-   Distributivität
    -   $M \cap (N \cup P) = (M \cap N) \cup (M \cap P)$
    -   $M \cup (N \cap P) = (M \cup N) \cap (M \cup P)$
-   Identität
    -   $M \cup \emptyset = M$
    -   $M \subset N \implies M \cap N = M$
-   Komplement
    -   $M \subset N \implies M \cup (N \setminus M) = N$
    -   $M \subset N \implies M \cap (N \setminus M) = \emptyset$
-   De Morgansche Regeln
    -   $M \setminus \bigcup_{i \in I} M_i = \bigcap_{i \in I} M \setminus M_i$
    -   $M \setminus \bigcap_{i \in I} M_i = \bigcup_{i \in I} M \setminus M_i$

# Abbildungen

::: defi
Es seien $M$ und $N$ zwei Mengen. Eine **Abbildung** oder **Funktion**
$f$ von $M$ nach $N$ ist eine *eindeutige Zuordnung*, die $jedem$
Element $x \in M$ *genau ein* Element $f(x) \in N$ zuweist. Man
verwendet den Begriff Funktion nur dann, wenn $N = \R$ ist.
:::

Man nennt $M$ den **Definitionsbereich** von $f$ und $N$ den **Ziel-**
oder **Wertebereich**.

*Notation*: $$f: M \to N,\ x \mapsto f(x)$$ Für zwei Abbildungen
$f: M \to N$ und $g: X \to Y$ gilt:
$$f = g \iff (M = X \land N = Y \land \forall x \in M : f(x) = g(x))$$

## Legitime Abbildungen

::: visu
**Visualisierung**:

```{=tex}
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
```
:::

## Illegitime Abbildungen

::: visu
**Visualisierung**:

```{=tex}
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
```
:::

## Rechenregeln

Mit den Abbildungen/Funktionen $f: U\to\R$, $g: V\to\R$ und $c\in\R$
gilt:
`\begin{gather*} c \cdot f: U\to\R \to \R: x \mapsto c \cdot f(x) \\ f + g: U \cap V \to \R: x \mapsto f(x) + g(x) \\ f - g: U \cap V \to \R: x \mapsto f(x) - g(x) \\ f \cdot g: U \cap V \to \R: x \mapsto f(x) \cdot g(x) \\ \end{gather*}`{=tex}
Falls außerdem $\forall x \in U \cap V: g(x) \neq 0$:
$$\frac{f}{g}: U \cap V \to \R: x \mapsto \frac{f(x)}{g(x)}$$

## Selektionen

### Einschränkung

Mit der Abbildung $f: M \to N$ und $A \subset M$, ist
$$f_{\vert A}: A \to N,\ x \mapsto f(x)$$ die **Einschränkung** von $f$
auf $A$.

::: bsp
**Beispiel** mit $A = \{ b,c \}$:

```{=tex}
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
```
:::

### Identität

Mit der Menge $M$ ist die Abbildung
$$\text{id}_M : M \to M,\ x \mapsto x$$ die **Identität** auf $M$.

::: bsp
**Beispiel** mit $M = \{ 1,2,3 \}$:

```{=tex}
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
```
:::

### Graph

Mit der Abbildung $f: M \to N$ ist
$$\text{Graph}(f) = \{ (x, f(x)) \mid x \in M \} \subset M \times N$$
der **Graph** von $f$.

::: bsp
**Beispiel** mit Abbildung $f: \R\to\R,\ x \mapsto x^2$:

```{=html}
<!-- prettier-ignore -->
```
```{=tex}
\begin{center}\begin{tikzpicture}
\begin{axis}[axis lines = center]
\addplot[domain=-5:5,color=red]{x*x};
\end{axis}
\end{tikzpicture}\end{center}
```
:::

-   Für zwei Abbildungen $f: M \to N$ und $g: P \to N$ gilt:
    $$f = g \iff \text{Graph}(f) = \text{Graph}(g)$$
-   Ist $\Gamma \subset M \times N$ so, dass
    $$\forall x \in M\ \exists!\ y \in N: (x,y) \in \Gamma,$$ dann gibt
    es eine Abbildung $f: M \to N$ mit $\Gamma = \text{Graph}(f)$

### Bild

Mit der Abbildung $f: M \to N$ und $A \subset M$ ist
$$f(A) = \{ f(x) \mid x \in A \} \subset N$$ das **Bild** von $A$
*unter* $f$.

::: bsp
**Beispiel** mit $f: \R\to\R,\ x \mapsto x^2$ und
$A = \{ -2,-1,0,1,2 \} \subset M$: $$f(A) = \{ 0,1,4 \}$$
:::

$\text{im}(f) = f(M) \subset N$ heißt das **Bild** von $f$.
Umgangssprachlich bezeichnet das die Menge des getroffenen Zielbereichs.

::: bsp
Mit vorigem **Beispiel**: $\text{im}(f) = \{ x\in\R \mid x \geq 0 \}$.
:::

### Urbild

Mit der Abbildung $f: M \to N$ und $B \subset N$ ist
$$f^{-1}(B) = \{ x \in M \mid f(x) \in B \} \subset M$$ das **Urbild**
von $B$ unter $f$.

::: bsp
**Beispiel** mit $f: \R\to\R,\ x \mapsto x^2$ und
$B = \{ 0, 1, 4 \} \subset N$: $$f^{-1}(B) = \{ -2,-1,0,1,2 \}$$
:::

Ist $y \in N$ und $x \in M$ mit $f(x) = y$, so nennt man $x$ **ein
Urbild** von $y$ unter $f$.

## Nachfolgerfunktion

Die Abbildung $$\text{nf}: \N\to\N,\ x \mapsto x + 1$$ nennt man
**Nachfolgerfunktion**. Es gilt
$$\text{im}(\text{nf}) = \N \setminus \{ 0 \}$$ und
$$\forall y \in \text{im}(f): \text{nf}^{-1}(\{ y \}) = \{ y - 1 \}$$

## Eindeutigkeiten

### Injektivität (linkseindeutig)

Mit Abbildung $f: M \to N$:

$$f \text{ ist injektiv} \iff \forall x,x' \in M: f(x) = f(x') \implies x = x'$$
oder
$$f \text{ ist injektiv} \iff \text{jedes } y \in N \text{ hat höchstens ein Urbild}$$
oder $$f \text{ ist injektiv} \iff f \text{ ist linksinvertierbar}$$

Es gilt: Bei injektivem $f$ gibt es eine oder keine Lösungen für
$f(x) = y$.

::: visu
**Visualisierung**:

```{=tex}
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
```
:::

### Surjektivität (rechtstotal)

Mit Abbildung $f: M \to N$:

$$f \text{ ist surjektiv} \iff \forall y \in N\ \exists x \in M: f(x) = y$$
oder $$f \text{ ist surjektiv} \iff \text{im}(f) = N$$ oder
$$f \text{ ist surjektiv} \iff \text{jedes } y \in N \text{ hat mindestens ein Urbild}$$
oder $$f \text{ ist surjektiv} \iff f \text{ ist rechtsinvertierbar}$$

Es gilt: Bei surjektivem $f$ gibt es eine oder mehrere Lösungen für
$f(x) = y$.

::: visu
**Visualisierung**:

```{=tex}
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
```
:::

### Bijektivität (eineindeutig)

Mit Abbildung $f: M \to N$:

$$f \text{ ist bijektiv} \iff f \text{ ist injektiv und surjektiv}$$
oder
$$f \text{ ist bijektiv} \iff g: N \to M \text{ existiert}: (g \circ f = \text{id}_M) \land (f \circ g = \text{id}_N)$$
oder
$$f \text{ ist bijektiv} \iff \text{jedes } y \in N \text{ hat genau ein Urbild}$$
oder $$f \text{ ist bijektiv} \iff f \text{ ist invertierbar}$$

Es gilt: Bei bijektivem $f$ gibt es genau eine Lösung für $f(x) = y$.

::: visu
**Visualisierung**:

```{=tex}
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
```
:::

## Komposition

Mit den Abbildungen $f: M \to N$ und $g: N \to P$, ist
$$g \circ f: M \to P,\ x \mapsto g(f(x))$$ die **Komposition** oder
**Verkettung** von $f$ und $g$.

::: bsp
**Beispiel**:

```{=tex}
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
```
```{=tex}
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
```
:::

### Assoziativität

Mit den Abbildungen $f: M \to N$, $g: N \to P$ und $h: P \to Q$ gilt:
$$(h \circ g) \circ f = h \circ (g \circ f),$$ weshalb man auch kurz
$h \circ g \circ f$ schreibt.

### Eindeutigkeiten unter Komposition

Mit den Abbildungen $f: M \to N$ und $g: N \to P$ gilt:

-   Sind $f$ und $g$ injektiv, so ist $g \circ f$ injektiv.
-   Sind $f$ und $g$ surjektiv, so ist $g \circ f$ surjektiv.
-   Sind $f$ und $g$ bijektiv, so ist $g \circ f$ bijektiv.

# Vollständige Induktion

::: defi
Sei $\mathcal{A}(n)$ eine Aussageform mit zulässigen Werten $n\in\N$.
Falls $\mathcal{A}(0)$ wahr ist und
$\mathcal{A}(n) \implies \mathcal{A}(n+1)$ wahr ist, so ist
$\mathcal{A}(n)$ wahr für alle $n\in\N$.
:::

-   `\enquote{$\mathcal{A}(0)$ wahr}`{=tex} nennt man den
    *Induktionsanfang*
-   `\enquote{$\mathcal{A}(n)$ wird als wahr vorausgesetzt}`{=tex} nennt
    man die *Induktionsvoraussetzung*
-   `\enquote{$\mathcal{A}(n) \implies \mathcal{A}(n + 1)$}`{=tex} nennt
    man den *Induktionsschluss*

# Mächtigkeit von Mengen

::: defi
-   Eine Menge $M$ ist **endlich**, wenn sie nur endlich viele Elemente
    enthält. In diesem Fall bezeichnet man mit $\#M = |M|$ die Anzahl an
    Elementen in $M$ und nennt die Zahl die
    **Mächtigkeit**/**Kardinalität** von $M$. Enthält $M$ unendlich
    viele Elemente, so nennt man $M$ **unendlich** und setzt
    $\#M = |M| = \infty$.
-   Zwei Mengen $M$ und $N$ heißen **gleichmächtig**, wenn es eine
    bijektive Abbildung $f: M \to N$ gibt.
-   Eine Menge heißt **abzählbar unendlich**, wenn sie gleichmächtig zu
    $\N$ ist.
-   Eine Menge heißt **überabzählbar**, wenn sie weder endlich noch
    abzählbar unendlich ist.
-   Für $m,n\in\Z$ bezeichnet man mit
    $$\{ m,...,n \} = \{ k\in\Z \mid m \leq k \leq n \}$$ die Menge der
    ganzen Zahlen zwischen $m$ und $n$.
:::

## Eigenschaften endlicher Mengen

-   Ist eine Menge endlich und enthält genau $n$ Elemente, so kann man
    die Elemente in $M$ mit $x_1,x_2,x_3,...,x_n$ abzählen und man
    erhält eine bijektive Abbildung
    $$f: \{ 1,...,n \} \to M: i \mapsto x_i.$$ Umgekehrt erlaubt eine
    solche Abbildung, die Elemente von $M$ abzuzählen und man erhält
    $|M| = n$. Damit sieht man, dass eine Menge genau dann endlich von
    Mächtigkeit $n$ ist, wenn es eine Bijektion von $\{ 1,...n \}$ nach
    $M$ gibt.
-   Ist die Menge $M$ endlich und $A \subset M$, so ist auch $A$ endlich
    und $|A| \leq |M|$.
-   Ist $M = A \cupdot B$ eine endliche Menge, so gilt
    $|M| = |A| + |B|$.

**Zusammenhang zwischen Mächtigkeit und Abbildung**:

Mit den nicht-leeren endlichen Mengen $M$ und $N$ gilt:

-   $|M| \leq |N| \iff$ eine injektive Abbildung $f: M \to N$ existiert
-   $|M| \geq |N| \iff$ eine surjektive Abbildung $f: M \to N$ existiert
-   $|M| = |N| \iff$ eine bijektive Abbildung $f: M \to N$ existiert

## Schubfachprinzip

Aus dem Zusammenhang zwischen Mächtigkeit und Abbildung folgt
$$f: M \to N \text{ ist eine Abbildung und } |M| > |N| \implies f \text{ ist nicht injektiv}.$$
Diese Kontraposition nennt man auch das **Schubfachprinzip**.
Umgangssprachlich heißt das: Wenn man $m > n$ Gegenstände auf $n$
Schubfächer verteilen möchte, dann muss man in mindestens ein Schubfach
zwei legen.

::: bsp
**Beispiel** des Versuchs einer Konstruktion einer injektiven Abbildung
trotz $|M| > |N|$ mit $M = \{ 1,2,3,4 \}$ und $N = \{ a,b,c \}$:

```{=tex}
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
```
:::

# Äquivalenzrelationen

::: defi
Mit den Mengen $M$ und $N$, ist jede Teilmenge $R \subset M \times N$
eine **Relation** zwischen $M$ und $N$. Für $x \in M$ und $y \in N$
schreibt man auch $xRy$ statt $(x,y) \in R$, wenn $x$ in Relation zu $y$
bezüglich $R$ steht.
:::

Für die Äquivalenzrelation $R$ auf die Menge $M$ gilt die Notation:
$$x \sim y \iff (x,y) \in R.$$

## Axiome

1.  *Reflexivität*: $x \sim x$
2.  *Symmetrie*: $x \sim y \implies y \sim x$
3.  *Transitivität*: $x \sim y \land y \sim z \implies x \sim z$

::: bsp
**Beispiel** einer abstrakten Alltagssituation: In einer Schule werden
SchülerInnen klassisch in Schulklassen unterteilt. Übertragen sind die
Axiome dann für die Schüler Alfred, Ben und Christoph:

1.  Alfred gehört zu einer Schulklasse: Er ist in derselben Schulklasse
    wie er selbst.
2.  Wenn Alfred in derselben Schulklasse ist wie Ben, dann ist Ben auch
    in derselben Schulklasse wie Alfred.
3.  Wenn Alfred in derselben Schulklasse ist wie Ben und wenn zugleich
    Ben in derselben Schulklasse ist wie Christoph, dann ist auch Alfred
    in derselben Schulklasse wie Christoph.

In diesem Fall ist dann die Relation
`\enquote{SchülerIn $x$ ist in derselben Schulklasse wie SchülerIn $y$}`{=tex}
die *Äquivalenzrelation*, die SchülerInnen derselben Schulklasse
*äquivalent* und die Schulklassen die *Äquivalenzklassen*.
:::

**Visualisierung** zu vorigem Beispiel (wunderschön):

```{=tex}
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

\draw (153,153) node [anchor=north west][inner sep=0.75pt] [align=left] {Antonia};
\draw (84,207) node [anchor=north west][inner sep=0.75pt] [align=left] {Benny};
\draw (187,245) node [anchor=north west][inner sep=0.75pt] [align=left] {Christoph};
\draw (440,230) node [anchor=north west][inner sep=0.75pt] [align=left] {Anne};
\draw (371,284) node [anchor=north west][inner sep=0.75pt] [align=left] {Freddi};
\draw (474,322) node [anchor=north west][inner sep=0.75pt] [align=left] {Dominik};
\draw (360,105) node [anchor=north west][inner sep=0.75pt] [align=left] {Lars};
\draw (150,52) node [anchor=north west][inner sep=0.75pt] [align=left] {\textbf{\underline{Alle SchülerInnen}}};
\draw (232,158) node [anchor=north west][inner sep=0.75pt] [font=\normalsize,color={rgb, 255:red, 0; green, 0; blue, 0 } ,opacity=1 ] [align=left] {\textbf{\underline{Klasse 1}}};
\draw (350,40) node [anchor=north west][inner sep=0.75pt] [align=left] {\textbf{\underline{Klasse 2}}};
\draw (511.17,240) node [anchor=north west][inner sep=0.75pt] [align=left] {\textbf{\underline{Klasse 3}}};
\end{tikzpicture}\end{center}
```
## Äquivalenzklassen

Mit der Menge $M$ und der Äquivalenzrelation $\sim$ auf $M$, heißt für
$x \in M$ die Menge $$[x] = \{ y \in M \mid y \sim x \}$$ die
**Äquivalenzklasse** von $x$. Jedes $y \in [x]$ heißt ein
**Repräsentant** der Klasse $[x]$.

::: bsp
Mit dem vorigen **Beispiel** gilt:
$$[\text{Alfred}] = \{ \text{Alfred, Ben, Christoph} \},$$ sowie
$$[\text{Alfred}] = [\text{Ben}] = [\text{Christoph}].$$
:::

------------------------------------------------------------------------

Mit $$M/{\sim} = \{ [x] \mid x \in M \}$$ bezeichnet man die Menge der
**Äquivalenzklassen modulo der Äquivalenzrelation** $\sim$.

::: bsp
Mit dem vorigen **Beispiel** gilt:
$$M/{\sim} = \{ [\text{Alfred}], [\text{Ben}], [\text{Christoph}], [\text{Philipp}], [\text{Anne}], [\text{Dominik}], [\text{Freddi}] \}.$$
:::

## Disjunkte Zerlegung

Ist $(M_i)_{i \in I}$ eine disjunkte Zerlegung der Menge $M$ und die
Relation auf $M$ $$x \sim y \iff \exists i \in I : x,y \in M_i,$$ dann
ist $\sim$ eine Äquivalenzrelation auf $M$.

------------------------------------------------------------------------

Ist $\sim$ eine Äquivalenzrelation auf der Menge $M$, dann bilden die
Äquivalenzklassen eine disjunkte Zerlegung von $M$, d.h. jedes $x \in M$
liegt in genau einer Äquivalenzklasse. Insbesondere gilt für
Äquivalenzklassen $[x]$ und $[y]$ entweder $[x] = [y]$ oder
$[x] \cap [y] = \emptyset$.

::: bsp
Voriges **Beispiel** der Schulklassen ist hilfreich um zu sehen, dass
kein Repräsentant in zwei Äquivalenzklassen gleichzeitig sein kann und
damit eine disjunkte Zerlegung der SchülerInnen vorliegen muss.
:::

## Kongruenz modulo $n$

Mit $n\in\Z_{>0}$ und $a,b\in\Z$ wird die Äquivalenzrelation $\equiv$
definiert: $$a \equiv b \pmod{n} \iff n \mid a - b$$ Das heißt, die
Reste der ganzzahligen Division von $a$ mit $n$, sowie von $b$ mit $n$,
müssen gleich sein. Zwei äquivalente Zahlen $a$ und $b$ werden dann auch
**kongruent modulo $n$** genannt.

::: bsp
**Beispiel** mit $5 \equiv 11 \pmod{3}$:

Die Aussage ist wahr, da $\frac{5}{3} = 1 \text{ Rest } 2$ und
$\frac{11}{3} = 3 \text{ Rest } 2$ die gleichen Reste besitzen bzw. auch
$3 \mid (11 - 5) = 3 \mid 6$ wahr ist.
:::

Man bezeichnet die Äquivalenzklasse von $a\in\Z$ mit
$$[a] = \{ a+kn \mid k\in\Z \} = \{ b\in\Z \mid a \equiv b \pmod{n} \}$$
Die Menge der Äquivalenzklassen ist $$\Z/n\Z = \{ [a] \mid a\in\Z \}$$
und es gilt $|\Z/n\Z| = n$.

### Teilbarkeit in Kongruenz

Mit $a\in\Z$ und $n > 1$ ist die Kongruenz $$ax \equiv b \pmod{n}$$
genau dann für alle $b\in\Z$ lösbar, wenn $\mathrm{ggT}(a,n) = 1$ gilt,
also wenn $$ax \equiv 1 \pmod{n}$$ lösbar ist.

::: bsp
**Beispiel** mit $n=27$ und $a=5$: Es gilt $\mathrm{ggT}(5,27) = 1$.
Dann ist $$5 \cdot z \equiv b \pmod{27}$$ lösbar für jedes $b\in\Z$. Es
gilt $$5 \cdot 11 \equiv 1 \pmod{27}$$ und allgemein für
$z = 11 \cdot b$:
$$5 \cdot (11 \cdot b) \equiv (5 \cdot 11) \cdot b \equiv b \pmod{27}.$$
:::

Als direkte Konsequenz gilt dann: Mit $a\in\Z$, $n>1$ und
$[a] \in\Z/n\Z$ gilt
$$[a] \text{ ist invertierbar in } \Z/n\Z\quad\iff\quad\mathrm{ggT}(a,n) = 1$$

Jene invertierbaren Restklassen in $\Z/n\Z$ bezeichnet man dann als
**prime Restklassen** modulo $n$ und die Menge der Restklassen (modulo
$n$) als **prime Restklassengruppe** $(\Z/n\Z)^*$) (modulo $n$).
Außerdem wird die **Euler'sche $\varphi$-Funktion** für $n\in\N$
definiert durch
$$\varphi(n) := \begin{cases}1, &\text{wenn } n=1\\\#(\Z/n\Z)^*, &\text{wenn } n>1\end{cases}$$
wobei
$$\#(\Z/n\Z)^* = \#\{i\in\N \mid i < n \text{ und } \mathrm{ggT}(i,n) = 1 \}.$$

::: bsp
**Beispiel**: $$\varphi(p) = p - 1\quad\text{für } p\in\P$$
$$\varphi(12) = 4 \text{ und } (\Z/n\Z)* = \{ 1,5,7,11 \}$$
:::

# Primzahlen

::: defi
-   Zu jeder Zahl $a\in\Z$ und $b\in\N_{>0}$ gibt es eindeutig bestimmte
    Zahlen $q,r\in\Z$ mit $$a = qb + r,\quad 0 \leq r < b.$$ Dabei ist
    $q$ der **Quotient** und $r$ der **Rest der Division** von $a$ und
    $b$.
-   Für eine Primzahl $p\in\P$ gilt mit $a,b\in\Z$:
    $$p \mid a \cdot b \implies p \mid a \lor p \mid b.$$
-   Die Menge $\P$ der Primzahlen ist unendlich.
:::

## Fundamentalsatz der Arithmetik

Jedes $n\in\N \setminus \{0;1\}$ hat eine eindeutige Zerlegung
$$n=p_1^{v_1} \cdot p_2^{v_2} \cdot ... \cdot p_r^{v_r}$$ mit Primzahlen
$p_1 < p_2 < ... < p_r$ und $v_1, ..., v_r \in \N_{>0}$. Diese Zerlegung
nennt man die **Primfaktorzerlegung** von $n$.

TODO: Erathostenes, ggT, euklidischer Algorithmus

# Gruppen

::: defi
Eine **Gruppe** ist ein Paar $(G,*)$ bestehend aus einer *nicht-leeren*
Menge $G$ und einer zweistelligen Operation `\enquote{$*$}`{=tex}, d.h.
einer Abbildung $$*: G \times G \to G: (g,h) \mapsto g * h,$$ sodass
folgende *Gruppenaxiome* gelten:

1.  *Assoziativgesetz*: $(g * h) * k = g * (h * k)\ \forall g,h,k \in G$
2.  *Existenz eines Neutralen*:
    $\exists e \in G: \forall g \in G: e * g = g$
3.  *Existenz von Inversen*:
    $\forall g \in G: \exists g^{-1} \in G: g^{-1} * g = e$

Eine Gruppe $(G,*)$ heißt **abelsch** oder **kummutativ**, wenn $(G,*)$
zudem noch dem folgenden Axiom genügt:

4.  *Kommutativgesetz*: $g * h = h * g\ \forall g,h \in G$
:::

## Eigenschaften

-   Aufgrund der Axiome erhält man folgende Eigenschaften für eine
    Gruppe $(G,*)$:

    -   Das neutrale Element $e \in G$ ist eindeutig bestimmt und hat
        die Eigenschaft $$e * g = g * e = g\quad\forall g \in G$$
    -   Mit $g \in G$ ist das inverse Element $g^{-1}$ zu $g$ eindeutig
        bestimmt und hat die Eigenschaft $$g^{-1} * g = g * g^{-1} = e$$
    -   Für $g,h \in G$ gelten $(g^{-1})^{-1} = g$ und
        $(g * h)^{-1} = h^{-1} * g^{-1}$

-   Häufig wird `\enquote{$*$}`{=tex} die **Gruppenmultiplikation**
    genannt.

-   Ist $(G,*)$ eine Gruppe mit endlich vielen Elementen $n\in\N$, so
    bezeichnet man mit $\#G = |G| = n$ die **Ordnung** der Gruppe.

## Kürzungsregeln

Für die Gruppe $(G,*)$ gilt mit $g,a,b \in G$:

-   $g * a = g * b \implies a = b$
-   $a * g = b * g \implies a = b$

## Multiplikative Gruppe

Wird die Gruppenoperation als Multiplikation und mit
`\enquote{$\cdot$}`{=tex} bezeichnet, so schreibt man

-   für das Neutrale Element $1_G$ bzw. 1
-   für das Inverse zu $g$ $g^{-1}$ oder $\frac{1}{g}$
-   häufig das Multiplikationszeichen nicht, wenn die Bedeutung klar
    ersichtlich ist (z.B. $gh$ statt $g \cdot h$)
-   für das Produkt von $g1,...,g_n \in G$
    $$\prod_{i=1}^n g_i = g_1 \cdot g_2 \cdot ... \cdot g_n$$

Außerdem gelten normale multiplikative Potenzgesetze. Allerdings gilt
$$(g \cdot h)^n = g^n \cdot h^n$$ **nicht** in nicht-abelschen Gruppen,
da z.B. mit $n = 4$ Kommutativität notwendig ist:

::: bsp
**Beispiel**:
`\begin{splitty}(g \cdot h)^n &= g^n \cdot h^n \\ \implies (g \cdot h)^4 &= g^4 \cdot h^4 \\ \implies (g \cdot h) \cdot (g \cdot h) \cdot (g \cdot h) \cdot (g \cdot h) &= (g \cdot g \cdot g \cdot g) \cdot (h \cdot h \cdot h \cdot h) \\ \implies g \cdot h \cdot g \cdot h \cdot g \cdot h \cdot g \cdot h &= g \cdot g \cdot g \cdot g \cdot h \cdot h \cdot h \cdot h \end{splitty}`{=tex}
:::

## Additive Gruppe

Wird die Gruppenoperation als Addition und mit `\enquote{$+$}`{=tex}
bezeichnet, so schreibt man

-   für das Neutrale Element meist $0_G$ bzw. 0
-   für das Inverse zu $g$ meist $-g$ und meist $g - h$ statt $g + (-h)$
-   für die Summe von $g1,...,g_n \in G$
    $$\sum_{i=1}^n g_i = g_1 + g_2 + ... + g_n$$

Außerdem gelten normale additive Rechenregeln. Insbesondere muss man bei
Rechnungen aufpassen, die je nach Variablen unterschiedliche Operationen
mit gleichem Symbol nutzen. **Beispiel** mit $g,h \in G$ und
$m,n \in \Z$:

-   $\underbrace{(m + n)}_{\text{Add. in } \Z}g = \underbrace{mg + ng}_{\text{Add. in } G}$
-   $n \cdot \underbrace{(m + n)}_{\text{Add. in } G} = \underbrace{ng + nh}_{\text{Add. in } G}$
-   $0_\Z \cdot g = 0_G$
-   $n \cdot 0_G = 0_G$

## Permutationsgruppe

Eine **Permutation** ist eine bijektive Abbildung einer endlichen Menge
auf sich selbst. Für ein $n\in\N$ verwendet man im Allgemeinen die Menge
$\{ 1,...,n \}$ und schreibt die Permutation
$$\begin{split}\sigma:\quad\{1,...,n\}\quad &\to \quad \{1,...,n\}\\\quad i \quad &\mapsto \quad \sigma(i)\end{split}$$
als Tabelle
$$\sigma = \begin{pmatrix}1&2&...&n\\\sigma(1)&\sigma(2)&...&\sigma(n)\end{pmatrix}.$$

::: bsp
**Beispiel** mit $n=4$:
$$\sigma = \begin{pmatrix}1&2&3&4\\2&3&1&4\end{pmatrix}$$ Die
Permutation (bijektive Abbildung (!)) ist dann
`\begin{gather*}1\mapsto2\\2\mapsto3\\3\mapsto1\\4\mapsto4\end{gather*}`{=tex}
:::

## Symmetrische Gruppe

Die **Menge aller Permutationen** von $\{1,...,n\}$ wird mit $S_n$
bezeichnet und bildet mit der Komposition "$\circ$" von Abbildungen als
Gruppenoperation ("Gruppenmultiplikation")
`\begin{splitty}\circ:\quad S_n\times S_n &\to S_n\\(\sigma,\tau) &\mapsto \sigma \circ \tau\end{splitty}`{=tex}
eine Gruppe $(S_n, \circ)$ die für $n > 2$ nicht abelsch ist. Diese
Gruppe nennt man die **Permutationsgruppe** oder die **Symmetrische
Gruppe der Ordnung $n$**. Es gilt $S_n = \mathrm{Sym}(\{1,...,n\})$.

Eine Permutation, die nur zwei Elemente vertauscht, heißt
**Transposition** (2-Zykel).

::: bsp
**Beispiel** 1:
$$\sigma = \begin{pmatrix}1&2&3&4&5&6&7\\2&3&1&4&5&7&6\end{pmatrix}\quad\text{Zykelschreibweise: }\sigma = (1,2,3)(4)(5)(6,7) = (1,2,3)(6,7)$$
**Beispiel** 2: $$\sigma = (1,2,3)(6,7) = (1,2)(2,3)(6,7)$$ Dann ist
`\begin{splitty}\sigma(7)&=6\\\sigma(6)&=7\\\sigma(4)&=4\\\sigma(5)&=5\\\sigma(1)&=2\\\sigma(2)&=3\\\sigma(5)&=1\end{splitty}`{=tex}
:::

Hat $\sigma \in S_n$ zwei Zerlegungen in Transpositionen
$\sigma_1,...,\sigma_k\in S_n$ und $\tau_1,...,\tau_l\in S_n$, d.h.
$$\sigma = \sigma_1...\sigma_k=\tau_1...\tau_l,$$ dann gilt
$k\equiv l \pmod{2}$ und man bezeichnet die **Signatur** von $\sigma$
mit
$$\mathrm{sign}(\sigma) = (-1)^{\text{Anzahl von Transpositionen in einer Darstellung von $\sigma$}}.$$
Man nennt eine Permutation $\sigma$ **gerade**, wenn
$\mathrm{sign}(\sigma)=1$ und **ungerade**, wenn
$\mathrm{sign}(\sigma) = -1$ ist.

## Untergruppen

::: defi
Mit der Gruppe $(G,*)$ mit neutralem Element $e \in G$, heißt die
Teilmenge $U \subset G$ **Untergruppe** von $G$, wenn gilt:

1.  $e \in U$
2.  $g,h \in U \implies g * h \in U$
3.  $g \in U \implies g^{-1} \in U$
:::

::: bsp
**Beispiel**: Die Menge der Vielfache einer Zahl $n$, d.h. die Menge
$n\Z = \{ n\cdot k \mid k \in \Z \}$, bildet eine Untergruppe von
$(\Z, +)$.
:::

## Nebenklassen

### Motivation

$\Z = \{ ..., -3, -2, -1, 0, 1, 2, 3, 4, 5, 6, 7, 8, ...\}$, dann ist
$\{...,-3,0,3,6,...\} = 3\Z$ eine Untergruppe von $Z$.
$\{...,-2,1,4,7,...\} = 1+3\Z$ sowie $\{...,-1,2,5,8,...\} = 2+3\Z$ sind
allerdings keine Untergruppen, aber **Nebenklassen**.

### Definition

Mit der Untergruppe $U\subset G$ und $g\in G$, ist die
**Linksnebenklasse** von $g$ bezüglich $U$ in $G$ die Menge
$$g * U = \{ g * u \mid u \in U \}.$$ Die **Menge der
Linksnebenklassen** ist dann $$G/U = \{ g * U \mid g \in G \}.$$ Die
**Rechtsnebenklasse** von $g$ bezüglich $U$ in $G$ ist die Menge
$$U * g = \{ u * g \mid u \in U \}.$$ Die **Menge der
Rechtsnebenklassen** ist analog enstprechend
$$U\backslash G = \{ U * g \mid g \in G \}.$$

------------------------------------------------------------------------

Mit der Untergruppe $U\subset G$ und $g,h \in G$ gilt:

1.  $g * U = h * U \quad\iff\quad h^{-1} * g\quad\in U.$

    **Beispiel**: $1+3\Z = 10 + 3\Z \implies (-10) + 1\quad\in 3\Z.$

2.  Je zwei verschiedene Nebenklassen sind disjunkt.

3.  Die Abbildung $f: U \to g*U$ mit $f(u) = g * u$ ist eine Bijektion.

4.  Die Anzahl der Linksnebenklassen von $U$ in $G$ ist gleich der
    Anzahl der Rechtsnebenklassen von $U$ in $G$. Diese Anzahl heißt
    **Index** $$[G : U] := |G/U| = |U\backslash G|$$ von $U$ in $G$.

### Satz von Lagrange

Mit der Untergruppe $U \subset G$ gilt $$|G| = |U| \cdot [G : U].$$ Es
folgt, dass *die Ordnung einer jeden Untergruppe die Gruppenordnung
teilen muss*.

::: bsp
**Beispiel** bei Primzahlen: Mit $p\in\P$ gilt: Wenn $-1$ ein Quadrat in
$Z/p\Z$ ist, so ist $p-1$ durch $4$ teilbar.

```{=tex}
\begin{proof} Mithilfe des Satz von Lagrange:\\
$\exists i \in \Z/p\Z:\ i^2=-1$. Dann ist $U = \{ 1,-1,i,-i \} \subset (Z/p\Z)^*$ mit $|U| = 4$. Es gilt demnach: $$p-1 = |(\Z/p\Z)^*| = |U| \cdot [(\Z/p\Z)^* : U]$$ und deshalb $4 \mid (p-1)$.
\end{proof}
```
:::

## Zyklische Gruppen

Mit der Gruppe $S \subset G$ ist das **Erzeugnis** von $S$ bzw. die von
$S$ **erzeugte Untergrupppe** definiert mit
$$\braket{S} = \bigcap \{ U \subset G \mid U \text{ ist Untergruppe von } G \text{ mit } S \subset U \}.$$Ist
$S = \{ g_1,g_2,... \}$ gegeben, schreibt man
$$\braket{g_1,g_2,...} = \bigcap \{ U \subset G \mid U \text{ ist Untergruppe von } G \text{, die } g_1, g_2, ... \text{ enthält} \}.$$

Insbesondere für $g\in G$ ist $\braket{g} = \{ g^k \mid k\in\Z \}$ die
von $g$ **erzeugte zyklische Untergruppe**. Die **Ordnung** von $g$ ist
die Ordnung von $\braket{g}$.

Allgemein: Ist $G = \braket{g}$ für ein $g\in G$, dann heißt $G$
zyklisch.

::: bsp
**Beispiel**:

1.  $(\Z, +)$: $\Z = \braket{1} = \{ k \cdot 1 \mid k\in\Z \}$.
2.  $(\Z/n\Z, +)$ ist eine zyklische Gruppe.
3.  $((\Z/5\Z)^*, \cdot) \ni [1]$:
    $\braket{[1]} = \braket{1_{(\Z/5\Z)^*}} = \braket{1} = \{ [1]^k \mid k\in\Z \} = \{ [1^k] \mid k\in\Z \} = \{ [1] \}$.
    $$\braket{[2]} = \{ [2]^0, [2]^1, [2]^2, [2]^3, [2]^4 \}$$
    $$\implies |\braket{[2]}| = 4 \mid (5 - 1) = |(\Z/5\Z)^*|$$
:::

Mit der endlichen Gruppe $G$ und $g\in G$ gilt:
$$|\braket{g}| \mid |G|.$$

Außerdem gilt mit der Gruppe $G$ und $g\in G$: Die Ordnung von $g$ ist
unendlich und die kleinste positive ganze Zahl $k$ mit $g^k = e$, wobei
$e$ das neutrale Element der Gruppe ist. Demnach folgt:

### Kleiner Satz von Fermat

Ist $G$ eine endliche Gruppe, so gilt für alle Elemente $g\in G$:
$$g^{|G|} = e.$$

### Satz von Euler

Mit $n\in \N_{>0}$ und $a \in \{ 1,2,...,n-1 \}$ gilt: Ist $a$
teilerfremd zu $n$, so gilt $$a^{\varphi(n)} \equiv 1 \pmod{n}.$$ Ist
$n = p$ eine Primzahl, so gilt $$a^{p-1} \equiv 1 \pmod{p}.$$

## Klassifikation von zyklischen Gruppen

Mit den Gruppen $G,H$ heißt die Abbildung $f: G\to H$ **Homomorphismus**
(der Gruppen $G$ und $H$), wenn gilt
$$\forall g,g'\in G: f(g *_G g') = f(g) *_H f(g').$$

------------------------------------------------------------------------

Ein **Isomorphismus** ist ein bijektiver Homomorphismus. Wenn es einen
Isomorphismus auf zwei Gruppen $G$ und $H$ gibt, heißen diese
**isomorph** und werden geschrieben als $G \cong H$.

Für eine zyklische Gruppe $G$ gilt:
$$(G,*) \cong (\Z,+)\quad\text{oder}\quad(G,*) \cong (\Z/n\Z, +) \text{ mit } n = |G|.$$

------------------------------------------------------------------------

Ein **Automorphismus** ist ein Isomorphismus einer Gruppe auf sich
selbst. TODO?

# Ringe und Körper

::: defi
Ein **Ring** ist ein Tripel $(R,+,\cdot)$ bestehend aus einer Menge $R$
zusammen mit zwei zweistellgen Operationen
$$+: R\times R \to R: (g,h) \mapsto g+h\quad \text{\enquote{Addition}}$$
und
$$\cdot: R\times R \to R: (g,h) \mapsto g\cdot h\quad \text{\enquote{Multiplikation}}$$
sodass folgende Axiome erfüllt sind:

1.  $(R,+)$ ist eine abelsche Gruppe mit neutralem Element $0_R$.
2.  $R$ zusammen mit der Multiplikation `\enquote{$\cdot$}`{=tex}
    erfüllt die Axiome
    a.  *Assoziativgesetz*:
        $(g\cdot h) \cdot k = g \cdot (h \cdot k)\quad\forall g,h,k \in R$
    b.  *Existenz eines Neutralen*:
        $\exists 1_R \in R: \forall g\in R: 1_R \cdot g = g$
3.  *Zwei Distributivgesetze*: $\forall g,h,k \in R:$
    a.  $(g+h) \cdot k = g\cdot k + h\cdot k$
    b.  $g \cdot (h+k) = g\cdot h + g\cdot k$
4.  $0_R \neq 1_R$

Ein Ring $(R,+,\cdot)$ heißt **kommutativ**, wenn zudem noch die
Multiplikation dem folgenden Axiom genügt:

5.  *Kommutativgesetz*: $g\cdot h = h \cdot g\quad\forall g,h\in R$

Ein kommutativer Ring $(R,+,\cdot)$ heißt **Körper**, falls zusätzlich
gilt

6.  $(R\setminus \{0_R\},\cdot)$ eine abelsche Gruppe mit $1_R$
:::

TODO: Unterschied Ring Körper 9.3

::: bsp
**Beispiele**:

-   $\Z/n\Z$ ist ein kommutativer Ring.
-   $\Z/p\Z$ ist ein Körper für $p\in\P$.
:::

## Rechenregeln

Mit Körper $K$, $x,y,z \in K$ und $u,v \in K \setminus \{ 0 \}$ gilt:

-   $-(-x) = x$
-   $x + y = z \iff x = z - y$
-   $-(x + y) = -x -y$
-   $0 \cdot x = x \cdot 0 = 0$
-   $(-x) \cdot y = x \cdot (-y) = -(x \cdot y)$
-   $(-x) \cdot (-y) = x \cdot y$
-   $x \cdot (y - z) = x \cdot y - x \cdot z$
-   $(x^{-1})^{-1} = x, \text{ für } x \neq 0$
-   $x \cdot y = 0 \iff x = y \text{ oder } y = 0$
-   $z \cdot x = z \cdot y,\ z \neq 0 \implies x = y$
-   $\frac{x}{u} \cdot \frac{y}{v} = \frac{x \cdot y}{u \cdot v}$
-   $\frac{x}{u} + \frac{y}{v} = \frac{x \cdot v + y \cdot u}{u \cdot v}$

## Unterringe

Sei $(R,+,\cdot)$ ein Ring und $S \subset R$. Dann ist $(S,+,\cdot)$ ein
**Unterring**, wenn folgende Unterringkriterien erfüllt sind:

1.  $(S,+)$ ist eine Untergruppe von $(R,+)$.
2.  $1_R \in S$.
3.  $g,h \in S \implies g\cdot h \in S$.

## Unterkörper/Teilkörper

Sei $(K,+,\cdot)$ ein Körper und $L\subset K$. Dann ist $L$ ein
**Teilkörper**/**Unterkörper**, von $K$, wenn folgende Bedingungen
erfüllt sind:

1.  $g,h \in L \implies g+h,g\cdot h \in L$.
2.  $0,1 \in L$.
3.  $g\in L \implies -g \in L$.
4.  $g\in L, g\neq 0 \implies g^{-1} \in L$.

## Chinesischer Restsatz

### Ziel

Sei $m,n\geq 1$ und $a,b\in\Z$. Finde $x\in\Z$: $$x \equiv a \pmod{n}$$
$$x \equiv b \pmod{m}$$

::: bsp
**Beispiele**: $$x \equiv 4 \pmod{7}$$ $$x \equiv 2 \pmod{6}$$

**Schreibe**:
$x = 4 \cdot ?_1 + 2 \cdot ?_2 \equiv 4 \cdot 1 + 2 \cdot 0 \pmod{4} \equiv 4 \cdot 0 + 2 \cdot 1 \pmod{6}$

**Demnach**:

Für $?_1$ finde
$k\in\Z: 6\cdot k \equiv 1 \pmod{7} \implies 6^{-1} = 6$.

Für $?_2$ finde
$k\in\Z: 7\cdot l \equiv 1 \pmod{6} \implies 7^{-1} = 1$.
:::

### Definition

Seien $m_1,...,m_r > 1$ paarweise teilerfremde Zahlen, $r>1$ und
$a_1,...,a_r \in \Z$ beliebig. Dann existiert ein $x\in\Z$ mit
$$x \equiv a_1 \pmod{m_i}\quad\forall i = 1,...,r$$ und je zwei Lösungen
$x,x'$ dieser Kongruenzen erfüllen
$$x \equiv x' \pmod{m},\quad m := \prod_{i=1}^r m_i.$$

```{=tex}
\begin{proof} Zunächst wird die \textit{Existenz} bewiesen. Es sei $n_i := \frac{m}{m_i} = m_1 \cdot ... \cdot m_{i-1} \cdot m_{i+1} \cdot ... \cdot m_r$. Dann ist $\mathrm{ggT}(m_i,n_i) = 1$ und nach 8.19 existiert $n_i^*$, sodass $[n_i^*] := [n_i]^{-1} \in \Z/m_i\Z$ ist, d.h. $n_i^* \cdot n_i \equiv 1 \pmod{m_i}$. Wenn nun $x := a_1n_1n_1^* + a_2n_2n_2^* + ... + a_rn_rn_r*$, gilt nach Konstruktion $m_i \mid n_j$ für $i\neq j$ und damit $a_jn_jn_j^* \equiv 0 \pmod{m_i}$ und daher $$x \equiv a_in_in_i^* \pmod{m_i} \equiv a_i \pmod{m_i}.$$
Um die \textit{Eindeutigkeit} zu zeigen, seien $x, x'$ Lösungen der Kongruenzen (9.1). Dann gilt $x \equiv x' \pmod{m_i}$ für alle $i=1,...,r$ und daher auch $m_i \mid (x-x')$. Da dies für alle $i$ erfüllt ist, gilt auch $m \mid x$, woraus die Behauptung bewiesen ist.
\end{proof}
```
::: bsp
**Beispiel**: $$x \equiv 6 \pmod{30}$$ $$x \equiv 2 \pmod{7}$$ Anwendung
des chinesischen Restsatzes: Setze $m_1 = \frac{m_1m_2}{m_1} = m_2 = 7$
und $m_2 = \frac{m_1m_2}{m_2} = m_1 = 30$.

-   Bestimme Inverse von $n_1$ und $n_2$:
    `\begin{splitty}30 &= 4\cdot 7 + 2\\7 &= 3 \cdot 2 + 1\\2 &= 2 \cdot 1 + 0\end{splitty}`{=tex}
    und Rückeinsetzen:
    `\begin{splitty}1 &= 7 - 3 \cdot 2\\&= 7 - 3 \cdot (30 - 4 \cdot 7)\\&= 13 \cdot 7 - 3 \cdot 30\end{splitty}`{=tex}
    Also $13 \cdot 7 \equiv 1 \pmod{30}$.
-   Lösung:
    $$x = a_1n_1n_1^* + a_2n_2n_2^* = a_1 \cdot 7 \cdot 13 + a_2 \cdot 30 \cdot 4 = 6 \cdot 7 \cdot 13 + 2 \cdot 4 \cdot 30.$$
    Demnach: $$x \equiv 156 \pmod{210},$$ d.h. der nächste Vollmond am
    Sonntag ist in $156$ Tagen und wiederholt sich dann alle $210$ Tage.
:::

# Körper der komplexen Zahlen

::: defi
Motivation: Lösung für $x^2 = -1$ mit $x = i$ und $i^2 = -1$. Also:
Konstruktion von $i$, damit dies erfüllt ist.

Man kann den Körper der komplexen Zahlen konstruieren, indem man den
Körper $\R$ der reelen Zahlen und die Menge
$C := \R \times \R = \{(a,b) \mid a,b\in\R\}$ betrachtet mit den
folgenden Operationen:
`\begin{splitty}+:\quad C\times C\quad &\to \quad C\\((a,b),(c,d))&\mapsto (a,b)+(c,d) := (a+c, b+d)\end{splitty}`{=tex}und`\begin{splitty}\cdot:\quad C\times C\quad &\to \quad C\\((a,b),(c,d))&\mapsto (a,b)\cdot(c,d) := (ac - bd, ad + bc).\end{splitty}`{=tex}Also
definiert man:
`\begin{splitty}(x,0),\quad x\in\R &:= x\\(0,1)&:=i,\end{splitty}`{=tex}
da dann gilt: $$i^2 = (0,1)(0,1) = (-1,0) = -1.$$Für $z=(x,y)\in C$
gilt: $$z = (x,0) + (0,1)(y,0) = x + iy.$$Außerdem gilt in
$\C$:`\begin{splitty}(x+iy)(u+iv) &= (xu + i^2yv) + i(xv+yu) = (xu - yv) + i(xv+yu).\end{splitty}`{=tex}Das
multiplikative Inverse von $x+iy$ ist demnach:
$$u+iv = \frac{x}{x^2 + y^2} - \frac{iy}{x^2+y^2}.$$
:::

## Operationen

1.  **Betragsfunktionen**:
    `\begin{splitty}|\cdot|:\quad\C\quad&\to\quad\R_{\geq0}\\x+iy&\mapsto\sqrt{x^2+y^2}\end{splitty}`{=tex}
2.  **Komplexe Konjugation**:
    `\begin{splitty}\bar{\cdot}:\quad\C\quad&\to\quad\C\\z = x + iy &\mapsto \bar{z} := x - iy.\end{splitty}`{=tex}
3.  **Realteil**:
    `\begin{splitty}\mathrm{Re}:\quad\C\quad&\to\quad\R\\x+iy &\mapsto\quad x.\end{splitty}`{=tex}
4.  **Imaginärteil**:
    `\begin{splitty}\mathrm{Im}:\quad\C\quad&\to\quad\R\\x+iy &\mapsto\quad y.\end{splitty}`{=tex}

## Geometrische Deutung

### Graph von $z$

::: visu
Mit $z = x + yi = 4 + 5i$:

```{=tex}
\begin{center}\begin{tikzpicture}
\begin{axis}[axis lines=center,xmin=-1,xmax=5,ymin=-1,ytick={-1,...,6},ymax=6,minor tick num=1,ticks=both,yticklabels={$-i$, $0$, $i$, $2i$, $3i$, $4i$, $5i$, $6i$}]
\addplot[black,mark=*] coordinates {(4,5)} {};
\addplot[ultra thick,dashed,red] coordinates { (0,0) (4,0) } node[pos=0.5,above] {$\text{Re}(z)=4$};
\addplot[,dashed,red] coordinates { (4,0) (4,5) } node[pos=0.5,left] {$\text{Im}(z)=5$};

\node [above,red] at (axis cs: 4,5) {$4+5i$};
\end{axis}
\end{tikzpicture}\end{center}
```
:::

### Vektoraddition

::: visu
Mit $z = x + yi = 1 + 3i$ und $w = u + vi = 4 + 2i$ und
$z + w = 5 + 5i$:

```{=tex}
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
```
:::

### Betrag

::: visu
Mit $z = x + iy = 4 + 5i$, entspricht der Betrag
$|z| = \sqrt{x^2 + y^2} = \sqrt{4^2 + 5^2} \approx 6.4 = r$ der
euklidischen Länge des Vektors $z$:

```{=tex}
\begin{center}\begin{tikzpicture}
\begin{axis}[axis lines=center,xmin=-1,xmax=5,ymin=-1,ytick={-1,...,6},ymax=6,minor tick num=1,ticks=both,yticklabels={$-i$, $0$, $i$, $2i$, $3i$, $4i$, $5i$, $6i$}]
\addplot[black,mark=*] coordinates {(4,5)} {};
\addplot[red] coordinates { (0,0) (4,5) } node[pos=0.5,above] {$r$};
\addplot[ultra thick,dashed,red] coordinates { (0,0) (4,0) } node[pos=0.5,above] {$\text{Re}(z)=4$};
\addplot[dashed,red] coordinates { (4,0) (4,5) } node[pos=0.5,left] {$\text{Im}(z)=5$};

\node [above,red] at (axis cs: 4,5) {$4+5i$};
\end{axis}
\end{tikzpicture}\end{center}
```
:::

### Einheitskreis

$$z = \cos(\alpha) + i\sin(\alpha)$$

TODO. Tikz weird af

**Euler-Formel**: $$\C\ni e^{i\alpha} = \cos(\alpha) + i\sin(\alpha)$$
mit $\alpha$ als Winkel im Bogenmaß, sowie
$$|e^{i\alpha}| = 1,\quad\forall\alpha\in\R.$$

### Polarkoordinaten

Mit dem Punkt $z' = \frac{z}{|z|}$ gilt:
$$z = x+iy = |z| \cdot \frac{z}{|z|} = |z| \cdot z' = |z| \cdot e^{i\alpha}.$$
**Polarkoordinatendarstellung**:
$z = r \cdot e^{i\alpha} = r(\cos(\alpha) + i\sin(\alpha))$

TODO: Tikz Darstellung der Multiplikation

`\begin{splitty}(r\cdot e^{i\alpha})(r'\cdot e^{i\alpha'}) &= r \cdot r' (\cos(\alpha) + i\sin(\alpha))(\cos(\alpha')+i\sin(\alpha'))\\&= ...\\&= r\cdot r' \cdot e^{i(\alpha+\alpha')}\end{splitty}`{=tex}

## Gleichungen in $\C$

### Lineare Gleichung

Finde $z\in\C$ mit $u,v\in\C$ und $u\neq0$:
`\begin{splitty} uz+v &= 0\\ \iff z &= -u^{-1} \cdot v \end{splitty}`{=tex}
Ist $u = a + ib$ und $v = c + id$ mit $a,b,c,d\in\R$, dann ist
$$z = -\frac{v}{u} = -\frac{c+id}{a + ib} \cdot \frac{a-ib}{a-ib} = -\frac{(ac+bd) - i(bc-ad)}{a^2+b^2} = -\frac{ac+bd}{a^2+b^2} + i\frac{bc-ad}{a^2+b^2}$$

### Quadratische Gleichungen

Finde $z\in\C$ mit Koeffizienten $a,b,c\in\R,\quad a\neq0$, sodass
`\begin{splitty}az^2 + bz + c &= 0\\\iff a(z^2 + \frac{b}{a} \cdot z + \frac{z}{a}) &= 0\\\iff^{a\neq0} z^2 + \frac{b}{a}\cdot z + \frac{b^2}{4a^2} &= \frac{b^2}{4a^2} - \frac{c}{a}\\\iff (z+\frac{b}{za})^2 &= \frac{b^2-4ac}{4a^2}\\\iff z_{1,2} &= \pm \sqrt{\frac{b^2-4ac}{4a^2}} - \frac{b}{2a}\\&=\frac{-b\pm\sqrt{b^2-4ac}}{2a}\end{splitty}`{=tex}
$$z_{1,2} = \begin{cases}-\frac{b}{2a}\in\R,&\text{wenn } \Delta = 0\\\frac{-b\pm\sqrt{b^2-4ac}}{2a}\in\R,&\text{wenn } \Delta > 0\\\frac{-b\pm i\sqrt{4ac-b^2}}{2a} = \frac{-b}{2a}\pm i\frac{\sqrt{4ac-b^2}}{2a}, &\text{wenn } \Delta < 0\end{cases}$$

### Einheitswurzeln

Sei $0\neq\omega = r \cdot e^{i\alpha} \in \C$ und $n\in\N$. Finde
$z\in\C$ mit $$z^n = \omega.$$ **Polarkoordinatendarstellung**: Betrag
und Argument von $z^n$ gleich $r$ und $\alpha$. Sei
$z = s\cdot e^{i\beta}$, dann sucht man $(s,\beta)$, sodass
$$z^n = s^n \cdot e^{i(n\beta)} = r \cdot e^{i\alpha} = \omega$$ also
$s^n = r$ und $n\beta = \alpha + 2 \pi k$ mit $k\in\Z$. **Also**:
$s = \sqrt[n]{r}$ und $\beta_k \frac{\alpha+2\pi k}{n}$ mit
$k=0,...,n-1$. Es gibt also $n$ Lösungen
$z_k = \sqrt[n]{r} \cdot e^{i\beta k},\quad k=0,...,n-1$.

# Polynomringe

::: defi
Sei $R$ ein kommutativer Ring.

1.  Ein **Polynom** über dem Ring $R$ in der Unbestimmten $X$ ist ein
    Ausdruck der Form
    $$f=f(x)=\alpha_nX^n+\alpha_{n-1}X^{n-1}+...+\alpha_0X^0=\sum_{i=0}^n \alpha_iX^i$$
    mit $n\in\N$ und **Koeffizienten** $\alpha_i\in R,\ i=0,...,n$.
    Genauer ist $\alpha_i$ der **Koeffizient von $f$ zum Grad $i$**. Ist
    $a_n=1$, so nennt man das Polynom $f$ **normiert**.
2.  Ist $\alpha_n\neq0$, so ist $n$ der **Grad** $\mathrm{grad}(f)$ des
    Polynoms $f$. Man definiert den Grad des **Nullpolynoms** $f=0$ als
    $\mathrm{grad}(0) = -\infty$.
3.  Ist $\mathrm{grad}(f)=2$, dann nennt man
    $f(X) = \alpha_2X^2+\alpha_1X+\alpha_0$ auch **quadratische
    Polynome**. Ist $\mathrm{grad}(f)=1$, dann spricht man auch von
    **linearen Polynomen** $f(X)=\alpha_1X+\alpha_0$, und für
    $\mathrm{grad}(f)=0$ von den **konstanten Polynomen**
    $f(X)=\alpha_0$.
:::

Ein **Polynomring** $R[X]$ ist dann die Menge aller Polynome in der
Unbestimmten $X$ mit Koeffizienten in einem Ring $R$, weshalb dieser
auch die Ringaxiome erfüllt.

$R[X]$ besitzt die folgenden Operationen:

1.  $$\left(\sum_{i\in\N} \alpha_iX^i\right)+\left(\sum_{i\in\N} \beta_iX^i\right) = \sum_{i\in\N}(\alpha_i+\beta_i)X^i$$
2.  $$\left(\sum_{i\in\N} \alpha_iX^i\right)\cdot\left(\sum_{i\in\N} \beta_iX^i\right) = \sum_{i\in\N}\left(\sum_{k+l=i}(\alpha_k+\beta_l)X^i\right)$$

------------------------------------------------------------------------

Für $f,g\in R[X]$ gilt:
$$\mathrm{grad}(f+g)\leq\mathrm{max}(\mathrm{grad}(f),\mathrm{grad}(g))$$
$$\mathrm{grad}(f\cdot g)\leq\mathrm{grad}(f) + \mathrm{grad}(g)$$ Ist
$R=K$ ein Körper, so gilt sogar:
$$\mathrm{grad}(f\cdot g)=\mathrm{grad}(f) + \mathrm{grad}(g)$$

## Polynomdivision

Von nun an ist $R=K$ ein beliebiger Körper.

------------------------------------------------------------------------

Seien $f,g\in K[X]$ und $g\neq0$ Polynome mit Koeffizienten in $K$. Dann
existieren eindeutig bestimmte Polynome $q,r\in K[X]$ mit
$$f=q\cdot g+r\quad\text{mit } \mathrm{grad}(r)<\mathrm{grad}(g).$$ Man
nennt $q$ den **Quotienten** und $r$ den **Rest der Division** von $f$
durch $g$.

::: bsp
**Beispiel**:

```{=tex}
\polylongdiv[style=C]{X^4+2X^3-X+2}{3X^2-1}
```
:::

Mit $f,g\in K[X]$, definiert man **$g$ teilt $f$** oder **$g$ ist ein
Teiler von $f$**, wenn
$$g \mid f\quad:\iff\quad\exists q\in K[X]: f = g\cdot q.$$ Falls $g$
kein Teiler von $f$ ist, so schreibt man $g \nmid f$.

::: bsp
**Beispiel**: Das Polynom $X+1$ ist ein teiler von $X^2-1$ in $\R[x]$,
da $$X^2-1 = (X+1)(X-1) = X^2 - X + X - 1.$$
:::

Ein Polynom $f\in K[X]$ heißt **reduzibel**, wenn es nicht-konstante
Polynome $g,h\in K[X]$ gibt, sodass $f=g\cdot h$ gilt. Andernfalls heißt
$f$ **irreduzibel**.

::: bsp
**Beispiel**: $X^2+1$ ist irreduzibel in $\R[X]$, aber reduzibel in
$\C[x]$, da $X^2 + 1 = (X - i)(X + i)$ gilt.
:::

## Euklidischer Algorithmus

------------------------------------------------------------------------

Ein Polynom $p\in K[X]$ ist **gemeinsamer Teiler** von Polynomen
$f,g\in K[X]$, wenn $p$ ein Teiler von $f$ und ein Teiler von $g$ ist.
Wir nennen $$p=\mathrm{ggT}(f,g)$$ einen **größten gemeinsamen Teiler**
von $f$ und $g$, falls $p$ durch jeden gemeinsamen Teiler von $f$ und
$g$ teilbar ist. Man nennt $p$ den **normierten größten gemeinsamen
Teiler**, wenn $p=\mathrm{ggT}(f,g)$ normiert ist.

------------------------------------------------------------------------

Seien $f,g\in K[X]$, $g\neq0$ und
$\mathrm{grad}(f)\geq\mathrm{grad}(g)$. Setze man $r_0=f$ und $r_1=g$
und berechne für $j=0,1,...$ die Division von $r_j$ durch $r_{j+1}$ mit
Rest $r_{j+2}$ bis $r_{j+2}=0$ gilt, d.h. finde $q_j\in K[X]$ so, dass
$$r_j=q_jr_{j+1}+r_{j+2}\quad\text{(mit } 0\leq\mathrm{grad}(r_{j+2}) < \mathrm{grad}(r_{j+1}))$$
erfüllt ist. Ist $n=j+1\in\N$ gefunden mit $r_{n+1}=0$, dann gilt
$r_n=\mathrm{ggT}(f,g)$.

TODO: Beispiel

------------------------------------------------------------------------

Jedes nicht-konstante Polynom $f\in K[X]$ lässt sich als Produkt
irreduzible Polynome aus $K[X]$ darstellen. Diese Darstellung ist bis
auf die Reihenfolge und die Multiplikation mit konstanten Polynomen
eindeutig.

## Nullstellen von Polynomen

Ist $f\in K[X]$ ein Polynom mit **Nullstelle** $x_0\in K$, d.h.
$f(x_0) = 0$, so ist das Polynom (auch **Linearfaktor** genannt)
$g(X) = (X = x_0)$ ein Teiler von $f$.

------------------------------------------------------------------------

Sei $0\neq f\in K[X]$, dann besitzt $f$ nur endlich viele paarweise
verschiedenen Nullstellen $\alpha_1,...,\alpha_r\in K$, wobei
$r \leq \mathrm{grad}(f)$ gilt. Weiter existieren
$n_1,...,n_r\in\N_{>0}$ sowie ein Polynom $g\in K[X]$ ohne Nullstellen
in $K$ mit $$f = \prod_{i=1}^r (X - a_i)^{n_i} \cdot g.$$ Dabei sind die
Exponenten $n_i$ sowie das Polynom $g$ eindeutig durch $f$ bestimmt. Wir
nennen $n_i$ die **Vielfachheit** der Nullstelle $a_i$.

### Anzahl der Nullstellen

Ein Polynom $f\in K[X]$ vom Grad $\mathrm{grad}(f) = n \geq 0$ hat
höchstens $n$ Nullstellen.

### Fundamentalsatz der Algebra

Jedes Polynom $f\in\C[X]$ zerfällt in Linearfaktoren, d.h. es lässt sich
als Produkt von Linearfaktoren schreiben.

# Vektorräume

::: defi
1.  Ein **$K$-Vektorraum** ist eine Menge $V$, auf der eine (innere)
    Verknüpfung
    `\begin{splitty}+:\quad V\times V\quad&\to\quad V\\(u,v)\quad&\mapsto\quad u+v\end{splitty}`{=tex}
    und eine **skalare Multiplikation** (äußere Verknüpfung)
    `\begin{splitty}\cdot:\quad K\times V\quad&\to\quad V\\(\lambda,v)\quad&\mapsto\quad\lambda\cdot v\end{splitty}`{=tex}
    definiert sind, sodass folgende **Vektorraumaxiome** erfüllt sind:
    1.  $(V,+)$ ist eine abelsche Gruppe
    2.  *Assoziativgesetz*:
        $\forall \lambda,\gamma\in K \land v\in V: \lambda (\gamma \cdot v) = (\lambda \cdot \gamma) v$
    3.  *Neutrales Element*: $\forall v\in V: 1 \cdot v = v$
    4.  *Distributivgesetze*:
        1.  $\forall \lambda\in K \land u,v\in V: \lambda \cdot (u+v) = \lambda \cdot u + \lambda \cdot v$
        2.  $\forall \lambda,\gamma\in K \land u\in V: (\lambda + \gamma) \cdot u = \lambda \cdot u + \gamma \cdot u$
2.  Die Elemente von $V$ heißen **Vektoren** und die Elemente in $K$
    **Skalare**. Das neutrale Element der Gruppe $(V,+)$ nennt man den
    **Nullvektor** $0$.
3.  Für $K=\R$ spricht man von einem **reelen Vektorraum** und für
    $K=\C$ von einem **komplexen Vektorraum**.
:::

::: bsp
**Beispiele**:

1.  $\R^n$: $n$-dimensionaler euklidischer Raum, welcher alle $n$-Tupel
    der reelen Zahlen enthält. $\R^2$ ist entsprechend der klassische
    zweidimensionale Raum mit Vektor $(x,y)^\top$; analog $\R^3$ mit
    Vektor $(x,y,z)^\top$. $\R^n$ ist erweiterbar zu $\C^n$ und enthält
    entsprechend zusätzlich die komplexen Zahlen.
2.  Funktionenräume: Die Menge aller $K$-wertigen Abbildungen
    $\mathrm{Abb}(X, K) = \{f: X \to K\}$. Dann gilt:
    $$(f+g)(x) = f(x) + g(x),\quad\forall x\in X,$$
    $$(\lambda \cdot f)(x) = \lambda \cdot f(x),\quad\forall x\in X.$$
3.  Der Polynomring $K[X]$ über einem Körper $K$ ist ein $K$-Vektorraum.
    Die Ringeigenschaften von $K[X]$ liefern eine Addition, die man als
    Vektoraddition interpretieren kann. Die skalare Multiplikation mit
    $\lambda\in K$ lässt sich als Multiplikation in $K[X]$ definieren,
    indem man den Skalar $\lambda$ als konstantes Polynom mit dem Wert
    $\lambda$ identifiziert (d.h. als Polynom
    $\lambda X^0 = \lambda\in K[X]$).
:::

## Unterräume

### Untervektorraum

::: defi
Mit dem $K$-Vektorraum $V$ und $U\subset V$ ist $U$ ein
$K$-**Untervektorraum** von $V$, wenn folgende Axiome erfüllt sind:

1.  $U\neq\emptyset$
2.  $u,v\in U\quad\implies\quad u+v\in U$
3.  $u\in U,\ \lambda\in K\quad\implies\quad\lambda u\in U$

Kurz spricht man auch von einem **Unterraum** $U$ von $V$.
:::

::: bsp
**Beispiele**:

1.  Jeder $K$-Vektorraum $V$ hat die trivialen Unterräume $\{0\}$ und
    $V$.
2.  Die Menge aller Polynome vom Grad kleiner gleich $n\in\N$
    $$K[X]_{\leq n} = \{f\in K[X] \mid \mathrm{grad}(f) \leq n\}$$ ist
    ein Unterraum von $K[X]$. Die Addition und Multiplikation können
    jeweils den Grad nicht gehören und der Raum ist somit abgeschlossen.
:::

## Familie von Vektoren

::: defi
Eine Familie ist eine geordnete Ansammlung von Elementen. TODO: Mehr.
:::

Mit der Familie von Untervektorräumen von $V$ namens $(U_i)_{i\in I}$
ist auch $$\bigcap_{i\in I} U_i \text{ ein Untervektorraum von } V.$$

TODO: (Generell) TikZ aus Gekritzel?

## Lineare Hülle {#lspan}

::: defi
Mit der Familie von Vektoren in $V$ $\mathcal{F} = (v_i)_{i\in I}$ ist
eine **Linearkombination** von $\mathcal{F}$ (oder über $\mathcal{F}$)
ein Element der Form
$$\sum_{i\in I} \lambda_i v_i \in V,\quad \text{ wobei } \lambda_i \in K \text{ und } \lambda_i\neq0 \text{ für höchstes endlich viele } i\in I.$$
Die Menge aller Linearkombinationen von $\mathcal{F}$ in $V$ wird als
**Erzeugnis** (**lineare Hülle**, **Spann**) von $\mathcal{F}$
bezeichnet und mit
$$\mathrm{Lin}(\mathcal{F}) = \mathrm{Lin}((v_i)_{i\in I}) = \left\{ v\in V \biggm| v \text{ ist Linearkombination über } \mathcal{F} \right\}$$
notiert. Dabei nennt man $\mathcal{F} = (v_i)_{i\in I}$ ein
**Erzeugendensystem** von $\mathrm{Lin}(\mathcal{F})$. Es gilt außerdem
$\mathrm{Lin}() = \{0\}$.
:::

Eine **Linearkombination** von einer Familie von Vektoren
$\mathcal{F} = (v_1,...,v_n)$ in $V$ ist ein Element der Form
$$\mathrm{Lin}(\mathcal{F}) = \mathrm{Lin}(v_1,...,v_n) = \left\{\sum_{i=1}^n \lambda_iv_i \biggm| \lambda_i\in K, i\in I\right\}.$$

::: bsp
**Beispiele**:

1.  Die lineare Hülle der $n$ Koordinateneinheitsvektoren
    (Basisvektoren) von $\R^n$ ist gerade wieder $\R^n$.
2.  Die lineare Hülle von den Vektoren $(1,2)^\top$, $(3,6)^\top$ und
    $(-2,-4)^\top$ ist die Gerade
    $\{\vec{r}\mid\vec{r}=t(1,2)^\top,t\in\R\}$ da diese Gerade durch
    jeden Vektor verläuft (bzw. Ergebnis einer Linearkombination ist).
3.  Ist $V$ ein $\R$-Vektorraum $\R^3$ und $\mathcal{F} = (v_1,v_2)$ mit
    $v_1 = (1,1,0)$ und $v_2 = (1,0,0)$ in $\R^3$, gilt
    $$\mathrm{Lin}(\mathcal{F}) = \mathrm{Lin}(v_1,v_2) = \{(\lambda_1+\lambda_2,\lambda_1,0)\mid\lambda_1,\lambda_2\in\R\} = \{(\lambda_1',\lambda_2',0)\mid\lambda_1',\lambda_2'\in\R\}.$$
:::

::: visu
**Visualisierung** in $\R^3$. Zuerst mit $\vec{u}=(0,1,1)^\top$ und
$\vec{v}=(1,0,1)^\top$:

```{=tex}
\begin{center}\begin{tikzpicture}
\begin{axis}[xlabel={$x$},ylabel={$y$},zlabel={$z$}]
    \addplot3[surf, mesh]
    {x+y};
    \fill[red] (0,0,0) circle (2pt);
    \draw[->, ultra thick] (0,0,0) -- node [above] {$\vec{u}$} (0,3,3);
    \draw[->, ultra thick] (0,3,3) -- node [above] {$\vec{v}$} (3,3,6);
    \draw[->, ultra thick, blue] (0,0,0) -- node [above] {$\vec{k}$} (3,3,6);
\end{axis}
\end{tikzpicture}\end{center}
```
Es entsteht ein linearkombinierter Vektor (in diesem Fall
$\vec{k} = 3\vec{u} + 3\vec{v} = (3,3,6)^\top$). Durch diesen Vektor
lässt sich entsprechend jeglicher Punkt auf der entstandenen Ebene (=
lineare Hülle) bestimmen. Nun kommt ein dritter Vektor $\vec{w}=(0,0,1)$
hinzu:

```{=tex}
\begin{center}\begin{tikzpicture}
\begin{axis}[xlabel={$x$},ylabel={$y$},zlabel={$z$}]
    \addplot3[surf, mesh]
    {x+y-8};
    \fill[red] (0,0,0) circle (2pt);
    \draw[->, ultra thick] (0,0,0) -- node [above] {$\vec{u}$} (0,3,3);
    \draw[->, ultra thick] (0,3,3) -- node [above] {$\vec{v}$} (3,3,6);
    \draw[->, ultra thick] (3,3,6) -- node [right] {$\vec{w}$} (3,3,-2);
    \draw[->, ultra thick, blue] (0,0,0) -- node [above] {$\vec{k}$} (3,3,-2);
\end{axis}
\end{tikzpicture}\end{center}
```
$\vec{w}$ dient nun also als `\enquote{Veschiebungs}`{=tex}-Vektor,
welcher die Ebene in $z$-Richtung verschieben kann (im Bild mit Faktor
$-8$). Damit ergibt sich, dass die lineare Hülle der drei Vektoren nun
den ganzen Raum $\R$ umfasst.
:::

Ist $\mathcal{F} = (v_i)_{i\in I}$ eine Familie von Vektoren in $V$,
dann ist $\mathrm{Lin}(\mathcal{F})$ ein Untervektorraum von $V$ und es
gilt $$\forall i\in I: v_i\in\mathrm{Lin}(\mathcal{F}).$$

------------------------------------------------------------------------

Ist $\mathcal{F} = (v_i)_{i\in I}$ eine Familie von Vektoren in $V$ und
$M = \{v_i\mid i\in I\}$ die Menge der Vektoren aus $\mathcal{F}$, dann
gilt
$$\mathrm{Lin}(\mathcal{F}) = \underset{U\text{ Unterraum von } V}{\bigcap_{M\subset U\subset V}} U.$$

------------------------------------------------------------------------

Existiert für einen Unterraum $U\subset V$ eine Familie von Vektoren
$\mathcal{F} = (v_i)_{i\in I}$, sodass $U = \mathrm{Lin}(\mathcal{F})$
gilt, dann nennt man $\mathcal{F}$ ein **Erzeugendensystem** von $U$,
bzw. **$U$ wird von $\mathcal{F}$ erzeugt**. Ist $\mathcal{F}$ endlich,
so ist $U$ **endlich erzeugt** (von $\mathcal{F}$).

## Lineare Unabhängigkeit

::: defi
1.  Eine Familie $\mathcal{F} = (v_i)_{i\in I}$ in V heißt genau dann
    **linear abhängig**, wenn eine Linearkombination mit mindestens
    einem Koeffizienten ungleich $0$ existiert, sodass mit $J\subset I$
    gilt
    $$\sum_{i\in J} \lambda_iv_i = 0,\quad\exists i\in J: \lambda_i \neq 0.$$
2.  Dieselbe Familie $\mathcal{F}$ heißt genau dann **linear
    unabhängig**, wenn diese nicht linear abhängig ist - also wenn jede
    Darstellung der $0$ mittels einer Linearkombination ausschließlich
    triviale Koeffizienten besitzt:
    $$\sum_{i\in J} \lambda_iv_i = 0\quad\implies\quad\forall i\in J: \lambda_i=0.$$
3.  Dieselbe Familie $\mathcal{F}$ ist außerdem ganau dann linear
    unabhängig, wenn sich jeder Vektor $v\in\mathrm{Lin}(\mathcal{F})$
    in eindeutiger Weise als Linearkombination aus Vektoren von
    $\mathcal{F}$ schreiben lässt.
:::

::: bsp
**Beispiele** bzw. vereinfachte Erklärung:

1.  Eine Vektorfamilie ist **linear abhängig**, wenn mindestens ein
    Vektor bereits durch eine Linearkombination eines oder mehrerer
    anderen Vektoren der Familie ersetzt werden könnte (er ist also
    redundant für den linearen Spann). Das heißt der lineare Spann
    verändert sich nicht, wenn man diesen Vektor entfernen würde.
2.  Wenn hingegen jeder Vektor tatsächlich eine neue Dimension zum
    linearen Spann hinzufügt, ist die Vektorfamilie **linear
    unabhängig**.
:::

::: visu
**Visualisierung** in $\R^3$.

1.  Mit linear abhängigen Vektoren $\vec{u}=(0,1,1)^\top$,
    $\vec{v}=(1,0,1)^\top$ und $\vec{w}=(2,0,2)^\top$ entsteht ein
    zweidimensionaler Spann, da $\vec{w}$ durch $2\vec{v}$ ersetzt
    werden kann:

```{=tex}
\begin{center}\begin{tikzpicture}
\begin{axis}[xlabel={$x$},ylabel={$y$},zlabel={$z$}]
    \addplot3[surf, mesh]
    {x+y};
    \fill[red] (0,0,0) circle (2pt);
    \draw[->, ultra thick] (0,0,0) -- node [above] {$\vec{u}$} (0,3,3);
    \draw[->, ultra thick] (0,3,3) -- node [above] {$\vec{v}$} (3,3,6);
    \draw[->, ultra thick] (3,3,6) -- node [above] {$\vec{w}$} (5,3,8);
    \draw[->, ultra thick, blue] (0,0,0) -- node [above] {$\vec{k}$} (5,3,8);
\end{axis}
\end{tikzpicture}\end{center}
```
2.  Mit linear unabhängigen Vektoren $\vec{u}=(0,1,1)^\top$,
    $\vec{v}=(1,0,1)^\top$ und $\vec{w}=(0,0,1)^\top$ entsteht ein
    dreidimensionaler Spann, da keiner der Vektoren durch eine
    Linearkombination anderer Vektoren dargestellt werden kann (siehe
    auch Kapitel *[Lineare Hülle](#lspan))*:

```{=tex}
\begin{center}\begin{tikzpicture}
\begin{axis}[xlabel={$x$},ylabel={$y$},zlabel={$z$}]
    \addplot3[surf, mesh]
    {x+y-8};
    \fill[red] (0,0,0) circle (2pt);
    \draw[->, ultra thick] (0,0,0) -- node [above] {$\vec{u}$} (0,3,3);
    \draw[->, ultra thick] (0,3,3) -- node [above] {$\vec{v}$} (3,3,6);
    \draw[->, ultra thick] (3,3,6) -- node [right] {$\vec{w}$} (3,3,-2);
    \draw[->, ultra thick, blue] (0,0,0) -- node [above] {$\vec{k}$} (3,3,-2);
\end{axis}
\end{tikzpicture}\end{center}
```
:::

## Basis

::: defi
Eine **Basis** $\mathcal{B}$ für $V$ ist ein linear unabhängiges
Erzeugendensystem für $V$, d.h. es gilt
$$\mathrm{Lin}(\mathcal{B}) = V\quad\land\quad\mathcal{B} \text{ ist linear unabhängig}.$$
Sie ist also eine Familie an linear unabhängigen Vektoren, die einen
Raum aufspannen.
:::

::: bsp
**Beispiele**:

1.  Die Koordinateneinheitsvektoren $e_1=(1,0,...,0)^\top$,
    $e_2=(0,1,0,...,0)^\top$ bis $e_n=(0,0,0,...,1)^\top$ sind eine
    Basis des $n$-dimensionalen Raumes $\R^n$
2.  Die Monome $1,x,x^2,x^3,...$ bilden eine Basis des
    unendlichdimensionalen Raumes aller Polynome.
:::

**Eigenschaften**:

1.  Aus jedem endlichen Erzeugendensystem eines Vektorraums kann man
    eine Basis auswählen.
2.  Jeder endlich erzeugte Vektorraum hat eine endliche Basis.
3.  Jeder Vektorraum besitzt eine Basis.
4.  Hat $V$ eine endliche Basis von $n$ Vektoren, so hat jede Basis von
    $V$ genau $n$ Vektoren.
5.  Jede linear unabhängige Familie von $n=\mathrm{dim}(V)$ Vektoren ist
    eine Basis von $V$.

TODO: 11.24?

### Steinitzsches Austauschlemma

Mit der endlichen Basis $\mathcal{B} = (b_1,...,b_n)$ von $V$ und
$V\ni b \neq 0$ existiert $i\in\{1,...,n\}$, sodass
$\mathcal{B}' = (b_1,...,b_{i-1}, b, b_{i+1},...,b_n)$ eine Basis von
$V$ ist.

### Steinitzscher Austauschsatz

Mit der endlichen Basis $\mathcal{B} = (b_1,...,b_n)$ von $V$ und der
linear unabhängigen Familie $\mathcal{F} = (b'_1,...,b'_m)$ ist
$m\leq n$ und es gibt $J\subset\{1,...,n\}$ derart, sodass man nach
Austausch von $(b_i)_{i\in J}$ gegen $\mathcal{F}$ wieder eine Basis von
$V$ erhält.

## Dimension

::: defi
Die **Dimension** $\mathrm{dim}_K(V)$ eines Vektorraums $V$ entspricht
der Anzahl der Vektoren einer Basis von $V$, sofern diese endlich ist,
und $\mathrm{dim}_K(V) = \infty$, wenn es keine endliche Basis von $V$
gibt. Wenn aus dem Kontext klar wird, über welchem Körper der Vektorraum
gebildet ist, dann schreibt man auch
$\mathrm{dim}(V) = \mathrm{dim}_K(V)$.
:::

Zusammenfassend gilt:

```{=tex}
\begin{splitty}
&V \text{ ist $n$-dimensional}\\
\iff &\text{Je $n$ linear unabhängige Vektoren bilden eine Basis.}\\
\iff &\text{Eine (und damit jede) Basis hat $n$ Elemente.}\\
\iff &\text{Es gibt $n$ linear unabhängige Vektoren mit $V = \mathrm{Lin}(v_1,...,v_n)$.}\\
\iff &\text{Es gibt $n$ linear unabhängige Vektoren, aber jeweils $n+1$ Vektoren sind linear abhängig.}
\end{splitty}
```
::: bsp
**Beispiele**:

1.  $\mathrm{dim}_K(K^n)=n$.
2.  $\mathrm{dim}_\R(\R)=1,\ \mathrm{dim}_\Q(\R)=\infty$.
3.  $\mathrm{dim}_\R(\C)=2.$
:::

# Lineare Abbildungen

TUDU.

# Matrizen

TUDU.

------------------------------------------------------------------------

## Blockmatrizen

Eine **$m\times n$-Blockmatrix** $M$ über $K$ mit Blöcken
(Untermatrizen) $A_{ij} \in K^{m_i\times n_i}$ für $i=1,...,k$ und
$j=1,...,l$, sodass $m_1 + ... + m_k = m$ und $n_1+...+n_l=n$ ist, ist
ein rechteckiges Schema der Form
$$M = \begin{pmatrix}A_{11}&A_{12}&\dots&A_{1l}\\A_{21}&A_{22}&\dots&A_{2l}\\\vdots&\vdots&\ &\vdots\\A_{k1}&A_{k2}&\dots&A_{kl}\end{pmatrix}\in K^{m\times n}$$

::: bsp
**Beispiel**:
$$K^{n\times n} \ni M = \begin{pmatrix}A&B\\C&D\end{pmatrix}$$ TODO:
Elemente klassifizieren
:::

Mit $$K^{n\times n} \ni M = \begin{pmatrix}A&B\\C&D\end{pmatrix}$$ und
$$K^{n\times n} \ni M\ = \begin{pmatrix}A'&B'\\C'&D'\end{pmatrix}$$gilt
$$MM' = \begin{pmatrix}A&B\\C&D\end{pmatrix}\begin{pmatrix}A'&B'\\C'&D'\end{pmatrix} = \begin{pmatrix}AA'+BC'&AB'+BD'\\CA'+DC'&CB'+DD'\end{pmatrix}$$

------------------------------------------------------------------------

Mit $$K^{n\times n} \ni M = \begin{pmatrix}A&B\\C&D\end{pmatrix}$$ und
$A\in K^{r\times r}$ und $C=0$ gilt:
$$M \text{ ist invertierbar} \iff A \text{ und } D \text{ sind invertierbar.}$$
Ist dies der Fall, dann ist
$$M^{-1} = \begin{pmatrix}A^{-1}&-A^{-1}BD^{-1}\\0&D^{-1}\end{pmatrix}$$

------------------------------------------------------------------------

Die Menge aller invertierbaren Matrizen der Form
$\mathrm{GL}(n,K)\ni\begin{pmatrix}A&B\\0&D\end{pmatrix}$ mit $A,B,D$
wie zuvor ist eine Untergruppe von $\mathrm{GL}(n,K)$.

------------------------------------------------------------------------

Sei $A\in K^{n\times n}$ eine **(obere) Dreiecksmatrix**, d.h.
$$A=(a_{ij})_{ij} = 1,...,n \text{ und } a_{ij}=0\text{ für } i > j.$$
Genau dann ist $A$ invertierbar, wenn alle $a_{ii} \neq 0, i=1,...,n$
sind.

Explizit geschrieben wird eine solche Matrix wie folgt:
$$A=\begin{pmatrix}a_{11}&a_{12}&\dots&a_{1n}\\0&a_{22}&\dots&a_{2n}\\\vdots&\ddots&\ddots&\vdots\\0&\dots&0&a_{mn}\end{pmatrix}$$
Da $A$ invertirebar ist genau dann, wenn $A^\top$ invertierbar ist, gilt
die Aussage des vorigen Korollars auch für eine **(untere)
Dreiecksmatrix**, also der Transponierten der oberen Dreiecksmatrix.

------------------------------------------------------------------------

Eine Diagonalmatrix
$D=\mathrm{diag}(d_{11},...,d_{nn}) \in K^{n\times n}$ ist genau dann
invertierbar, wenn $d_{ii} \neq 0$ für alle $i=1,...,n$ gilt. In diesem
Fall ist $$D^{-1} = \mathrm{diag}()$$ TUDU: REST

------------------------------------------------------------------------

TODO: Lückenhaft

## Elementare Zeilen- und Spaltenoperationen

Eine Matrix $A\in K^{m\times n}$ besitzt **Zeilenstufenform**, wenn $A$
folgende Form hat: $$A = \begin{pmatrix}
    0&\dots&0&a_{1j_1}&\ast&\dots&\ast&\ast&\ast&\dots&\ast&\ast&\ast&\dots&\ast\\
    0&\dots&0&0&0&\dots&0&a_{2j_2}&\ast&\dots&\ast&\ast&\ast&\dots&\ast\\
    &\vdots&&&&\vdots&&&&\ddots&&&&\vdots&\\
    0&\dots&0&0&0&\dots&0&0&0&\dots&0&a_{rj_r}&\ast&\dots&\ast\\
    0&\dots&0&0&0&\dots&0&0&0&\dots&0&0&0&\dots&0\\
    &\vdots&&&&\vdots&&&&\vdots&&&&\vdots&\\
    0&\dots&0&0&0&\dots&0&0&0&\dots&0&0&0&\dots&0
\end{pmatrix}$$ wobei $j_1<j_2<...<j_r$ und $0\neq a_{kj_k}\in K$ für
$k=1,...,r$ gilt und $*$ für ein beliebiges Element in $K$ steht. Die
Einträge $a_{1j_1},...,a_{rj_r}$ sind die **Pivoteinträge**. Man sagt,
dass $A$ **normierte Zeilenstufenform** hat, wenn sie Zeilenstufenform
mit Pivoteinträgen $a_{1j_1} = ... = a_{rj_r} = 1$ besitzt.

------------------------------------------------------------------------

Mit der Matrix $a\in K^{m\times n}$ mit Zeilenvektoren
$z_1,...,z_m\in K^{1\times n}$. Man unterscheidet drei Typen von
**elementaren Zeilenoperationen** der Matrix $A$:

1.  Addition des $\lambda$-fachen der $j$-ten Zeile zur $i$-ten Zeile
    wobei $i\neq j$ und $\lambda\in K$:
    $$Z_{\lambda;j,i}: \begin{pmatrix}z_1\\\vdots\\z_i\\\vdots\\z_j\\\vdots\\z_m\end{pmatrix} \mapsto \begin{pmatrix}z_1\\\vdots\\z_i+\lambda z_j\\\vdots\\z_j\\\vdots\\z_m\end{pmatrix}$$
2.  Vertauschen der $i$-ten mit der $j$-ten Zeile:
    $$Z_{i,j}: \begin{pmatrix}z_1\\\vdots\\z_i\\\vdots\\z_j\\\vdots\\z_m\end{pmatrix}\mapsto\begin{pmatrix}z_1\\\vdots\\z_j\\\vdots\\z_i\\\vdots\\z_m\end{pmatrix}$$
3.  Multiplikation der $i$-ten Zeile von $A$ mit $0\neq\lambda\in K$:
    $$Z_{\lambda;i}: \begin{pmatrix}z_1\\\vdots\\z_i\\\vdots\\z_m\end{pmatrix} \mapsto \begin{pmatrix}z_1\\\vdots\\\lambda\cdot z_i\\\vdots\\z_m\end{pmatrix}$$

Dieselben Regeln gelten analog auch für Spaltenvektoren und
Spaltenoperationen.

------------------------------------------------------------------------

Mit der Matrix $A\in K^{m\times n}$ gelten folgende Aussagen:

1.  Man kann $A$ durch endlich viele elementaren Zeilenoperationen vom
    Typ (i) und (ii) in Zeilenstufenform bringen.
2.  Beistzt $A$ Zeilenstufenform, so kann man $A$ durch endlichviele
    elementaren Zeilenoperationen vom Typ (iii) in normierte
    Zeilenstufenform bringen.

## Gaußsches Eliminationsverfahren

Sei $0\neq A\in K^{m\times n}$.

1.  Finde die kleinste Zahl $0\leq j_1\leq n$, sodass die $j_1$-te
    Spalte von $A$ keine Nullspalte ist.
2.  Wähle $0\leq i_1 \leq m$ mit $a_{i_1j_1} \neq 0$ und vertausche die
    $i_1$-te und die $1$-te Zeile, d.h. wende $Z_{1,i_1}$ auf $A$ an.
    Die so erhaltene Matrix $B=Z_{1,i_1}(A)$ hat die Form
    $$B=(b_{ij})=\begin{pmatrix}0&\dots&0&a_{i_1j_1}&\ast&\dots&\ast\\0&\dots&0&\ast&\ast&\dots&\ast\\\vdots&&\vdots&\vdots&\vdots&&\vdots\\0&\dots&0&\ast&\ast&\dots&\ast\end{pmatrix}$$
    wobei `\enquote{$\ast$}`{=tex} für ein beliebiges Element in $K$
    steht.
3.  Für $i=2,...,m$ addiere man das $-\frac{b_{ij_1}}{a_{i_1j_1}}$-fache
    der ersten Zeile zur $i$-ten Zeile, d.h. wende $Z_{\lambda_i;1,i}$
    mit $\lambda_i = -\frac{b_{ij_1}}{a_{i_1j_1}}$ für $i=2,...,m$
    sukzessive an. Dadurch ergibt sich eine Matrix
    $C=(Z_{\lambda_m;1,m}\circ\dots\circ Z_{\lambda_2;1,2})(B)$ der Form
    $$C = (c_{ij}) = \begin{pmatrix}0&\dots&0&a_{i_1j_1}&\ast&\dots&\ast\\0&\dots&0&0&\bullet&\dots&\bullet\\\vdots&&\vdots&\vdots&\vdots&&\vdots\\0&\dots&0&0&\bullet&\dots&\bullet\end{pmatrix}$$
    wobei `\enquote{$\ast$}`{=tex} für das gleiche Element wie in der
    Matrix $B$ steht und TODO für ein beliebiges Element in $K$ steht.
    Damit hat man für die erste Zeile den gewünschten Zustand erreicht.
4.  Wiederhole Algorithmus auf $D=(c_{(i_1)j})_{i=1,...,m-1;j=1,...,n}$
    an.

TODO: Beispiel Algorithmus Treppenform

------------------------------------------------------------------------

Sei $A\in K^{m\times n}$ eine Matrix in Zeilenstufenform mit $r$
Pivotspalten. Dann kann $A$ mittels endlich vieler elementarer
Spaltenoperationen vom Typ (i) und vom Typ (ii) auf folgende Gestalt
bringen $$\begin{pmatrix}D&0\\0&0\end{pmatrix}$$ wobei $D$ eine
$r\times r$-Diagonalmatrix ist. Durch Spaltenoperationen vom Typ (iii)
erreicht man weiter, dass $D=E_r$ gilt.

## Elementarmatrizen

Die elementaren Zeilenoperationen lassen sich als Matrix-Matrix Produkte
mit sogenannten **Elementarmatrizen** auffassen.

1.  Es gilt:
    $$Z_{\lambda;i,j}(A) = \underbrace{\begin{pmatrix}1&0&&&&&0\\0&\ddots&&&&\\&&1&&\lambda&&\\&&&\ddots&&&\\&&&&1&&\\&&&&&\ddots&0\\0&&&&&0&1\end{pmatrix}}_{=:E_{m;\lambda_ij,i}\in K^{m\times m}} \cdot A$$
2.  Es gilt:
    $$Z_{ij}(A) = \underbrace{\begin{pmatrix}1&0&&&&&0\\0&\ddots&&&&&\\&&0&&1&&\\&&&\ddots&&&\\&&1&&0&&\\&&&&&\ddots&0\\0&&&&&0&1\end{pmatrix}}_{=:E_{m;i,j}\in K^{m\times m}}$$
3.  Es gilt:
    $$Z_{\lambda;i}(A) = \underbrace{\begin{pmatrix}1&0&&&&&0\\0&\ddots&&&&&\\&&1&&&&\\&&&\lambda&&&\\&&&&1&&\\&&&&&\ddots&0\\0&&&&&0&1\end{pmatrix}}_{=:E_{m;\lambda_ij,i}\in K^{m\times m}}$$

(TUDU: nicht ganz fertig)

------------------------------------------------------------------------

Die elementaren Spaltenoperationen lassen sich auch als Matrix-Matrix
Produkte mit **Elementarmatrizen** auffassen. Operationen der Spalten
erfordern die Multiplikation mit Matrizen vonrechts, anstatt von links.
Sei $B\in K^{m\times n}$, dann gilt:

1.  $S_{\lambda;i,j}(B) = B\cdot E_{n;\lambda;i,j}$
2.  $S_{ij}(B) = B\cdot E_{n;i,j}$
3.  $S_{\lambda;i}(B) = B\cdot E_{n;\lambda;i}$

------------------------------------------------------------------------

Sei $A\in K^{m\times n}$. Dann gelten folgende Aussagen:

1.  Es gibt Elementarmatrizen $S_1,...,S_k\in K^{m\times m}$, sodass
    $$S_k...S_1\cdot A$$ normierte Zeilenstufenform besitzt.
2.  Besitzt $A$ Zeilenstufenform mit $r$ Pivotspalten, so gibt es
    Elementarmatrizen $T_1,...,T_l\in K^{n\times n}$ mit
    $$A\cdot T_1...T_l=\begin{pmatrix}E_r&0\\0&0\end{pmatrix}.$$
3.  Es gibt Elementarmatrizen $S_1,...,S_k\in K^{m\times m}$ und
    $T_1,...,T_l\in K^{n\times n}$ mit
    $$S_k...S_1\cdot A\cdot T_1...T_l=\begin{pmatrix}E_r&0\\0&0\end{pmatrix}$$

::: bsp
**Beispiel**: Bestimmen der Matrizen $S$ und $T$.
$$A=\begin{pmatrix}1&-1&1\\1&0&-1\end{pmatrix}\in\Q^{2\times3}$$ Nun
führt man folgende Schritte durch:

```{=tex}
\begin{splitty}
&\left( \begin{pmatrix}1&-1&1\\1&0&-1\end{pmatrix},\begin{pmatrix}1&0\\0&1\end{pmatrix},\begin{pmatrix}1&0&0\\0&1&0\\0&0&1\end{pmatrix} \right )\\
\leadsto &\left( \begin{pmatrix}1&-1&1\\0&1&-2\end{pmatrix},\begin{pmatrix}1&0\\-1&1\end{pmatrix},\begin{pmatrix}1&0&0\\0&1&0\\0&0&1\end{pmatrix} \right)\\
\leadsto &\left( \begin{pmatrix}1&0&-1\\0&1&-2\end{pmatrix},\begin{pmatrix}1&0\\-1&1\end{pmatrix},\begin{pmatrix}1&0&0\\0&1&0\\0&0&1\end{pmatrix} \right)\\
TUDU\\
\end{splitty}
```
:::

# Der Rang einer Matrix

::: defi
Sei $A\in K^{m\times n}$.

1.  Der **Spaltenraum** von $A$ ist der durch die Spalten $s_1,...,s_n$
    von $A$ erzeugte Untervektorraum $\mathrm{Lin}(s_1,...,s_n)$ von
    $K^m$.
2.  Der **Spaltenrang** von $A$ ist die Dimension des Spaltenraums von
    $A$:
    $$\mathrm{rank}_S(A) = \mathrm{dim}(\mathrm{Lin}(s_1,...,s_n))$$
:::

::: bsp
**Beispiele**:

1.  Der Spaltenrang der Einheitsmatrix in $K^n$ ist
    $\mathrm{rank}_SE_n=n$. Allgemeiner gilt
    $$\mathrm{rank}_S \begin{pmatrix}E_r&0\\0&0\end{pmatrix} = r.$$
2.  Mit der Matrix $\begin{pmatrix}1&3&3\\2&6&2\\3&9&1\end{pmatrix}$
    gilt
    $\mathrm{Lin} = \left( \begin{pmatrix}1\\2\\3\end{pmatrix} \begin{pmatrix}3\\6\\9\end{pmatrix} \begin{pmatrix}3\\2\\1\end{pmatrix}\right) = \mathrm{Lin}\left(\begin{pmatrix}1\\2\\3\end{pmatrix} \begin{pmatrix}3\\2\\1\end{pmatrix}\right)$
    TUDU: Gekritzel
:::

------------------------------------------------------------------------

Mit Matrix $A\in K^{m\times n}$ mit Spalten $s_1,...,s_n$ und
$\varphi_A: K^n\to K^m, v\mapsto Av$ gilt
$$\mathrm{im}(\varphi_A) = \mathrm{Lin}(s_1,...,s_n)\quad\text{und}\quad\mathrm{dim}(\mathrm{im}(\varphi_A)) = \mathrm{rank}_S(A)$$

------------------------------------------------------------------------

Mit Matrix $A\in K^{m\times n}$ gilt:

1.  Ist $T\in K^{n\times n}$ invertierbar, so gilt
    $\mathrm{rank}_S(AT) = \mathrm{rank}_S(A)$.
2.  Ist $S\in K^{m\times m}$ invertierbar, so gilt
    $\mathrm{rank}_S(SA) = \mathrm{rank}_S(A)$.

------------------------------------------------------------------------

Mit Matrix $A\in K^{m\times n}$ und $r\in\N$ sind folgende Aussagen
äquivalent:

1.  $\mathrm{rank}_S(A) = r$.
2.  Es existieren Elementarmatrizen $S_1,...,S_K\in K^{m\times m}$ und
    $T_1,...,T_1\in K^{n\times n}$ mit
    $$S_k...S_1\cdot A\cdot T_1...T_l = \begin{pmatrix}E_r&0\\0&0\end{pmatrix}$$

------------------------------------------------------------------------

Sei $A\in K^{m\times n}$. Dann gilt:

1.  Der **Zeilenraum** von $A$ ist der durch die Zeilen $z_1,...,z_m$
    von $A$ erzeugte Untervektorraum $\mathrm{Lin}(z_1,...,z_m)$ von
    $K^n$.
2.  Der **Zeilenrang** von $A$ ist die Dimension des Zeilenraums von
    $A$:
    $$\mathrm{rank}_Z(A) = \mathrm{dim}(\mathrm{Lin}(z_1,...,z_m)).$$

------------------------------------------------------------------------

Sei $A\in K^{m\times n}$. Dann stimmen Zeilen- und Spaltenrang der
Matrix $A$ überein und man bezeichnet diesen als **Rang** von $A$:
$$\mathrm{rank}(A) = \mathrm{rank}_Z(A) = \mathrm{rank}_S(A).$$

------------------------------------------------------------------------

Für eine Matrix $A\in K^{n\times n}$ sind folgende Aussagen äquivalent:

1.  Die Spalten von $A$ bilden eine Basis des $K^n$.
2.  Die Zeilen von $A$ bilden eine Basis des $K^n$.
3.  Es gilt $\mathrm{rank}(A) = n$.
4.  $A$ ist ein Produkt von Elementarmatrizen.
5.  $A$ ist invertierbar. Insbesondere wird die Gruppe
    $\mathrm{GL}(n,K)$ von den Elementarmatrizen erzeugt.

::: bsp
**Beispiel**: Bestimmen dse Inversen zu
$$A = \begin{pmatrix}0&0&1\\-1&1&0\\1&0&1\end{pmatrix}\in\Q^{3\times 3}.$$
Dazu bildet man das Tupel $(A,E_3)$: TUDU: Annotationen

```{=tex}
\begin{splitty}
\left( \begin{pmatrix}0&0&1\\-1&1&0\\1&0&1\end{pmatrix}, \begin{pmatrix}1&0&0\\0&1&0\\0&0&1\end{pmatrix}\right) &\leadsto \left( \begin{pmatrix}1&0&1\\-1&1&0\\0&0&1\end{pmatrix}, \begin{pmatrix}0&0&1\\0&1&0\\1&0&0\end{pmatrix}\right)\\
&\leadsto \left( \begin{pmatrix}1&0&0\\-1&1&0\\0&0&1\end{pmatrix}, \begin{pmatrix}-1&0&1\\0&1&0\\1&0&0\end{pmatrix}\right)\\
&\leadsto \left( \begin{pmatrix}1&0&0\\0&1&0\\0&0&1\end{pmatrix}, \begin{pmatrix}-1&0&1\\-1&1&1\\1&0&0\end{pmatrix}\right)
\end{splitty}
```
Damit erhält man
$$A^{-1} = \begin{pmatrix}-1&0&1\\-1&1&1\\1&0&0\end{pmatrix}.$$
:::

# Lineare Gleichungssysteme

::: defi
Ein **lineares Gleichungssystem** über $K$ in den Variablen
$x_1,...,x_n$ ist ein Gleichungssystem der Form

```{=tex}
\begin{splitty}
a_{11}x_1 + ... + a_{1n}x_n &= b_1,\\
&\hspace*{2mm}\vdots\\
a_{m1}x_1 + ... + a_{mn}x_n &= b_m,
\end{splitty}
```
mit Koeffizienten $a_{ij},b_i\in K$. Man nennt das Gleichungssytem
**homogen**, falls $b_1=...=b_m=0$ gilt, und sonst nennt man es
**inhomogen**.

Eine **Lösung** des Gleichungssystems ist ein Vektor $u\in K^n$, der
alle Gleichungen erfüllt. Das System heißt **lösbar**, wenn eine Lösung
existiert.
:::

------------------------------------------------------------------------
