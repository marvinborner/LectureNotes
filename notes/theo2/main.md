---
author: Marvin Borner
date: "`\\today`{=tex}"
lang: de-DE
pandoc-latex-environment:
  bem-box:
  - bem
  bsp-box:
  - bsp
  defi-box:
  - defi
  proof-box:
  - proof
  satz-box:
  - satz
  visu-box:
  - visu
toc-title: Inhalt
---

```{=tex}
\newpage
\renewcommand\O{\mathcal{O}} % IDK WHY
```
# Reguläre Sprachen und endliche Automaten

## Motivation

-   Eingabe
-   Verarbeitung (Berechnungen, Zustände)
-   Ausgabe

## Wörter und Sprachen

::: defi
Ein *Alphabet* $\Sigma$ sei eine nicht-leere, endliche Menge. Ein *Wort*
$w$ ist entsprechend eine Folge von Elementen aus $\Sigma$.
:::

::: bsp
-   $\Sigma=\{a,...,z\}$, $w=\text{luxburg}$, $|w|=7$
:::

::: defi
$\Sigma^n$ ist die Menge aller Wörter der Länge $n$. Die *Kleene'sche
Hülle* ist $\Sigma^*\defeq\bigcup_{n=0}^\infty\Sigma^n$.
$\Sigma^+\defeq\bigcup_{n=1}^\infty\Sigma^n$.

*Sprache $L$ über $\Sigma$* ist eine Teilmenge von $\Sigma^*$.
:::

::: defi
Eine *Konkatenation* ist eine Aneinanderhängung zweier Wörter $u$ und
$w$. Eine Konkatenation zweier *Sprachen* $L_1,L_2$ ist
$L_1\circ L_2\defeq\{uw\mid u\in L_1,\ w\in L_2\}$. Die Kleene'sche
Hülle einer Sprache $L$ ist dann
$L^*\defeq\{\underbrace{x_1...x_k}_{\mathclap{\text{Konkatenation von $k$ Wörtern}}}\mid x_i\in L,\ k\in\N_0\}$.

Eine $k$-fache Aneinanderhängung von Wörtern ist
$w_k=\underbrace{w...w}_\text{$k$-mal}$.
:::

::: bsp
-   $w=010$, $u=001$, $wu=\underbrace{010}_w \underbrace{001}_u$,
    $uwu=\underbrace{001}_u \underbrace{010}_w \underbrace{001}_u$
-   $w^3=010\ 010\ 010$
:::

::: bem
Die Konkatenation auf $\Sigma^*$ hat die Eigenschaften:

-   assoziativ: $a(bc)=(ab)c$
-   nicht kommutativ: $ab\ne ba$
-   neutrales Element $\varepsilon$: $\varepsilon a=a\varepsilon=a$
-   ein inverses Element
:::

::: defi
Ein Wort $x$ heißt *Teilwort* eines Wortes $y$, falls es Wörter $u$ und
$v$ gibt, sodass $y=uxv$.

-   Falls $u=\varepsilon$, $x$ *Präfix* von $y$
-   Falls $v=\varepsilon$, $x$ *Suffix* von $y$
:::

::: bsp
-   $01$ ist Teilwort von $0\textbf{01}11$
-   $10$ ist Präfix von $\textbf{10}10011$
-   $011$ ist Suffix von $10101110\textbf{011}$
:::

## Endlicher, deterministischer Automat

::: defi
Für einen *endlichen, deterministischen Automat*
$(Q,\Sigma,\delta,q_0,F)$ ist

-   $Q$ eine endliche Menge der *Zustände*
-   $\Sigma$ das *Alphabet*
-   $\delta: Q\times\Sigma\to Q$ die Übergangsfunktion
-   $q_0\in Q$ der *Startzustand*
-   $F\subset Q$ die Menge der *akzeptierenden Zustände*
:::

