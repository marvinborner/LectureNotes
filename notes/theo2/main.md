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
  hypo-box:
  - hypo
  motiv-box:
  - motiv
  proof-box:
  - proof
  satz-box:
  - satz
toc-title: Inhalt
---

# Reguläre Sprachen und endliche Automaten

::: motiv
-   Eingabe
-   Verarbeitung (Berechnungen, Zustände)
-   Ausgabe
:::

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
$\overline{L}\defeq\Sigma^*\setminus L$ eine reguläre Sprache.

::: proof
-   $L$ regulär $\implies$ es gibt Automaten
    $M=(Q,\Sigma,\delta,q_0,F)$, der $L$ akzeptiert
-   Definiere "Komplementautomat"
    $\overline{M}=(Q,\Sigma,\delta,q_0,\overline{F})$ mit
    $\overline{F}\defeq Q\setminus F$.
-   Dann gilt:
    `\begin{align*} w\in\overline{L}&\iff M\text{ akzeptiert }w\text{ nicht}\\ &\iff \overline{M}\text{ akzeptiert }w. \end{align*}\qed`{=tex}
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

    \node[state,initial]   (s_1)                    {$s_1$};
    \node[state,accepting] (s_2)  [right of=s_1]    {$s_2$};

    \path[->]
    (s_1) edge [bend left]  node {0,1}  (s_2)
    (s_2) edge [bend left]  node {0,1}  (s_1);
\end{tikzpicture}\end{center}
$M_2$: \begin{center}\begin{tikzpicture}[shorten >=1pt,node distance=2cm,on grid,auto]
  \tikzstyle{every state}=[]

    \node[state,initial]   (q_1)                         {$q_1$};
    \node[state]           (q_2)  [below right of=q_1]   {$q_2$};
    \node[state,accepting] (q_3)  [above right of=q_2]   {$q_3$};

    \path[->]
    (q_1) edge [bend left]  node {0}    (q_3)
          edge [bend left]  node {1}    (q_2)
    (q_2) edge [bend left]  node {0}    (q_1)
          edge [bend right] node {1}    (q_3)
    (q_3) edge [loop above] node {0,1}  (   );
\end{tikzpicture}\end{center}
$M_1\times M_2$: \begin{center}\begin{tikzpicture}[shorten >=1pt,node distance=2.5cm,on grid,auto]
  \tikzstyle{every state}=[]

    \node[state,initial]   (s_1q_1)                           {$s_1,q_1$};
    \node[state,accepting] (s_2q_3)  [above right of=s_1q_1]  {$s_2,q_3$};
    \node[state,accepting] (s_1q_3)  [below right of=s_2q_3]  {$s_1,q_3$};
    \node[state,accepting] (s_2q_2)  [below right of=s_1q_1]  {$s_2,q_2$};

    \path[->]
    (s_1q_1) edge [bend left]  node {0}    (s_2q_3)
             edge [bend left]  node {1}    (s_2q_2)
    (s_2q_2) edge [bend right] node {1}    (s_1q_3)
             edge [bend left]  node {0}    (s_1q_1)
    (s_1q_3) edge [bend left]  node {0,1}  (s_2q_3)
    (s_2q_3) edge [bend left]  node {0,1}  (s_1q_3);
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
-   $L_1\setminus L_2=L_q\cap\overline{L_2}$

`\qed`{=tex}
:::
:::

## Nicht-deterministische Automaten

::: bsp
```{=tex}
\begin{center}\begin{tikzpicture}[shorten >=1pt,node distance=2cm,on grid,auto]
  \tikzstyle{every state}=[]

    \node[state,initial]   (q_1)                    {$q_1$};
    \node[state]           (q_2)  [right of=q_1]    {$q_2$};
    \node[state]           (q_3)  [right of=q_2]    {$q_3$};
    \node[state,accepting] (q_4)  [right of=q_3]    {$q_4$};

    \path[->]
    (q_1) edge []           node {1}               (q_2)
          edge [loop above] node {0,1}             (   )
    (q_2) edge []           node {0,$\varepsilon$} (q_3)
    (q_3) edge []           node {1}               (q_4)
    (q_4) edge [loop above] node {0,1}             (   );
\end{tikzpicture}\end{center}
```
Der komplette Berechnungsbaum:

```{=tex}
\begin{center}\begin{forest} for tree={l=1.5cm,circle,draw},
    [$q_1$
      [$q_1$,edge label={node[midway,right]{0}}
        [$q_1$,edge label={node[midway,right]{1}}
          [$q_1$,edge label={node[midway,right]{0}}
            [$q_1$,edge label={node[midway,right]{1}}
              [$q_1$,edge label={node[midway,right]{0}}]]
            [$q_2$,edge label={node[midway,right]{1}}
              [$q_3$,edge label={node[midway,right]{0}}]]
            [$q_3$,edge label={node[midway,right]{1$\varepsilon$}}]]
          [$q_2$,edge label={node[midway,right]{1}}]
          [$q_3$,edge label={node[midway,right]{1$\varepsilon$}}
            [$q_4$,edge label={node[midway,right]{1}}
              [$q_4$,edge label={node[midway,right]{0}}]]]]
        [$q_2$,edge label={node[midway,right]{1}}
          [$q_3$,edge label={node[midway,right]{0}}
            [$q_4$,edge label={node[midway,right]{1}}
              [$q_4$,edge label={node[midway,right]{1}}
                [$q_4$,edge label={node[midway,right]{0}}]]]]]
        [$q_3$,edge label={node[midway,right]{1$\varepsilon$}}]]]
\end{forest}\end{center}
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
$\varepsilon$-Transitionen: Ein nicht-deterministischer Automat kann bei
"Lesen" des leeren Wortes $\varepsilon$ einen Übergang machen, falls es
so in der Übergangsfunktion definiert ist.
:::

::: bsp
Betrachte die regulären Sprachen

-   $A\defeq\{x\in\{0,1\}^*\mid\text{Anzahl }0\text{ gerade}\}$
-   $B\defeq\{x\in\{0,1\}^*\mid\text{Anzahl }0\text{ ungerade}\}$

Zugehörige Automaten:`\bigskip`{=tex}

```{=tex}
\begin{minipage}{0.5\textwidth}\begin{center}
$M_A$:\bigskip\\\begin{tikzpicture}[shorten >=1pt,node distance=2cm,on grid,auto]
  \tikzstyle{every state}=[]

    \node[state,initial,accepting]  (q_1)                 {$q_1$};
    \node[state]                    (q_2)  [right of=q_1] {$q_2$};

    \path[->]
    (q_1) edge [loop above] node {1}  (   )
          edge [bend left]  node {0}  (q_2)
    (q_2) edge [loop above] node {1}  (   )
          edge [bend left]  node {0}  (q_1);
\end{tikzpicture}\end{center}\end{minipage}%
\begin{minipage}{0.5\textwidth}\begin{center}
$M_B$:\bigskip\\\begin{tikzpicture}[shorten >=1pt,node distance=2cm,on grid,auto]
  \tikzstyle{every state}=[]

    \node[state,initial]   (q_1)                 {$q_1$};
    \node[state,accepting] (q_2)  [right of=q_1] {$q_2$};

    \path[->]
    (q_1) edge [loop above] node {1}  (   )
          edge [bend left]  node {0}  (q_2)
    (q_2) edge [loop above] node {1}  (   )
          edge [bend left]  node {0}  (q_1);