::: bsp
```{=tex}
\begin{center}\begin{tikzpicture}[shorten >=1pt,node distance=2cm,on grid,auto]
  \tikzstyle{every state}=[]

    \node[state,initial]   (q_1)                    {$q_1$};
    \node[state,accepting] (q_2)  [right of=q_1]    {$q_2$};
    \node[state]           (q_3)  [right of=q_2]    {$q_3$};

    \path[->]
    (q_1) edge [loop above] node {0}    (   )
          edge [bend left]  node {1}    (q_2)
    (q_2) edge [bend left]  node {0}    (q_3)
          edge [loop above] node {1}    (   )
    (q_3) edge [bend left]  node {0,1}  (q_2);
\end{tikzpicture}\end{center}
```
$Q=\{q_1,q_2,q_3\}$, $\Sigma=\{0,1\}$, $q_1$ Startzustand, $F=\{q_2\}$.

$\delta$ kann dargestellt werden durch

  /       0       1
  ------- ------- -------
  $q_1$   $q_1$   $q_2$
  $q_2$   $q_3$   $q_2$
  $q_3$   $q_2$   $q_2$

Die Zustandsfolge ist mit $w=001$
$$q_1\xrightarrow{0}q_1\xrightarrow{0}q_1\xrightarrow{1}q_2.$$
:::

::: defi
-   partielle Übergangsfunktion: nicht alle Übergänge sind definiert
-   totale Übergangsfunktion: alle Übergänge sind definiert
:::

::: defi
Eine Folge $s_0,...,s_n\in Q$ von Zuständen heißt *Berechnung* des
Automaten $M=(Q,\Sigma,\delta,q_0,F)$ auf dem Wort $w=w_1...w_n$, falls

-   $s_0=q_0$,q
-   $\forall i=0,...,n-1: s_{i+1}=\delta(s_i,w_{i+1})$

Es ist also eine "gültige" Folge von Zuständen, die man durch Abarbeiten
von $w$ erreicht.
:::

::: bsp
```{=tex}
\begin{center}\begin{tikzpicture}[shorten >=1pt,node distance=2cm,on grid,auto]
  \tikzstyle{every state}=[]

    \node[state,initial]   (q_1)                    {$q_1$};
    \node[state,accepting] (q_2)  [right of=q_1]    {$q_2$};
    \node[state]           (q_3)  [right of=q_2]    {$q_3$};

    \path[->]
    (q_1) edge [loop above] node {0}    (   )
          edge [bend left]  node {1}    (q_2)
    (q_2) edge [bend left]  node {0}    (q_3)
          edge [loop above] node {1}    (   )
    (q_3) edge [bend left]  node {0,1}  (q_2);
\end{tikzpicture}\end{center}
```
-   $w=001$ ergibt die Zustandsfolge $q_1q_1q_1q_2$
:::

::: defi
Eine Berechnung *akzeptiert* das Wort $w$, falls die Berechnung in einem
akzeptierten Zustand endet.

Die von einem endlichen Automaten $M$ *akzeptierte* (erkannte) Sprache
$L(M)$ ist die Menge der Wörter, die von $M$ akzeptiert werden:
$$L(M)\defeq\{w\in\Sigma^*\mid M\text{ akzeptiert } w\}$$
:::

::: bem
Eine Berechnung kann mehrmals in akzeptierenden Zuständen
eintreten/austreten. Wichtig ist der Endzustand, nachdem der letzte
Buchstabe des Eingabewortes verarbeitet wurde.
:::

::: bsp
```{=tex}
\begin{center}\begin{tikzpicture}[shorten >=1pt,node distance=2cm,on grid,auto]
  \tikzstyle{every state}=[]

    \node[state,initial]   (q_1)                    {$q_1$};
    \node[state,accepting] (q_2)  [right of=q_1]    {$q_2$};

    \path[->]
    (q_1) edge [loop above] node {0}    (   )
          edge [bend left]  node {1}    (q_2)
    (q_2) edge [bend left]  node {0}    (q_1)
          edge [loop above] node {1}    (   );
\end{tikzpicture}\end{center}
```
-   $w=1101\rightarrow q_1q_2q_2q_1q_2\rightarrow w$ wird akzeptiert
-   $w=010\rightarrow q_1q_1q_2q_1\rightarrow w$ wird **nicht**
    akzeptiert

Es folgt:
$$L(M)=\{w\in\Sigma^*\mid w=\varepsilon\text{ oder }w\text{ endet mit }0\}$$
:::

::: defi
Sei $\delta:Q\times\Sigma\to Q$ eine Übergangsfunktion. Die *erweiterte
Übergangsfunktion* $\delta^*$: $Q\times\Sigma^*\to Q$ sei induktiv
definiert:

-   $\delta^*(q,\varepsilon)=q$ für alle $q\in Q$
-   Für $w\in\Sigma^*$, $a\in\Sigma$ ist:
    $$\delta^*(q,wa)=\delta(\underbrace{\delta^*(q,w)}_{\mathclap{\text{Zustand nach Lesen von $w$}}}, \overbrace{a}^{\mathclap{\text{Lesen von Buchstabe $a$}}}).$$
:::

## Reguläre Sprachen und Abschlusseigenschaften

::: defi
Eine Sprache $L\subset\Sigma^*$ heißt *reguläre Sprache*, wenn es einen
endlichen Automaten $M$ gibt, der diese Sprache akzeptiert.

Die Menge aller regulären Sprachen ist *REG*.
:::

::: satz
Sei $L$ eine reguläre Sprache über $\Sigma$. Dann ist auch
$\bar{L}\defeq\Sigma^*\setminus L$ eine reguläre Sprache.

::: proof
-   $L$ regulär $\implies$ es gibt Automaten
    $M=(Q,\Sigma,\delta,q_0,F)$, der $L$ akzeptiert
-   Definiere "Komplementautomat"
    $\bar{M}=(Q,\Sigma,\delta,q_0,\bar{F})$ mit
    $\bar{F}\defeq Q\setminus F$.
-   Dann gilt:
    `\begin{align*} w\in\bar{L}&\iff M\text{ akzeptiert }w\text{ nicht}\\ &\iff \bar{M}\text{ akzeptiert }w. \end{align*}\qed`{=tex}
:::
:::

::: satz
Die Menge der regulären Sprachen ist abgeschlossen bezüglich der
Vereinigung: $$L_1,L_2\in\text{REG}\implies L_1\cup L_2\in\text{REG}.$$

::: proof
Sei $M_1=(Q_1,\Sigma_1,\delta_1,s_1,F_1)$ ein Automat, der L_1 erkennt,
$M_2=(Q_2,\Sigma_2,\delta_2,s_2,F_2)$ ein Automat, der L_2 erkennt.

Wir definieren den Produktautomaten $M\defeq M_1\times M_2$:
$M=(Q,\Sigma,\Delta,s,F)$ mit

-   $Q=Q_1\times Q_2$
-   $\Sigma=\Sigma_1\cup\Sigma_2$,
-   $\underbrace{s}_{\mathclap{\text{neuer Startzustand}}}=(s_1,s_2)$,
    $F=\{(f_1,f_2)\mid f_1\in F_1\text{ oder } f_2\in F_2\}$,
-   $\underbrace{\Delta}_{\mathclap{\text{neue Übergangsfunktion}}}: Q\times\Sigma\to Q$,
    $$\Delta((\underbrace{r_1}_{\in Q_1},\underbrace{r_2}_{\in Q_2}),\underbrace{a}_{\in\Sigma})=(\delta_1(r_1,a),\delta(r_2,a)).$$

Übertragung der Definition auf erweiterte Übergangsfunktionen: Beweis
durch Induktion (ausgelassen).

Nach Definition von $F$ akzeptiert $M$ ein Wort $w$, wenn $M_1$ oder
$M_2$ das entsprechende Wort akzeptieren. Der Satz folgt. `\qed`{=tex}
:::
:::