\end{tikzpicture}\end{center}\end{minipage}
```
Nun betrachte *Konkatenation $AB$*. Um die Sprache zu erkennen, müsste
der Automat bei einer Eingabe zunächst einen ersten Teil $A$ des Wortes
betrachten und schauen, ob die Anzahl der $0$ gerade ist. **Irgendwann**
müsste er beschließen, dass nun der zweite Teil $B$ des Wortes anfängt
und er müsste schauen, ob dort die Anzahl der $0$ ungerade ist.

$$\text{"Irgendwann"}\implies\text{nicht-deterministisch.}$$

```{=tex}
\begin{center}\begin{tikzpicture}[shorten >=1pt,node distance=2cm,on grid,auto]
  \tikzstyle{every state}=[]

    \node[state,initial,accepting]  (q_1_1)                   {$q_1$};
    \node[state]                    (q_2_1)  [right of=q_1_1] {$q_2$};
    \node[state]                    (q_1_2)  [below of=q_1_1] {$\hat q_1$};
    \node[state,accepting]          (q_2_2)  [right of=q_1_2] {$\hat q_2$};

    \path[->]
    (q_1_1) edge [loop above] node {1}             (   )
            edge [bend left]  node {0}             (q_2)
            edge []           node {$\varepsilon$} (q_1_2)
    (q_2_1) edge [loop above] node {1}             (   )
            edge [bend left]  node {0}             (q_1_1)
    (q_1_2) edge [loop below] node {1}             (   )
            edge [bend left]  node {0}             (q_2_2)
    (q_2_2) edge [loop below] node {1}             (   )
            edge [bend left]  node {0}             (q_1_2);