::: bsp
```{=tex}
$M_1$: \begin{center}\begin{tikzpicture}[shorten >=1pt,node distance=2cm,on grid,auto]
  \tikzstyle{every state}=[]

    \node[state,initial]   (q_1)                    {$q_1$};
    \node[state,accepting] (q_2)  [right of=q_1]    {$q_2$};

    \path[->]
    (q_1) edge [loop above] node {0}    (   )
          edge [bend left]  node {1}    (q_2)
    (q_2) edge [bend left]  node {0}    (q_1)
          edge [loop above] node {1}    (   );
\end{tikzpicture}\end{center}
$M_2$: TODO \begin{center}\begin{tikzpicture}[shorten >=1pt,node distance=2cm,on grid,auto]
  \tikzstyle{every state}=[]

    \node[state,initial]   (q_1)                    {$q_1$};
    \node[state]           (q_2)  [right of=q_1]    {$q_2$};
    \node[state,accepting] (q_2)  [right of=q_2]    {$q_2$};

    \path[->]
    (q_1) edge [loop above] node {0}    (   )
          edge [bend left]  node {1}    (q_2)
    (q_2) edge [bend left]  node {0}    (q_1)
          edge [loop above] node {1}    (   )
    (q_3) edge [bend left]  node {0}    (q_1)
          edge [loop above] node {1}    (   );
\end{tikzpicture}\end{center}
$M_1\times M_2$: TODO \begin{center}\begin{tikzpicture}[shorten >=1pt,node distance=2cm,on grid,auto]
  \tikzstyle{every state}=[]

    \node[state,initial]   (q_1)                    {$q_1$};
    \node[state,accepting] (q_2)  [right of=q_1]    {$q_2$};

    \path[->]
    (q_1) edge [loop above] node {0}    (   )
          edge [bend left]  node {1}    (q_2)
    (q_2) edge [bend left]  node {0}    (q_1)
          edge [loop above] node {1}    (   );
\end{tikzpicture}\end{center}
```
:::

::: satz
Seien $L_1,L_2$ zwei reguläre Sprachen. Dann sind auch $L_1\cap L_2$ und
$L_1\setminus L_2$ reguläre Sprachen.

::: proof
-   $L_1\cap L_2$: Beweis funktioniert analog wie für $L_1\cup L_2$, nur
    mit
    $$F\defeq\{(q_1,q_2)\mid q_1\in F_1\text{\textbf{ und }}q_2\in F_2\}.$$
-   $L_1\setminus L_2=L_q\cap\bar{L_2}$

`\qed`{=tex}
:::
:::

## Nicht-deterministische Automaten

::: bsp
TODO (ggf. auch Sipser).

```{=tex}
\begin{center}\begin{tikzpicture}[shorten >=1pt,node distance=2cm,on grid,auto]
  \tikzstyle{every state}=[]

    \node[state,initial]   (q_1)                    {$q_1$};
    \node[state,accepting] (q_2)  [right of=q_1]    {$q_2$};
    \node[state]           (q_3)  [right of=q_2]    {$q_3$};

    \path[->]
    (q_1) edge [loop above] node {0}    (   )
          edge [bend left]  node {1}    (q_2)
    (q_2) edge [bend left]  node {0}    (q_1)
          edge [loop above] node {1}    (   );
\end{tikzpicture}\end{center}
```
:::

::: defi
Ein *nicht-deterministischer Automat* besteht aus einem $5$-Tupel
$(Q,\Sigma,\delta,q_0,F)$.

-   $Q$, $\Sigma$, $q_0$, $F$ wie beim deterministischen Automat,
-   $\delta: Q\times\Sigma\cup\{\varepsilon\}\to\overbrace{\pot(Q)}^{(*)}$
    Übergangsfunktion

$(*)$: Die Funktion definiert die **Menge** der möglichen Zustände, in
die man von einem Zustand durch Lesen eines Buchstabens gelangen kann.
:::

::: defi
Sei $M=(Q,\Sigma,\delta,q_0,F)$ ein nicht-deterministischer endlicher
Automat, $w=w_1...w_n\in\Sigma^*$. Eine Folge von Zuständen
$s_0,s_1,...,s_m\in Q$ heißt *Berechnng von $M$ auf $w$*, falls man $w$
schreiben kann als $w=u_1u_2...u_m$ mit
$u_i\in\Sigma\cup\{\underbrace{\varepsilon}_{\mathclap{\text{Übergänge $\varepsilon$, hier $u_i=\varepsilon$}}}\}$,
sodass

-   $s_0=q_0$,
-   für alle $0\le i\le m-1:s_{i+1}\in\delta(s_1,u_{i+1}).$