\end{tikzpicture}\end{center}
```
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
-   $R=\varepsilon\implies L(R)=\{\varepsilon\}$
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

## Pumping-Lemma

::: motiv
Frage: Gibt es Sprachen, die nicht regulär sind?

::: bsp
$$L=\{0^n1^n\mid n\in\N\}=\{01,0011,00111,...\}$$ Ein Automat, der $L$
erkennt, müsste vermutlich "zählen" können. Mit endlich vielen Zuständen
scheint dies für beliebig große Zahlen nicht möglich zu sein.

Aber: Wir kann man das formal beweisen?
:::
:::

::: satz
Sei $A$ eine reguläre Sprache über das Alphabet $\Sigma$. Dann gibt es
eine natürliche Zahl $n$, sodass sich alle Wörter $s\in A$ mit Länge
$|s|\ge n$ zerlegen lassen in drei Teilworte $s=xyz$, mit
$x,y,z\in\Sigma^*$, sodass gilt:

-   $|y|>0$,
-   $|xy|\le n$,
-   $\forall i\ge0: xy^iz\in A$

::: proof
Idee: Ein Automat mit $n$ Zuständen besucht für die Verarbeitung eines
Wortes $w$ mit Länge $>n$ immer $n+1$ Zustände $\implies$ es gibt einen
Zustand, der mindestens zweimal besucht wird.
:::
:::

::: bem
Aus der Kontraposition folgt: $A$ nicht regulär
$\implies\forall n\exists s\forall x,y,z\in\Sigma^*\exists i:xy^iz\notin A$
:::

::: bsp
Wir zeigen mit dem Pumping-Lemma, dass $L=\{0^n1^n\mid n\in\N\}$ nicht
regulär ist.

::: proof
Betrachte ein beliebiges $n\in\N$. Wähle das Wort $s=0^n1^n$ (es gilt
$|s|>n$). Sei nun $xyz=s$ eine beliebige Zerlegung (mit $|y|>0$,
$|xy|\le n$). Man muss nun ein $i$ finden, soadss $xy^iz$ nicht in $L$
ist.

-   Fall 1: $y$ besteht nur aus $0$en:
    $s=\overbrace{0}^x\overbrace{00}^y\overbrace{...0111...1}^z$. Dann
    ist $xy^2z\notin L$ (da es mehr $0$en als $1$en hat).
-   Fall 2: $y$ besteht nur aus $1$en: analog.
-   Fall 3: $y$ hat $0$en und $1$en:
    $s=\overbrace{0...0}^x\overbrace{011}^y\overbrace{...1}^z$. Dann ist
    aber $xy^2z\notin L$.
:::
:::

## Pushdown automaton

::: motiv
Endliche Automaten haben nur endlichen Speicher, können also nicht mal
zählen. Deshalb ein erweitertes Modell: Automat mit Stack als Speicher.
:::

::: defi
Ein nicht deterministischer *Kellerautomat* besteht aus einem 6-Tupel
($Q$, $\Sigma$, $\Gamma$, $\delta$, $q_0$, $F$), wobei gilt:

-   $Q$ endliche Zustandsmenge
-   $\Sigma$ Eingabealphabet
-   $\Gamma$ Stack-Alphabet
-   $q_0\in Q$ Startzustand
-   $F\subset Q$ Menge der akzeptierenden Zustände
-   Übergangsfunktion:
    $$\delta: Q\times(\Sigma\cup\{\varepsilon\})\times(\Gamma\cup\{\varepsilon\})\to\pot(Q\times(\Gamma\cup\{\varepsilon\}))$$
:::

::: bsp
$$L=\{ww^R\mid w\text{ Wort über }\Sigma\}$$ wobei $w^R$ das Wort $w$
rückwärts ist, kann von einem (nicht-deterministischen) Kellerautomaten
erkannt werden.
:::

::: bsp
$$L=\{a^nb^nc^n\mid n\in\N\}$$ kann von einem Kellerautomaten *nicht*
erkannt werden.
:::

::: bem
Die Sprachen, die von einem nicht-deterministischen Kellerautomaten
erkannt werden können, heißen *kontextfreie Sprachen*. Bei
deterministischen Kellerautomaten heißen sie entsprechend
*deterministische kontextfreie Sprachen*.
:::

## Grammatiken

Nicht wirklich relevant.

::: bem
-   Backus-Naur Schreibweise
-   Chomsky-Hierarchie
:::

# Turingmaschinen

::: motiv
Ein allgemeineres Modell eines Computers:

-   kann eine Eingabe lesen
-   hat beliebig viel Speicherplatz
-   kann Dinge an beliebigen Stellen in den Speicher schreiben/lesen
-   kann beliebig viele Rechenschritte machen
:::

::: bsp
Betrachte die Sprache $L=\{w\#w\mid w\in\{0,1\}^*\}$.

-   lies den ersten Buchstaben und merke
-   überschreibe mit Symbol $x\notin\{0,1,\#\}$
-   nach rechts bis $\#$ erscheint
-   vergleiche nächsten ($\ne y$) Buchstabe mit gemerkten
-   falls gleich:
    -   überschreibe mit $y\notin\{0,1,\#,x\}$
    -   gehe zurück bis $x$
    -   wiederhole
:::

::: defi
Eine *Turingmaschine (TM)* ist ein 7-Tupel
$(Q,\Sigma,\Gamma,\delta,q_0,q_{\text{accept}}, q_{\text{reject}})$:

-   $Q$ ist eine endliche Menge von *Zuständen*
-   $\Sigma$ ist eine endliche Menge, das *Eingabealphabet*
-   $\Gamma$ ist eine endliche Menge, das *Arbeitsalphabet*, mit
    $\Sigma\subset\Gamma$ und einem Leerzeichen
    `\textvisiblespace`{=tex}
-   $\delta: Q\times\Gamma\to Q\times\Gamma\times\{L,R\}$ die
    *Übergangsfunktion*
-   $q_0\in Q$ der *Startzustand*
-   $q_\text{accept}\in Q$ der *akzeptierende Endzustand*
-   $q_\text{reject}\in Q$, $q_\text{reject}\ne q_\text{accept}$ der
    *verwerfende Endzustand*
:::

::: bem
-   Es gibt genau einen akzeptierenden und verwerfenden Zustand
-   Die TM beendet ihre Berechnung, sobald sie einen dieser beiden
    Zustände erreicht
-   Das Band der TM hat "ein linkes Ende", nach rechts ist es
    unbeschränkt
:::

::: bsp
TM, die $L=\{0^{2^n}\mid n\in\N_0\}$ erkennt.

-   $Q=\{q_1,q_2,q_3,q_4,q_5,q_\text{accept},q_\text{reject}\}$
-   $\Sigma=\{0\}$
-   $\Gamma=\{0,x,\text\textvisiblespace\}$
-   $\delta=\text{tja?}$
:::

::: defi
Eine *Konfiguration* der TM $M$ wird beschrieben durch den Inhalt des
Bandes, die Position des Lesekopfes und den derzeitigen Zustand
$q\in Q$: $$uqv$$

-   Inhalt des Speicherbandes ist String $uv$
-   Position des Schreibkopfes ist direkt nach $u$, auf dem ersten
    Buchstaben von $v$
-   Zustand ist $q$

Außerdem:

-   Die *Startkonfiguration* von $M$ auf Eingabe $w$ ist $q_0w$
-   Eine Konfiguration heißt *akzeptierend/verwerfend*, wenn der Zustand
    $q_\text{accept}$/$q_\text{reject}$ ist
:::

::: defi
Eine *Berechnung* der TM $M$ auf Eingabe $w$ ist eine gültige Folge von
Konfigurationen $C_0,C_1,C_2,...$, sodass $C_0$ die Startkonfiguration
ist und die Konfiguration $C_{i+1}$ jeweils in der Übergangsfunktion
beschrieben aus $C_i$ hervorgeht.

Eine Berechnung einer TM auf Eingabe $w$ heißt
*akzeptierend/verwerfend*, falls sie im Zustand
$q_\text{accept}$/$q_\text{reject}$ endet.

Eine Berechnung heißt *nicht-akzeptierend*, falls sie entweder in
$q_\text{reject}$ endet oder *nie beendet wird*.
:::

::: defi
Eine Sprache $L$ heißt *rekursiv aufzählbar (semi-entscheidbar)*, falls
es eine TM $M$ gibt, die $L$ akzeptiert. Das heißt:

-   $w\in L\implies M\text{ akzeptiert }w$
-   $w\notin L\implies M\text{ verwirft oder hält nicht an}$
:::

::: defi
Eine Sprache $L$ heißt *(rekursiv) entscheidbar*, falls es eine TM $M$
gibt, sodass gilt:

-   $w\in L\implies M\text{ akzeptiert }w$
-   $w\notin L\implies M\text{ verwirft }w$

**$M$ hält immer an.**
:::

## Varianten

::: defi
Zwei Turing-Machinen $M_1$, $M_2$ heißen *äquivalent*, falls sie die
gleichen Sprachen akzeptieren: $L(M_1)=L(M_2)$.
`\begin{align*} M_1\text{ akzeptiert }w&\implies M_2\text{ akzeptiert }w\\ M_1\text{ akzeptiert }w\text{ nicht}&\implies M_2\text{ akzeptiert }w\text{ nicht} \end{align*}`{=tex}
:::

::: defi
Wir können wie bei endlichen Automaten eine *nicht-deterministische
Turingmaschine (NTM)* definieren:

-   Zu jedem Zeitpunkt hat die TM mehrere Möglichkeiten, wie sie
    fortfahren kann
-   Formal geht dann die Übergangsfunktion
    $$\delta:Q\times\Gamma\to\pot(Q\times\Gamma\times\{L,R\})$$
:::

::: defi
Eine *Berechnung* der NTM entspricht einem möglichen Pfad im "Baum der
möglichen Berechnungen".

Eine Berechnung heißt *akzeptierend/verwerfend*, falls sie in einem
*akzeptierenden/verwerfenden* Zustand endet.

Die von der NTM *akzeptierte Sprache* besteht aus den Wörtern, für die
es eine akzeptierende Berechnung gibt: Mindestens einer der Pfade im
Berechnungsbaum endet im akzeptierenden Zustand.
:::

::: bem
-   bei DTMs: nicht akzeptierend $\iff$ verwerfen oder nicht terminieren
-   bei NTMs: nicht akzeptierend
    $\iff \forall\text{Pfade: Pfad verwirft oder endet nicht}$
:::

::: satz
$$\text{DTM }\underbrace{\equiv}_{\mathclap{\text{berechenbarkeitsäquivalent}}}\text{ NTM}$$

::: proof
Breitensuche im Berechnungsbaum. Blabla offensichtlich.
:::
:::

# Entscheidbarkeit von Sprachen vs. Berechenbarkeit von Funktionen

::: defi
Eine Funktion $f:\Sigma^*\to\Gamma^*$ heißt *(Turing)-berechenbar* oder
*totalrekursiv*, falls es eine TM gibt, die bei Eingabe von
$w\in\Sigma^*$ den Funktionswert $f(w)$ ausgibt (und insbesondere
anhält).
:::

::: satz
Eine Sprache $L\subset\Sigma^*$ ist genau dann *entscheidbar*, wenn ihre
charakteristische Funktion
$$\mathbb1_L:\Sigma^*\to\{0,1\},\mathbb1_L(w)=\begin{cases}1&w\in L\\0&\text{sonst}\end{cases}$$
*berechenbar* ist.

::: proof
-   $L\text{ entscheidbar}\implies\mathbb1_L\text{ berechenbar}$
    -   TM $M$, die $w$ genau dann akzeptiert, wenn $w\in L$. Erweitern
        zu $\hat M$:
        -   falls $M$ akzeptiert, schreibe 1 auf Band und lösche alles
            andere
        -   falls $M$ verwirft, schreibe 0 aufs Band
-   $\mathbb1_L\text{ berechenbar}\implies L\text{ entscheidbar}$
    -   $\hat M$ berechnet $\mathbb1_L$
        -   TM gibt 1 $\implies$ akzeptierender Zustand
        -   TM gibt 0 $\implies$ verwerfender Zustand `\qed`{=tex}
:::
:::

::: satz
Eine Funktion $f:\Sigma^*\to\Gamma^*$ ist *berechenbar* genau dann, wenn
es eine TM gibt, die die folgende Sprache *entscheidet*:
$$L_f=\{w\#g\mid w\in\Sigma^*,g\in\Gamma^*,f(w)=g\}$$

::: proof
-   $f:\Sigma^*\to\Gamma^*\text{ berechenbar}\implies L_f\text{ entscheidet}$
    -   TM $M_1$ berechnet bei $w\in\Sigma^*$ Ausgabe von $f(w)$
    -   TM $M_2$ bekommt $w\#g$ und ruft $M_1$ mit $w$ auf
    -   $M_2$ wartet auf Ergebnis $g_1$ von $M_1$
    -   $M_2$ vergleicht $g_1$ mit $g$
-   $L_f\text{ entscheidet}\implies f:\Sigma^*\to\Gamma^*\text{ berechenbar}$
    -   TM $M_2$ entscheidet $L_f$
    -   TM $M_1$ bekommt $w$
    -   $M_1$ probiert *alle* Antworten von $f(w)$ aus bis die richtige
        Antwort gefunden wurde
    -   sobald $L_f$ akzeptiert, weiß $M_1$ die Antwort `\qed`{=tex}
:::
:::

## Gödelnummer

::: motiv
Programmierbare Turingmaschinen?

$\implies$ binäre Kodierung für TM?!
:::

::: bsp
Eine beispielhafte Kodierung einer TM
$M=(Q,\Sigma,\Gamma,\delta,q_0,q_\text{accept},q_\text{reject})$ mit
$\{0,1,\#\}$:

-   $\Gamma=\{A_1,...,A_r\}$: $C(A_j)=10^j1$
-   $Q=\{q_1,...,q_m\}$: $C(q_i)=110^i11$
-   $C(L)=1110111$ und $C(R)=11100111$
-   $C(\delta(q,a)=(\hat q,\hat a,B))=\#C(q)C(a)C(\hat q)C(\hat a)C(B)\#$

$\implies C(M)=\#0^m\#0^r\#C(t_1)\#C(t_2)\#...$ mit Transitionen $t_i$,
$m=|Q|$ und $r=|\Gamma|$.

Ein reiner binärer String lässt sich durch
$0\mapsto00,1\mapsto11,\#\mapsto01$ bilden.

::: bem
Die Kodierung ist

-   injektiv: $C(M_1)=C(M_2)\implies M_1=M_2$.
-   *präfixfrei*
:::
:::

::: satz
Es gibt eine TM $A_\text{true}$, die für einen binären String $w$
entscheidet, ob er eine gültige Kodierung einer TM ist.
:::

::: defi
Seien $x,y\in\{0,1\}^+$ zwei binäre Strings. $x\le y$ falls $n_x,n_y$
die durch die Strings repräsentiert werden, $n_x\le n_y$ repräsentieren.

Für $x=\varepsilon,y\in\{0,1\}^*$ gelte immer $\varepsilon\le y$.

::: bem
Erfüllt die Bedingungen einer *totalen Ordnung*: Transitiv,
anti-symmetrisch und total.
:::
:::

::: defi
Sei $x\in\{0,1\}^*$. Für $i\in\N$ nennt man $x$ die Kodierung der
*$i$-ten Turingmaschine*, falls gilt:

-   $x=C(M)$ für eine TM $M$
-   $\{y\in\{0,1\}^*\mid y\le x\}$ enthält genau $i-1$ Wörter, die
    Kodierungen von Turingmaschinen sind.
:::

::: satz
Es gibt eine TM $A$, die für ein $i\in\N$ die Kodierung der $i$-ten TM
berechnet.
:::

::: defi
**Informell**: Die natürliche Zahl (der binäre String), der eine
Turingmaschine beschreibt, heißt die *Gödelnummer der TM*. Schreibweise
$\langle M\rangle$.

**Formell**: Sei $\mathcal M$ die Menge aller Turingmaschinen. Die
*Gödelisierung* sei $g:\mathcal M\to\N$, falls gilt:

-   $g$ ist injektiv
-   $g(\mathcal M)$ ist entscheidbar (TM konstruierbar, die für jedes
    $n\in\N$ entscheidet, ob $n\in G(\mathcal M) gilt$)
-   $g:\mathcal M\to N$ und $g^{-1}:g(\mathcal M)\to\mathcal M$ sind
    berechenbar

$g(M)$ heißt für $M\in\mathcal M$ die *Gödelnummer* von $M$.
:::

## Die universelle Turingmaschine

::: motiv
Turingmaschinen können bis jetzt nur genau ein Programm ausführen, aber
wir wollen mehr!! :((
:::

::: bsp
Eine Möglichkeit ist eine *3-Band-TM*:

-   Auf Band 1 wird $M$ simuliert
-   Auf Band 2 wird die Gödelnummer $\langle M\rangle$ geschrieben
-   Auf Band 3 wird der aktuelle Zustand von $M$ vermerkt

Vorbereitung:

-   $U$ liest $\langle M\rangle w$ auf Band 1 und teilt sie in
    $\langle M\rangle$ und $w$ auf
    -   bricht ab, falls $\langle M\rangle$ keine korrekte Kodierung ist
-   $U$ kopiert $\langle M\rangle$ auf Band 2 und löscht sie von Band 1
-   $U$ schreibt die Kodierung des Startzustandes von $M$ auf Band 3

Simulation:

-   $U$ weiß mittels Band 3 den aktuellen Zustand
-   $U$ liest den aktuellen Buchstaben von Band 1
-   $U$ sucht auf Band 2 den zugehörigen Übergang
-   $U$ führt Übergang auf Band 1 durch und merkt sich den neuen Zustand
    in Band 3

Ausgabe:

-   $U$ stoppt, sobald Band 3 den akzeptierenden/verwerfenden Zustand
    erreicht
-   Band 1 enthält die Ausgabe der Berechnung
:::

## Abzählbar unendliche Mengen

::: motiv
Es gibt **viel** mehr Sprachen als Turingmaschinen $\implies$ es gibt
Sprachen, die nicht von TMs erkannt werden können.
:::

::: defi
Eine Menge $M\ne\emptyset$ heißt *endlich*, falls es ein $n_0\in\N$
gibt, für das es eine bijektive Abbildung $$g:\{1,2,...,n_0\}\to M$$
gibt. Andernfalls heißt $M$ *unendlich*.

Im endlichen Fall bezeichnet man mit $|M|\defeq n_0$ die
*Kardinalität*/*Mächtigkeit* der Menge.
:::

::: defi
Zwei Mengen $M_1,M_2$ heißen *gleich mächtig*, falls es eine bijektive
Abbildung $M_1\to M_2$ gibt.

$M_2$ heißt *mächtiger als* $M_1$, falls es eine injektive Abbildung
$f:M_1\to M_2$ und keine injektive Abbildung $g:M_2\to M_1$ gibt.
:::

::: defi
Menge $M$ heißt *abzählbar unendlich*, wenn sie gleich mächtig wie $\N$
ist (es existiert Bijektion $f:M\to\N$).

Menge $M$ heißt *höchstens abzählbar*, wenn sie endlich oder abzählbar
unendlich ist.

Eine Menge, die weder endlich noch abzählbar ist, heißt *überabzählbar*.
:::

::: bem
Menge $\N$ ist unendlich und abzählbar:
$$f:\N\to\N,n\mapsto n\text{ bijektiv}$$
:::

### Spaß mit Abzählbarkeit

::: motiv
Oh nein mein Hotel hat unendlich viele Zimmer und alle sind besetzt!

Jetzt kommt noch ein Gast aber wo soll der hin??

Dann kommt noch ein Bus mit abzählbar vielen Leuten -- was soll ich
tun??!?
:::

::: bsp
-   $\Z$ ist abzählbar mit folgender Bijektion:

      $\N$    1   2   3    4   5    6   7
      ------ --- --- ---- --- ---- --- ----
      $\Z$    0   1   -1   2   -2   3   -3

-   $\N^2$ ist abzählbar mit cooler zickidizickzack Bijektion

-   $\Q$ ist abzählbar mit noch coolerer zickidizickzack Bijektion
:::

::: satz
Eine Menge ist genau dann unendlich, wenn es eine echte Teilmenge
$U\subset M,M\ne M$ und eine injektive Abbildung $f:M\to U$ gibt.
:::

::: satz
Sei $M$ eine beliebige unendliche Menge. Dann ist $\N$ nicht mächtiger
als $M$.
:::

::: satz
-   Sei $A$ höchstens abzählbar, $f:A\to B$ bijektiv. Dann ist auch $B$
    höchstens abzählbar.

-   $M$ abzählbar, $N\subset M$. Dann ist $N$ endlich oder abzählbar.

-   Seien $M_1,M_2,...$ abzählbare Mengen. Dann ist
    $\bigcup_{i\in\N}M_i$ auch abzählbar.

-   Endliche Produkte von abzählbaren Mengen sind abzählbar:
    $M_1,M_2,...,M_n$ abzählbar. Dann $M_1\times M_2\times...\times M_n$
    abzählbar

    ::: bem
    Gilt nicht für unendliche Produkte! Bspw. $2^\N$ ist überabzählbar.
    :::
:::

## Wie groß ist $\Sigma^*$?

::: satz
$\Sigma^*$ ist unendlich.

::: proof
-   $\Sigma$ enthält mindestens einen Buchstaben: $a\in\Sigma$
-   $\Sigma^*$ enthält demnach $a,a^2,a^3,...$
-   Also existiert injektive Abbildung $f:\N\to\Sigma^*,f(u)=a^i$, also
    muss $\Sigma^*$ unendlich groß sein `\qed`{=tex}
:::
:::

::: satz
$\Sigma^*$ ist abzählbar unendlich.

::: proof
Bijektive Abbildung $f:\N\to\Sigma^*$:
$$\Sigma^*=\{\text{Wörter mit Länge 0}\}\cup\{\text{Wörter mit Länge 1}\}\cup...$$

-   $f$ ist wohldefiniert: Jedes $n\in\N$ erhält genau ein Bildwort
    $f(n)\in\Sigma^*$ (klar)
-   Surjektiv: Jedes Wort von $\Sigma^*$ kriegt mindestens eine Nummer
    (klar)
-   Injektiv: Jedes Wort von $\Sigma^*$ kriegt genau eine Nummer (klar)
    `\qed`{=tex}
:::
:::

::: satz
Sei $L$ eine Sprache über einem endlichen Alphabet. Dann ist $L$
höchstens abzählbar.
:::

::: satz
Die Menge aller Turingmaschinen ist abzählbar.

::: proof
TM $M$ kann eindeutig durch GN $\langle M\rangle\in\{0,1\}^*$
beschrieben werden und $\{0,1\}^*$ ist abzählbar. `\qed`{=tex}
:::
:::

## Überabzählbare Mengen

::: satz
Die Menge der reelen Zahlen ist überabzählbar.

::: proof
Über Cantorsches Diagonalisierungsverfahren. Trivial.
:::
:::

::: bem
-   $\N$ abzählbar
-   $\Q$ abzählbar
-   $\R$ überabzählbar
:::

### $2^\N$ ist überabzählbar

::: satz
Die Menge
$2^\N\defeq\{0,1\}^\N\defeq\{(a_i)_{i\in\N}\mid a_i\in\{0,1\}\}$ ist
überabzählbar.

::: proof
Widerspruchsbeweis mit Cantor. Trivial.
:::
:::

::: bem
$2^\N$ und $[0,1]\subset\R$ haben Gemeinsamkeiten:

-   Zahlen aus $[0,1]$ als Binärfolge darstellbar
-   Erzeugt Bijektion zwischen $2^\N$ und $[0,1]$ (außer periodische 1)
:::

### Indikatorfunktion einer abzählbaren Menge

TODO

### Mächtigkeit von Potenzmengen

TODO

### Russels Paradox

TODO

## Sprachen, die nicht semi-entscheidbar sind

::: satz
Betrachte das Alphabet $\Sigma=\{0,1\}$. Es gibt Sprachen $L$ über
$\Sigma$, die nicht rekursiv aufzählbar sind.

::: proof
-   Die Menge aller TM/GN ist ist abzählbar unendlich
-   Ergo ist die Menge aller Sprachen, die von einer TM entschieden
    werden, auch höchstens abzählbar
-   Die Menge aller Sprachen über $\{0,1\}$ ist überabzählbar
-   Ergo muss es Sprachen geben, die nicht von einer TM entschieden
    werden können `\qed`{=tex}
:::
:::

::: motiv
Existenz ist schön und gut, aber können wir tatsächlich eine
$D\notin\text{RE}$ konstruieren?
:::

### Diagonalsprache

::: defi
-   Seien $w_1,w_2,w_3,...$ alle Wörter über $\Sigma=\{0,1\}$ (abzählbar
    viele)

-   Seien $M_1,M_2,M_3,...$ alle TM (abzählbar viele) TODO: autoformat

          /        $w_1$      $w_2$      $w_3$       ...
      ---------- ---------- ---------- ---------- ----------
        $M_1$     $d_{11}$   $d_{12}$   $d_{13}$     ...
        $M_2$     $d_{21}$   $d_{22}$   $d_{23}$     ...
        $M_3$     $d_{31}$   $d_{32}$   $d_{33}$     ...
       $\vdots$   $\vdots$   $\vdots$   $\vdots$   $\ddots$

:::

::: bsp
      /        $w_1$      $w_2$      $w_3$       ...
  ---------- ---------- ---------- ---------- ----------
    $M_1$        1          0          0         ...
    $M_2$        0          1          0         ...
    $M_3$        1          1          0         ...
   $\vdots$   $\vdots$   $\vdots$   $\vdots$   $\ddots$

Diagonalsprache $D=\{w_i\mid d_{ii}=0\}$:

-   Enthält das Wort $w_3$
-   Enthält nicht die Wörter $w_1,w_2$

Es gibt keine TM, die $D$ erkennt:

-   $D$ wird nicht von $M_1$ erkannt
    -   $M_1$ akzeptiert $w_1$. Aber da $d_{11}=1$ ist $w_1\notin D$
-   $D$ wird nicht von $M_2$ erkannt (analog)
-   $D$ wird nicht von $M_3$ erkannt
    -   $M_3$ akzeptiert $w_3$ nicht, da $d{33}=0$. Also würde $M_3$ ein
        Wort aus $D$ nicht akzeptieren
-   usw.
:::

::: satz
$D\in\text{RE}$: Die Diagonalsprache ist nicht rekursiv aufzählbar.
:::

### Game of Life

::: defi
-   Jede schwarze Zelle mit 2/3 schwarzen Nachbarn bleibt schwarz, alle
    anderen schwarzen Zellen werden weiß
-   Jede weiße Zelle mit drei schwarzen Nachbarn wird schwarz, die
    anderen weißen Zellen werden weiß
:::

::: satz
Das Problem, von einer Startkonfiguration eine bestimmte
Zielkonfiguration zu erreichen, ist unentscheidbar.
:::

## Sprachen, die semi-entscheidbar, aber nicht entscheidbar sind

::: defi
$$A_\text{TM}=\{\langle M,w\rangle\mid M\text{ist Code einer TM und $w$ wird von $M$ akzeptiert}\}\subset\{0,1\}^*$$
mit $\langle M,w\rangle$ Wort, welches die GN der TM $M$ mit $w$
konkateniert.
:::

::: satz
$A_\text{TM}$ ist semi-entscheidbar: $$A_\text{TM}\in\text{RE}$$
:::

::: satz
$A_\text{TM}$ ist nicht entscheidbar: $$A_\text{TM}\notin\text R$$
:::

### Komplementbildung

::: defi
Sei $L\in\mathcal L$ eine Sprache über $\Sigma$. Die
*Komplement-Sprache* $L^C$ ist definiert als
$$L^C\defeq\{w\in\Sigma^*\mid w\notin L\}.$$ Manchmal auch Notation
$\overline L$ statt $L^C$.
:::

::: satz
$L\in\text R\implies L^C\notin\text R$.
:::

::: defi
Die Menge *coRE* ist definiert als
$$\text{coRE}\defeq\{L\mid L^C\in\text{RE}\}.$$ Oder anders
aufgeschrieben: $$L\in\text{coRE}\defiff L^C\in\text{RE}.$$
:::

::: satz
$L\in\text R\iff L\in\text{RE}\land L\in\text{coRE}$

::: proof
-   $L\in\text R\implies L\in\text{RE}\land L\in\text{coRE}$:
    -   $L\in\text R\implies L\in\text{RE}$ klar, da
        $\text R\subset\text{RE}$
    -   Außerdem wie zuvor:
        $L\in\text R\implies L^C\in\text R\subset\text{RE}.$
-   $L\in\text{RE}\land L\in\text{coRE}\implies L\in\text R$
    -   sei $M$ TM für $L$ und $M_C$ TM für $L^C$. Neue TM $\hat M$:
        -   $M$ und $M_C$ parallel auf $w$ laufen lassen
        -   falls $M$ akzeptiert, soll $\hat M$ akzeptieren
        -   falls $M_C$ akzeptiert, soll $\hat M$ verwerfen
    -   dann:
        $w\in L\implies M\text{ akzeptiert}\implies\hat M\text{ akzeptiert}$
    -   sowie:
        $w\notin L\implies w\in L^C\implies M_C\text{ akzeptiert}\implies\hat M\text{ verwirft}$
        `\qed`{=tex}
:::
:::

::: satz
$L\in\text{RE}\not\implies L^C\in\text{RE}$
:::

::: motiv
Also gibt es nun weitere Sprachen $\notin\text{RE}$?
:::

::: satz
$\overline{A_\text{TM}}\notin\text{RE}.$

::: proof
Bereits bewiesen:
$L\in\text{RE}\land L\in\text{coRE}\implies L\in\text R$.

Wissen außerdem, dass $A_\text{TM}\in\text{RE}$ und
$A_\text{TM}\notin\text R$. Also muss $A_\text{TM}\notin\text{coRE}$
sein. `\qed`{=tex}
:::
:::

TODO: Bildchen wichtig für Klausur. TODO: Bar.

## Abbildungs-Reduktionen in der Berechenbarkeitstheorie

::: motiv
Wir wollen $P_1$ lösen, indem wir es auf ein anderes Problem $P_2$
reduzieren

-   Falls $P_2$ "leicht" ist, dann ist auch $P_1$ "leicht"
-   Falls $P_1$ "schwer" ist, dann ist auch $P_2$ "schwer"
:::

::: defi
Sprache $L_1\subset\Sigma_1^*$ ist auf Sprache $L_2\subset\Sigma_2^*$
*Abbildungs-reduzierbar*, falls gilt:

Es gibt eine Turing-berechenbare Funktion $f:\Sigma_1^*\to\Sigma_2^*$,
sodass für alle $w\in\Sigma_1^*$ gilt: $$w\in L_1\iff f(w)\in L_2.$$ Die
Funktion $f$ heißt *Reduktion von $L_1$ auf $L_2$*.

Schreibweise: $L_1\preccurlyeq_m L_2$, wobei das $m$ oft für "mapping
reduction" steht.
:::

::: bsp
TODO: Graphen

-   Problem $k$-Clique: Gegeben ein ungerichteter Graph $G=(V,E)$ und
    $k\in\N$. Eine Teilmenge $V'\subset V$ heißt *Clique*, falls $V'$ im
    Graph vollständig verbunden ist. Gibt es eine Clique der Größe $k$
    in $G$?
-   Problem $k$-Vertex-Cover: Gegeben ein ungerichteter Graph $G=(V,E)$
    und $k\in\N$. Eine Teilmenge $V'\subset V$ heißt *Vertex Cover*,
    falls jede Kante des Graphen mindestens einen Endpunkt in $V'$ hat.
    Gibt es im Graphen ein Vertex Cover mit $k$ Knoten?`\bigskip`{=tex}

*Reduktion von Clique auf Vertex Cover*. Gegeben: Graph $G$, $k\in\N$.
Auf $G$ wollen wir $k$-Clique lösen, indem wir Graphen $\hat G$ bauen
und $\hat k\in\N$ so wählen, dass gilt:
$$G\text{ hat $k$-Clique}\iff\hat G\text{ hat $\hat k$-Vertex-Cover}.$$
Dazu wählen wir $\hat G$ als das "Komplement" von $G$:

-   $\hat G$ hat die gleichen Knoten wie $G$
-   $\hat G$ hat Kante $uv$ genau dann, wenn $G$ diese Kante **nicht**
    hat.

Außerdem setzen wir $\hat k\defeq|V|-k$.

::: satz
Diese Reduktion ist berechenbar.

::: proof
Die Reduktion $f$ transformiert den Graphen $G$ in den Graphen $\hat G$.
Man kann dann eine TM konstruieren, die bei Eingabe von $G$ und $k$ die
Ausgabe $\hat G$ und $\hat k$ produziert.`\qed`{=tex}
:::
:::

::: satz
$G$ hat eine Clique der Größe $k$ genau dann, wenn $\hat G$ einen Vertex
Cover der Größe $\underbrace{n-k}_{\defeq\hat k}$ besitzt (wobei $n=|V|$
ist).

::: proof
TODO?
:::
:::
:::

::: satz
Falls $L_1\preccurlyeq L_2$, dann gilt:

1.  Falls $L_2$ (semi-)entscheidbar ist, dann ist auch $L_1$
    (semi-)entscheidbar.
2.  Falls $L_1$ nicht (semi-)entscheidbar ist, dann ist auch $L_2$ nicht
    (semi-)entscheidbar.

::: proof
TODO: Bildchen hihi

1.  Beweis
    -   Sei $L_2$ (semi-)entscheidbar, d.h. es gibt eine TM $M_2$, die
        die Sprache (semi-)entscheidet.
    -   Nun baut man TM $M_1$, die $L_1$ (semi-)entscheidet: Bei der
        Eingabe von $w$ wendet $M_1$ zunächst die TM $F$ an, die die
        Reduktion von $L_1$ auf $L_2$ realisiert. Auf die Ausgabe von
        $F$ wird dann $M_2$ angewandt.
2.  Beweis durch Widerspruch
    -   Annahme: $L_2$ ist (semi-)entscheidbar
    -   Mit Instanz von $L_1$ starten und TM $M_1$ wie zuvor
    -   Dann (semi-)entscheidet $M_1$, aber auch $L_1$ :O

`\qed`{=tex}
:::

Andere Aussagen lassen sich nicht definitiv treffen.
:::

## Das Halteproblem und viele weitere Probleme in $\mathrm{RE}\setminus\mathrm R$

::: motiv
Wir wollen eine Kette von Reduktionen zeigen:
$$\overline{D_\mathrm{TM}}\preccurlyeq A_\mathrm{TM}\preccurlyeq H\preccurlyeq H_0\preccurlyeq K.$$
:::

### Reduktion $\overline{D_\mathrm{TM}}\preccurlyeq A_\mathrm{TM}$

::: satz
-   $\overline{D_\mathrm{TM}}=\{\langle M\rangle\mid M\text{ akzeptiert }\langle M\rangle\}$
-   $A_\mathrm{TM}=\{\langle M,w\rangle\mid M\text{ akzeptiert }w\}$

$$\overline{D_\mathrm{TM}}\preccurlyeq A_\mathrm{TM}$$

::: proof
Definiere $f(w)\defeq ww$. Ist berechenbar und offensichtlich gilt:
$$w\in\overline{D_\mathrm{TM}}\iff M\text{ akzeptiert }\langle M\rangle\iff f(w)=ww\in A_\mathrm{TM}.$$
`\qed`{=tex}
:::
:::

### Reduktion $A_\mathrm{TM}\preccurlyeq H$ (allgemeines Halteproblem)

::: satz
-   $A_\mathrm{TM}=\{\langle M,w\rangle\mid M\text{ akzeptiert }w\}$
-   $H=\{\langle M,w\rangle\mid M\text{ hält bei Eingabe $w$ an}\}$

$$A_\mathrm{TM}\preccurlyeq H$$

::: proof
Mit Eingabe $\langle M,w\rangle$ baut man eine TM $\hat M$:

-   $\hat M$ macht die gleichen Berechnungen wie $M$
-   Falls $M$ in einem nicht-akzeptierenden Zustand stoppt, dann begibt
    sich $\hat M$ in eine Endlosschleife
-   Sei $\langle\hat M\rangle$ der Code diesr TM -- dieser Code lässt
    sich nicht berechnen

Die Reduktionsabbildung ist:
$$f(\langle M,w\rangle)=\langle\hat M,w\rangle.$$ Dann gilt:
$$\langle M,w\rangle\in A_\mathrm{TM}\iff M\text{ akzeptiert } w$$$$\iff\hat M\text{ stoppt bei Eingabe }w\iff\langle\hat M,w\rangle\in H$$
`\qed`{=tex}
:::
:::

### Reduktion $H\preccurlyeq H_0$ (spezielles Halteproblem)

::: satz
-   $H=\{\langle M,w\rangle\mid M\text{ hält bei Eingabe $w$ an}\}$
-   $H_0=\{\langle M\rangle\mid M\text{ hält bei Eingabe $\varepsilon$ an}\}$

$$H\preccurlyeq H_0$$

::: proof
TODO
:::
:::

### Reduktion $H_0\preccurlyeq K$

::: satz
-   $H_0=\{\langle M\rangle\mid M\text{ hält bei Eingabe $\varepsilon$ an}\}$
-   $K=\{\langle M\rangle\mid M\text{ hält bei Eingabe von $\langle M\rangle$ an}\}$

$$H_0\preccurlyeq K$$

::: proof
TODO
:::
:::

### Schlussfolgerung

::: satz
Die Sprachen $\overline{D_\mathrm{TM}},A_\mathrm{TM},H,H_0,K$ sind alle
in $\mathrm{RE}\setminus R$.
:::

::: motiv
-   Das Halteproblem ist relevant, um die Beendung von Programmen zu
    zeigen -- geht nicht! :(
-   Berechnen zwei TM das Gleich? -- geht nicht! :(
:::

::: defi
Problem 1 $\preccurlyeq_T$ Problem 2, falls es eine TM zur Lösung von
Problem 1 gibt, die eine Turingmaschine für Problem 2 beliebig oft als
"Unterprogramm" aufrufen darf.
:::

# Der Satz von Rice

::: motiv
Viele Eigenschaften von Turingmaschinen/Programmen sind nicht
entscheidbar. Sind diese Eigenschaften die Ausnahme?

Rice sagt: Nein! So gut wie alle *interessanten* Eigenschaften von TMs
sind unentscheidbar.

*Interessante* Eigenschaften sind jene, die sich nur an der von ihr
erkannten Sprache festmachen lassen. Dabei interessiert uns nur die
Ausgabe der TM, nicht die Art der Berechnung selbst.
:::

::: defi
Sei $L$ eine Sprache, deren Wörter nur aus Codes von TMs bestehen:
$$L\subset\{w\in\{0,1\}^*\mid w\text{ ist Code einer TM}\}$$ Die Sprache
$L$ heißt *nicht-trivial*, falls gilt:

-   $L\ne\emptyset$ (es gibt TMs, deren Code in $L$ enthalten ist)
-   $L\ne\{w\in\{0,1\}^*\mid w\text{ ist Code einer TM}\}$ (es gibt TMs,
    deren Code nicht in $L$ enthalten ist)
:::

::: defi
Sei $L$ eine Sprache, deren Wörter nur aus Codes von TMs bestehen:
$$L\subset\{w\in\{0,1\}^*\mid w\text{ ist Code einer TM}\}.$$ Die
Sprache $L$ heißt *semantisch*, falls gilt:

Wenn $M_1$ und $M_2$ äquivalente TMs sind, dann sind entweder beide in
$L$ enthalten oder beide nicht in $L$ enhalten:
$$\langle M_1\rangle\in L\iff\langle M_2\rangle\in L$$
:::

::: satz
Jedes semantische, nichttriviale Entscheidungsproblem ist
unentscheidbar. Wow!

::: proof
Siehe Vorlesung.
:::
:::

::: bem
Die Umkehrung des Satzes ist im Allgemeinen falsch, es gilt nur:
$$\text{semantisch}\implies\text{unentscheidbar}.$$
:::

::: motiv
Allgemeine "Verifikation" von Programmen ist unmöglich! Außerdem sind
ohne Einschränkungen der TMs wichtige Eigenschaften nicht beweisbar!

Wir müssen die "Sorte von Programmen" einschränken, um sie verifizieren
zu können.
:::

# Modelle der Berechenbarkeit

## Turing-Vollständigkeit und -Äquivalenz

::: defi
Sei $\mathcal F$ die Menge aller partiellen Funktionen von $\{0,1\}^*$
nach $\{0,1\}^*$. Ein *Berechnungsmodell* ist eine Abbildung
$$\mathcal M:\{0,1\}^*\to\mathcal F.$$ Ein *Programm* $P\in\{0,1\}^*$
*$\mathcal M$-berechnet* eine Funktion $F\in\mathcal F$ falls
$\mathcal M(P)=F$.
:::

::: defi
Ein Berechnungsmodell $\mathcal M$ heißt *Turing-vollständig*, wenn es
eine Turing-berechenbare Abbildung
$$\mathrm{encode}_\mathcal{M}:\{0,1\}^*\to\{0,1\}^*$$ gibt, sodass
$$\mathcal M(\mathrm{encode}(\langle M\rangle))$$ identisch zu der von
der TM $M$ berechneten Funktion ist.
:::

::: defi
Ein Berechnungsmodell $\mathcal M$ heißt *Turing-äquivalent*, falls

-   es Turing-vollständig ist
-   es zusätzlich eine $\mathcal M$-berechenbare Abbildung
    $$\mathrm{decode}_\mathcal{M}:\{0,1\}^*\to\{0,1\}^*$$ gibt, sodass
    für jedes $P\in\{0,1\}^*$ $$N=\mathrm{decode}_\mathcal{M}(P)$$ die
    Gödelnummer einer TM ist und diese TM die gleiche Funktion wie
    $\mathcal M(P)$ berechnet.
:::

## `while`- und `for`-Programme

::: defi
Das Alphabet von `while`:

-   Variablen: $x_0,x_1,x_2,...$ (abzählbar viele)
-   Konstanten: $0,1,2,...$ (abzählbar viele)
-   Keywords: `while`, `do`, `end` (genau drei)
-   Symbole $\defeq$, $\ne$, $;$, $+$, $-$, $[$, $]$ (genau sieben)
:::

::: defi
Der Syntax von `while`:

1.  Ein "einfacher Befehl" ist eine der drei folgenden Anweisungen
    -   $x_i\defeq x_j+x_k$ (arithmetische Operation)
    -   $x_i\defeq x_j-x_k$ (arithmetische Operation)
    -   $x_i\defeq c$ (Wertzuweisung)
2.  Ein `while`-Programm $P$ ist entweder ein einfacher Befehl oder hat
    die Form
    -   `while` ($x_0\ne0$) `do` $P_1$ `end` (Schleife)
    -   $[P_1,P_2]$ (Hintereinanderausführung)
:::

::: defi
Die Semantik von `while`:

-   *Eingabe*: Besteht aus natürlichen Zahlen
    $\alpha_0,...,\alpha_{s-1}\in\N$ und wird in den Variablen
    $x_0,...,x_{s-1}$ gespeichert.
-   *Ausgabe*: Falls das Programm anhält, dann ist die Ausgabe der
    Inhalt der Variable $x_0$ bei Beendigung des Programms.
-   *Variablenbelegung*: Jedes Programm darf beliebig viele, aber nur
    endlich viele Variablen benutzen. Mit einer Funktion $l(P)$ für die
    maximale Zahl an verwendeten Variablen, kann man die Belegung zu
    jedem Zeitpunkt in einen Vektor schreiben.

Sei $S$ die Startbelegung der Variablen. Die partielle Funktion
$\Phi_P(S)$ besagt, welche Ausgabe ein Programm $P$ bei Eingabe $S$
produziert.

Sei $S=(\sigma_0,\sigma_1,\sigma_2,...)$ eine Variablenbelegung.

Semantik *einfacher Befehle*:

-   Falls $x_i\defeq x_j+x_k$, dann
    $$\Phi_P(S)=(\sigma_0,\sigma_1,...,\sigma_{i-1},\sigma_j+\sigma_k,\sigma_{i+1},...).$$
-   Falls $x_i\defeq x_j-x_k$, dann
    $$\Phi_P(S)=(\sigma_0,\sigma_1,...,\sigma_{i-1},\max{\sigma_j-\sigma_k,0},\sigma_{i+1},...).$$
-   Falls $x_i\defeq c$, dann
    $$\Phi(S)=(\sigma_0,\sigma_1,...,\sigma_{i-1},\c,\sigma_{i+1},...).$$

Semantik der *Hintereinander-Ausführung*:

-   Falls $P="[P_1;P_2]"$, dann sei
    $$\Phi_P(S)=\begin{cases}\Phi_{P_2}(\Phi_{P_1}(S))&\text{falls definiert}\\\texttt{undefined}&\text{sonst}\end{cases}$$
    Im Folgenden bezeichnen wir mit $\Phi_P^{(r)}(S)$ die $r$-fache
    Hintereinander-Ausführung von $P$, gestartet auf $S$.

Semantik der *Schleifen*:

-   Falls $P="\texttt{while }(x_i\ne0)\texttt{ do }P_1\texttt{ end}"$,
    dann sei $r\in\N$ die kleinste Zahl, sodass entweder
    -   $\Phi_{P_1}^{(r)}(S)$ nicht terminiert
    -   die $i$-te Variable in $\Phi_{P_1}^{(r)}(S)$ gleich $0$ ist
        *(Schleifenabbruch-Bedingung erreicht)*. Dann setzen wir
        $$\Phi_P(S)=\begin{cases}\Phi_{P_1}^{(r)}(S)&\text{falls das Programm geendet hat}\\\texttt{undefined}&\text{sonst}\end{cases}$$
:::

::: satz
Für jedes `while`-Programm $P$ ist $Q_P$ wohldefiniert.

::: proof
Durch strukturelle Induktion.
:::
:::

::: bem
Durch *Syntaktischen Zucker* könnte man auch Stacks, Arrays,
`if`-Abfragen oder `for`-Schleifen darstellen.
:::

::: defi
-   Ein `for`-Programm hat den (endlichen) `for` Befehl statt `while`
-   Ein `goto`-Programm hat den `goto` Befehl statt `while`
:::

::: satz
`for`-Programme (wie definiert) terminieren immer.

::: proof
Durch strukturelle Induktion.
:::
:::

::: satz
`for`-Programme können durch `while`-Programme simuliert werden.
:::

::: satz
`while`-Programme können durch `goto`-Programme simuliert werden.
:::

::: satz
`goto`-Programme können durch `while`-Programme (mit höchstens einer
Schleife) simuliert werden ($\texttt{goto}\preccurlyeq\texttt{while}$).
:::

### `while`- vs. Turing-Berechenbarkeit

::: satz
`while`-Programme sind Turing-äquivalent.

::: proof
-   $\texttt{while}\preccurlyeq\text{Turing}$
-   $\text{Turing}\preccurlyeq\texttt{while}$

Siehe Vorlesung, aber eigentlich trivial.`\qed`{=tex}
:::
:::

## Primitiv rekursive Funktionen und $\mu$-rekursive Funktionen

::: motiv
Mathematisch motiviertes Berechnungsmodell, noch vor Turingmaschine
entwickelt.
:::

::: defi
Die Menge der *primitiv rekursiven* Funktionen wird induktiv
defininiert:

**Induktionsanfang**:

-   Die *Konstant*, $0$-stellige Funktion $0$ ist primitiv rekursiv.
-   Die *Nachfolgerfunktion* $s:\N\to\N,s(k)=k+1$ ist primitiv rekursiv.
-   Die *Projektionsfunktionen* der Form
    $$f_i:\N^k\to\N,(x_1,x_2,...,x_k)\to x_i$$ (für $i=1,...,k$) sind
    primitiv rekursiv.

**Induktionsschritt**:

-   Die *Komposition* von primitiv rekursiven Funktionen ist primitiv
    rekursiv: Seien $f:\N^k\to\N$, $g_1,...,g_k:\N^m\to\N$ primitiv
    rekursiv, dann auch
    $$h(x_1,...,x_m)\defeq f(g_1(x_i,...,x_m),...,g_k(x_1,...,x_m)).$$
-   *Primitive Rekursion*: Seien $g:\N^k\to\N$, $h:\N^{k+1}\to\N$
    primitiv rekursiv. Dann ist auch die Funktion $f:\N^{k+1}\to\N$
    primitiv rekursiv:
    `\begin{align*}f(0,x_1.,,,.x_k)&=g(x_1,...,x_k)\\f(s(n),x_1,...,x_k)&=h(f(n,x_1,...,x_k),x_1,...,x_k)\end{align*}`{=tex}
:::

::: bsp
Addition $\texttt{add}:\N^2\to\N$ ist primitiv rekursiv.

`\begin{align*}\texttt{add}(0,x)&=x\\\texttt{add}(s(n),x)&=s(\texttt{add}(n,x))\end{align*}`{=tex}
:::

::: motiv
Die Rekursion ist so etwas wie eine `for`-Schleife: Initialisierung:
$$f(0,x_1,...,x_k)=g(x_1,...,x_k)$$ Ein Schritt der `for`-Schleife:
$$f(n+1,x_1,...,x_k)=h(f(n,x_1,...,x_k),x_1,...,x_k)$$
:::

::: satz
Die Menge der primitiv rekursiven Funktionen stimmt genau mit der Menge
der `for`-berechenbaren Funktionen überein.

::: proof
Siehe Vorlesung. `\qed`{=tex}
:::
:::

::: motiv
`for`-Berechenbarkeit ist nicht Turing-äquivalent.

Gibt es einen anderen Begriff von rekursiven Funktionen, der
Turing-äquivalent ist?
:::

::: defi
Die Menge $M$ der *$\mu$-rekursiven Funktionen*:

- Alle primitiv rekursiven Funktionen sind in $M$ enthalten
- Alle Funktionen sind enthalten, die durch Anwendung des *$\mu$-Operators* aus primitiv rekursiven Funktionen gebaut werden können:`\\`{=tex} Sei $f:\N^{k+1}\to\N$ eine (möglicherweise partielle) Funktion. Dann ist $\mu f:\N^k\to\N$ definiert als $$(\mu f)(x_1,...,x_k)=\min{\{m\in\N_0\mid f(m,x_1,...,x_k)=0\land\forall u<m\exists f(u,x_1,...,x_k)\}}$$ Falls die Menge leer ist, ist $(\mu f)(x_1,...,x_k)$ undefiniert.
:::

::: bem
Der Hauptunterschied zur primitiven Rekursion:

- Man bildet ein Minimum über die Menge $\{u\mid f(u,...)=0\}$, deren Anzahl zuvor gar nicht bekannt ist.
- Analog zum Unterschied `for` (*feste Anzahl*) und `while` (*beliebig hohe Anzahl*, partiell erlaubt)
:::

::: satz
Die Menge der $\mu$-rekursiven Funktionen stimmt genau mit der Menge der `while`-berechenbaren Funktionen überein.

::: proof
Siehe Vorlesung. \qed
:::
:::

::: motiv

- primitiv rekursiv $\equiv$ `for`
- $\mu$-rekursiv $\equiv$ `while`
- `for` $\preccurlyeq$ `while`, aber nicht umgekehrt

Es muss Funktionen geben, die $\mu$-rekursiv, aber nicht primitiv rekursiv sind.
:::

## Ackermann-Funktion

::: defi
Ackermann-Funktion: $a:\N^2_0\to\N$, Basisfälle:

- $a(0,y)=y+1$, für $y>0$
- $a(x,0)=a(x-1,1)$ für $x>0$

Rekursion:

- $a(x,y)=a(x-1,a(x,y-1))$ für $x,y>0$

:::

## Church-Turing-These

::: motiv
Aha interessant, Modelle von Turing, Church und Gödel scheinen berechenbarkeitsäquivalent zu sein -- weird!

Vielleicht ist ja einfach alles äquivalent haha.
:::

::: hypo

- Alles, was "intuitiv" berechnet werden kann, kann auch von einer Turingmaschine berechnet werden.
- Jede "effektiv berechenbare" Funktion kann von einer TM berechnet werden.
- Jeder "Algorithmus" kann mithilfe einer Turingmaschine implementiert werden.
- Jedes endliche physikalische System kann bis zu jeder vorgegebenen Genauigkeit genau auf einer Turingmaschine simuliert werden.

:::

::: bem
Kann nicht bewiesen/widerlegt werden, weil es nicht wirklich eine mathematische Aussage ist. Es ist eine Vermutung über die Beschaffenheit der Welt.
:::

::: motiv
- Quantencomputer sind Turing-äquivalent
- "Hypercomputing" -- formal mächtiger als TMs aber physikalisch ggf. nicht möglich
- "Neuronale Netze" sind oft Turing-äquivalent
:::

## Der Unvollständigkeitssatz von Gödel

::: satz
Jedes Beweissystem für die Menge der wahren arithmetischen Formeln ist notwendigerweise unvollständig: Es gibt immer whare arithmetische Formeln, die nicht beweisbar sind.
:::

::: defi
Ein *Term* wird induktiv wie folgt definiert:

- Jedes $n\in\N$ ist ein Term
- Jede *Variable $x_i$* ($i\in\N$) ist ein Term
- Wenn $t_1,t_2$ Terme sind, dann auch $(t_1+t_2)$ und $(t_1\cdot t_2)$

Eine *Formel* wird induktiv wie folgt definiert:

- Wenn $t_1,t_2$ Terme sind, dann ist $(t_1=t_2)$ eine Formel
- $F,G$ Formeln, dann sind auch $\neg F$, $(F\land G)$ und $(F\lor G)$ Formeln
- Wenn $x$ eine Variable und $F$ eine Formel ist, dann sind auch $\exists xF$ und $\forall xF$ Formeln
:::

::: bsp
$$\forall x\exists y\forall z(((x\cdot y)=z)\land((1+x)=x\cdot y))$$
:::

::: defi
Eine Funktion $f:\N^k\to\N$ ist *arithmetisch repräsentierbar*, falls es eine arithmetische Formel $F(x_1,...,x_k,y)$ gibt, sodass gilt: $$f(n_1,n_2,...,n_k)=m\iff F(n_1,...,n_k,m)$$ ist wahr.
:::

# TODO (mehrere)

# 