Die Berechnung heißt *akzeptierend*, falls $s_m\in F$.

Der nicht-deterministische Automat $M$ *akzeptiert Wort $w$*, falls es
eine akzeptierende Berechnung von $M$ auf $w$ gibt.
:::

::: bem
$\varepsilon$-Transitionen: TODO.
:::

::: bsp
Betrachte die regulären Sprachen

-   $A\defeq\{x\in\{0,1\}^*\mid\text{Anzahl }0\text{ gerade}\}$
-   $B\defeq\{x\in\{0,1\}^*\mid\text{Anzahl }0\text{ ungerade}\}$

Zugehörige Automaten: TODO

Nun betrachte *Konkatenation $AB$*. Um die Sprache zu erkennen, müsste
der Automat bei einer Eingabe zunächst einen ersten Teil $A$ des Wortes
betrachten und schauen, ob die Anzahl der $0$ gerade ist. **Irgendwann**
müsste er beschließen, dass nun der zweite Teil $B$ des Wortes anfängt
und er müsste schauen, ob dort die Anzahl der $0$ ungerade ist.

$$\text{"Irgendwann"}\implies\text{nicht-deterministisch.}$$

TODO: Graph.
:::

## Mächtigkeit

::: bem
Die Mächtigkeit eines Automaten wird hierbei beschrieben durch die
Anzahl an Sprachen, die dieser erkennen kann.
:::

::: defi
Zwei Automaten $M_1$, $M_2$ heißen *äquivalent*, wenn sie die gleiche
Sprache erkennen: $$L(M_1)=L(M_2)$$
:::

::: satz
Zu jedem nicht-deterministischen endlichen Automaten gibt es einen
äquivalenten deterministischen endlichen Automaten.

::: proof
Lang aber trivial. Basically konstruiert man einfach eine
deterministische Übergangsfunktion auf den nicht-deterministischen
Verzweigungen.
:::
:::

::: satz
Es folgt:

Eine Sprache $L$ ist regulär $\iff$ es gibt einen
nicht-deterministischen Automaten, der $L$ akzeptiert.
:::

::: satz
Die Klasse der regulären Sprachen ist abgeschlossen unter Konkatenation:
$$L_1,L_2\in\mathrm{REG}\implies L_1L_2\in\mathrm{REG}$$
:::

::: satz
Die Klasse REG ist abgeschlossen unter Bildung der Kleene'schen Hülle,
d.h.: $$L\in\mathrm{REG}\implies L^*\in\mathrm{REG}$$
:::

## Reguläre Ausdrücke

::: defi
Sei $\Sigma$ ein Alphabet. Dann:

-   $\underbrace{\emptyset}_{\mathclap{\text{leere Sprache}}}$ und
    $\overbrace{\varepsilon}^{\mathclap{\text{leeres Wort}}}$ sind
    reguläre Ausdrücke.
-   Alle Buchstaben aus $\Sigma$ sind reguläre Ausdrücke.
-   Falls $R_1$, $R_2$ reguläre Ausdrücke sind, dann sind auch die
    folgenden Ausdrücke regulär:
    -   $R_1\cup R_2$,
    -   $R_1\circ R_2$,
    -   $R_1^*$.
:::

::: defi
Sei $R$ ein regulärer Ausdruck. Dann ist die *von $R$ induzierte Sprache
$L(R)$* wie folgt definiert:

-   $R=\emptyset\implies L(R)=\emptyset$
-   $R=\epsilon\implies L(R)=\{\varepsilon\}$
-   $R=\sigma\text{ für ein }\sigma\in\Sigma\implies L(R)=\{\sigma\}$
-   $R=R_1\cup R_2\implies L(R)=L(R_1)\cup L(R_2)$
-   $R=R_1\circ R_2\implies L(R)=L(R_1)\circ L(R_2)$
-   $R=R_1^*\implies L(R)=(L(R_1))^*$
:::

::: satz
Eine Sprache ist genau dann regulär, wenn sie durch einen regulären
Ausdruck beschrieben wird.

::: proof
Strukturelle Induktion. Tja.
:::
:::
