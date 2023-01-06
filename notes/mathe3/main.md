---
author: Marvin Borner
date: "`\\today`{=tex}"
lang: de-DE
pandoc-latex-environment:
  bem-box:
  - bem
  bsp-box:
  - bsp
  proof-box:
  - proof
  visu-box:
  - visu
toc-title: Inhalt
---

```{=tex}
\newpage
```
# Ergänzungen zur elementaren Zahlentheorie

## Teiler, Vielfaches

Sei $a,b\in\Z,\ b\neq0$. $b$ heißt Teiler von $A$
$(b\mid a) \iff \exists q\in\Z: a= qb.$

::: bsp
$$6 \mid 24$$ $$1 \mid 0$$ $$6 \nmid 5$$
:::

## Division mit Rest

Sei $a,b\in\Z,\ b\neq0$. Es gibt eindeitig bestimmbare $q,r\in\Z$ mit

1.  $a = qb + r$
2.  $0 \leq r < |b|.$

::: bem
$q$ heißt Quotient, $r$ heißt Rest.
:::

::: proof
```{=tex}
\begin{proof}
Folgerung aus Fundamentalsatz der Arithmetik. Siehe Mathe 2.
\end{proof}
```
:::

::: bsp
1.  $a=22$, $b=5$ $$22\pdiv{5}=4,\quad22\pmod{5}=2$$
2.  $a=-22$, $b=5$ $$-22\pdiv{5}=-5,\quad-22\pmod{5}=3$$
3.  Für $a\in\R$ und $b\in\Z$ gilt mit $q\in\Z$ und $r\in\R$ gilt z.B.:
    $$a=\frac{8}{3},\ b=1\quad\implies\quad\frac{8}{3} = 2\cdot1+\frac{2}{3}$$
:::

## Zyklische Strukturen in Planetenbewegungen

Für die langfristige Stabilität der Planetenbewegungen sind
Konjunktions- und Oppostionsstellungen von Bedeutung:

::: visu
```{=tex}
\begin{minipage}{.45\textwidth}
\begin{center}\begin{tikzpicture}[bullet/.style={circle, fill, inner sep=1pt}]
\node[draw=black,inner sep=20mm,circle] {};
\node[draw=black,inner sep=10mm,circle] {};
\node[bullet,label=-90:$S$] (0) at (0:0mm) {};
\node[bullet,label=-120:$P_1$] (1) at (0:14.2mm) {};
\node[bullet,label=-120:$P_2$] (2) at (0:28.3mm) {};
\node (a) at (3.3,0) {};
\node (b) at (2.5,2) {};
\draw (0)--(1);
\draw (1)--(2);
\draw [->] (a) to [out=90,in=-45] (b);
\end{tikzpicture}\end{center}
Konjunktion der Planeten $P_1, P_2$: Von $P_1,P_2$ geht gemeinsam größt mögliche gravitative Kraft aus.
\end{minipage}%
\hfill%
\begin{minipage}{.45\textwidth}
\begin{center}\begin{tikzpicture}[bullet/.style={circle, fill, inner sep=1pt}]
\node[draw=black,inner sep=20mm,circle] {};
\node[draw=black,inner sep=10mm,circle] {};
\node[bullet,label=-90:$S$] (0) at (0:0mm) {};
\node[bullet,label=-120:$P_1$] (1) at (0:-14.2mm) {};
\node[bullet,label=-120:$P_2$] (2) at (0:28.3mm) {};
\node (a) at (3.3,0) {};
\node (b) at (2.5,2) {};
\draw (0)--(1);
\draw (1)--(2);
\draw [->] (a) to [out=90,in=-45] (b);
\end{tikzpicture}\end{center}
Opposition von $P_1,P_2$: Die gravitativen Kräfte von $P_1,P_2$ gleichen sich einigermaßen aus.
\end{minipage}
```
:::

Saturn und Jupiter sind mit Abstand die beiden massereichsten Planeten
des Sonnensystems. Stehen Jupiter und Saturn in Konjunktion, so
vollzieht sich eine Ausgleichgsbewegung, bei der die Sonne um ihren
eigenen Durchmesser aus dem Baryzentrum wandert. Insgesamt sind die
Konjunktionstermine aller Planeten so verteilt, dass das Sonnensystem
stabil bleibt.

Betrachte exemplarisch Venus und Erde. Es gilt:
$$8\text{ Erdjahre} \approx 13 \text{ Venusjahre}.$$ Genauer:
$8:13,0042.$ Abweichung von $8:13$ um ca. $0.032%$. Nehme zunächst an,
dass das Verhältnis von $8:13$ exakt ist. In 8 Jahren überholt die Venus
die Erde fünfmal.

$\implies$ In 8 Jahren finden 5 Konjunktionen zwischen Venus und Erde
statt.

$\implies$ Findet zum Zeitpunkt $t=0$ eine Konjunktion statt, so findet
nach $\frac{8}{5}=1\frac{3}{5}$ Jahren die nächste Konjunktion statt. In
$\frac{8}{5}$ Erdjahren finden $\frac{13}{5}=2\frac{3}{5}$ Venusjahre
statt. Beide Planeten befinden sich demzufolge bei $\frac{3}{5}$ ihrer
Umlaufbahn:

::: visu
Positionen der Erde zu Konjunktionsterminen mit Venus (chronologisch
verbunden).

```{=tex}
\begin{center}\begin{tikzpicture}[bullet/.style={circle, fill, inner sep=1pt}]
    \foreach \lab [count=\c, evaluate=\c as \ang using {18+72*\c}] 
    in {0,\frac{4}{5},\frac{3}{5},\frac{2}{5},\frac{1}{5}} {
        \node[bullet] (\c) at (\ang:20mm) {};
        \node at (\ang:23mm){$\lab$};
    }
    \draw(1)--(4);
    \draw(4)--(2);
    \draw(2)--(5);
    \draw(5)--(3);
    \draw(3)--(1);
    \node[draw=black,inner sep=14.2mm,circle] {};
\end{tikzpicture}\end{center}
```
$$0 \xrightarrow{+\frac{8}{5}\pmod{1}} \frac{3}{5} \xrightarrow{+\frac{8}{5}\pmod{1}} \frac{1}{5} \xrightarrow{+\frac{8}{5}\pmod{1}} \frac{4}{5} \xrightarrow{+\frac{8}{5}\pmod{1}} \frac{2}{5} \xrightarrow{+\frac{8}{5}\pmod{1}} 0$$
:::

Man kann bei allen Zahlen den Nenner weglassen und stattdessen mod 5
rechnen. Es ist außerdem $8\equiv3\pmod{5}.$

$$0 \xrightarrow{+3\pmod{5}} 3 \xrightarrow{+3\pmod{5}} 1 \xrightarrow{+3\pmod{5}} 4 \xrightarrow{+3\pmod{5}} 2 \xrightarrow{+3\pmod{5}} 0$$

Die Abfolge der Konjunktion wird demnach durch die zyklische Gruppe
$\braket{3}$ beschrieben, $3\in(\Z_5, \oplus)$, vgl. Mathe 2.

::: bem
Das Pentagramm entstünde bei einem exakten Verhältnis von $8:13$.
Tatsächliche Figur:
`\begin{center}\includegraphics[scale=.2]{saturnearth.png}\end{center}`{=tex}
:::

## Größte/kleinste gemeinsame Teiler

Seien $a_1,...,a_r\in\Z$.

1.  Ist mindestens ein $a_i\neq0$, so ist der größte gemeinsame Teiler
    die größte natürliche Zahl, die alle $a_i$ teilt. Schreibweise:
    $\ggT(a_1,...,a_r)$
2.  Sind alle $a_i\neq0$, so ist das kleinste gemeinsame Vielfache die
    kleinste natürliche Zahl, die von allen $a_i$ geteilt wird.
    Schreibweise: $\kgV(a_1,...,a_r)$.
3.  Ist $\ggT(a_1,...,a_r)=1$, so heißen $a_1,...,a_r$ teilerfremd. Ist
    $\ggT(a_i,a_j)=1\ \forall i\neq j$, so heißen $a_1,...,a_r$
    paarweise teilerfremd.

::: bsp
Im 3. Punkt stärkere Bedingung: $\ggT(3,7,9)=1$, aber $\ggT(3,9)=3$
:::

## Euklidischer Algorithmus zur Berechnung des ggT

### Herleitung

::: proof
```{=tex}
\toprove Seien $q,v,w\in\Z,\ v\neq0$. Dann: $$t\mid v \land t\mid w \iff t \mid v \land t \mid qv + w$$

\begin{proof}
Der vorigen Aussage.
\begin{align*}
\implies:\quad & t\mid v \land t\mid w \implies \exists k_1,k_2\in\Z: v = tk_1,\ w=k_2t\\
&\implies qv + w = qtk1 + tk_2 = t(\underbrace{qk_1 + k_2}_{\in\Z}) \implies t\mid qv+w\\
\impliedby:\quad & t\mid v \land t\mid qv+w \implies \exists k_1,k_2\in\Z: v = k_1t,\ qv+w=k_2t\\
&\implies w = k_2t - qv = t(\smash{\underbrace{k_2-qk_1}_{\in\Z}}) \implies t\mid w
\end{align*}
\end{proof}
```
:::

Es folgt $\ggT(v,w) = \ggT(v,q+v+w)$. damit lässt sich der euklidische
Algorithmus formulieren. Seien $a,b\in\Z,\ b\neq0,\ b\nmid a$.
**Frage**: Wie findet man $\ggT(a,b)$?

**Idee**: Verwende Division mit Rest und
`\begin{alignat*}{2}a_0 &= a, a_1 = b&&\\a_0 &= q_1a_1 + a_2\qquad&&|a_2|<|a_1|\\a_1 &= q_2a_2 + a_3\qquad&&|a_3|<|a_2|\\&\vdots&&\\a_{n-1} &= q_na_n + \underbrace{0}_{\mathclap{\text{erstmals Rest 0}}}\qquad&&|a_n|<|a_{n-1}|\end{alignat*}`{=tex}
Es folgt:
`\begin{align*} \ggT(a,b) &= \ggT(a_1,a_0) = \ggT(a_1,q_1a_1+a_2)\\ &= \ggT(a_1,a_2) = \ggT(a_2,\smash{\underbrace{q_2a_2+a_3}_{=a_1}})\\ &= \ggT(a_2,a_3)\\ &\quad\vdots\\ &= \ggT(\underbrace{a_{n-1}}_{q_na_n}, a_n) = a_n\end{align*}`{=tex}

## Euklidischer Algorithmus

```{=tex}
\begin{lstlisting}
Eingabe: $a,b\in\Z$, nicht beide =0
if b=0 then y=|a| endif
if b|a then y=|b| endif
if b$\neq$0 and $b\nmid a$ then
  x = a, y = b
  while (x mod y)$\neq$0 do
    r=(x mod y), x=y, y=r
  endwhile
endif
Ausgabe: y (=ggT(a,b))
\end{lstlisting}
```
::: bsp
EA mit $a=48$ und $b=-30$:

    x      y     r
  ----- ------- ----
   48     -30    18
   -30    18     6
   18    **6**   0

Damit ist der größte gemeinsame Teiler mit 6 gefunden.
:::

## Satz von Méziriac

$a,b\in\Z$, nicht beide $=0 \implies \exists s,t\in\Z:\ggT(a,b)=sa+tb$

::: proof
```{=tex}
\begin{proof}
\begin{align*}
b = 0:\quad&\ggT(a,b) = |a| = sa+0b,\quad s=\mathrm{sgn}(a)\\
b\ne0,\ b\mid a:\quad&\ggT(a,b)=|b|=0a+tb,\quad t=\mathrm{sgn}(b)\\
b\ne0,\ b\nmid a:\quad&a_0\defeq a,a_1\defeq b\implies\mathrm{EA}\implies\ggT(a,b)=a_n,\quad n\ge2\\
&\text{Zeige mit vollst. Induktion: }\exists s_j,t_j\in\Z: a_j=s_ja_0+t_ja_1\quad\forall j=0,..,n
\end{align*}
\end{proof}
```
:::

## Erweiterter Euklidischer Algorithmus (EEA)

Dient der Berechnung von $s,t$ im *Satz des Méziriac*.

```{=tex}
\begin{lstlisting}
Eingabe: $a,b\in\Z$, nicht beide $=0$
if b=0 then y=|a|, t=0
  if a>0 then s=1 else s=-1 endif
endif
if b$\mid$a then y=|b|, s=0
  if b>0 then t=1 else t=-1 endif
endif
if b$\ne$0 and b$\nmid$a then x=a, y=b
  $s_1$=1, $s_2$=0
  $t_1$=0, $t_2$=1
  while (x mod y)$\ne$0 do
    q=(x div y), r=(x mod y)
    s=($s_1$-q$s_2$), t=$t_1$-q$t_2$
    $s_1$=$s_2$, $s_2$=s
    $t_1$=$t_2$, $t_2$=t
    x=y, y=r
  endwhile
endif
Ausgabe y (=ggT(a,b)), s,t (y=sa+tb)
\end{lstlisting}
```
::: bsp
$a=48$, $b=-30$

   $x$   $y$   $s_1$   $s_2$   $s$   $t_1$   $t_2$   $t$   $q$   $r$
  ----- ----- ------- ------- ----- ------- ------- ----- ----- -----
   48    -30     1       0      /      0       1      /     /     /
   -30   18      0       1      1      1       1      1    -1    18
   18     6      /       /      2      /       /      3    -2     6

$\implies\ggT(48,-30)=6=2\cdot48+4\cdot(-30)$
:::

::: bem
Darstellung des ggT nicht eindeutig, z.B. ist auch
$\ggT(48,-38)=6=7\cdot48+11\cdot(-30)$
:::

## Die Gruppe $(\Z_n^*, \odot)$

Ist $(\Z_n^*, \odot)$ eine Gruppe? $(\Z_n,\odot)$

-   ist abgeschlossen: $a,b\in\Z_n\implies a\odot b\in\Z_n$
-   ist assoziativ
-   besitzt Neutralelement: $a\odot1=1\odot a=a\quad\forall a\in\Z_n$
-   enthält im Allgemeinen keine Inversen, z.B. hat $0$ keine Inverse

**Welche Elemente haben Inversen?**

::: bsp
$5\in\Z_{10}$ hat keine Inverse, da
$t\cdot x\pmod{10}=\begin{cases}0&x\text{ gerade}\\5&x\text{ ungerade}\end{cases}$,
d.h. $5\odot x\ne1\quad\forall x\in\Z_{10}$

Dagegen hat $3\in\Z_{10}$ Inverse $x=7$.
:::

**Aus Mathe 2**: $a\in\Z_n$ invertierbar $\iff \ggT(a,n)=1$

Es ist $Z_n^*=\{a\in\Z_n\mid\ggT(a,n)=1\}$ die Menge aller
invertierbaren Elemente in $\Z_n$ und ist bezüglich $\odot$ eine Gruppe.
$\varphi(n)=|\Z_n^*|$ heißt Eulersche Phi-Funktion.

Berechnung von $a^{-1}\in\Z_n$: Wegen EEA gibt es
$s,t\in\Z: sa+tn=1 \implies sa\equiv1\pmod{n} \implies a^{-1}\equiv s\pmod{n}$

::: bsp
Inverse von $5\in\Z_{21}$ durch EEA: $(-4)\cdot5 + 1\cdot21=1$

$\implies 5^{-1}\equiv-4\equiv17\pmod{21}$
:::

Falls man $s,t\in\Z$ nicht unmittelbar sieht: EEA.

### Korollar

$a,b\in\Z$, nicht beide $=0,\ c\in\Z$

1.  $\ggT(a,b)=1 \iff \exists s,t\in\Z: sa+tb = 1$
2.  $\ggT(a,b)=1 \implies \text{falls } a\mid bc$, dann $a\mid c$

::: proof
```{=tex}
\begin{proof}
In beide Richtungen:
\begin{itemize}
    \item \enquote{$\implies$}:\quad Gelte $sa+tb=1$. Annahme: $\ggT(a,b)>1$\\$d\defeq\ggT(a,b)\implies d\mid a,\quad d\mid b$ $\implies \exists k_1,k_2\in\Z:a=k_1d,\ b=k_2d$ $\implies sa+tb=d(sk_1+tk_2)\ne1$, da $d>1\ \lightning$, also $d=1$
    \item \enquote{$\impliedby$}:\quad $\exists s,t\in\Z: 1=sa+tb\implies c=sac+tbc$, also $a\mid a$ und $a\mid bc$ $\implies a\mid(\underbrace{sac+tbc}_{=c})$
\end{itemize}
\end{proof}
```
:::

## Primzahlen

$p\in\N,\ p\ge2$ heißt Primzahl, wenn $1$ und $p$ die einzigen
gemeinsamen Teiler von $p$ sind, d.h.
$\ggT(k,p)=1\quad\forall k\in\{1,...,p-1\}$

### Lemma von Euklid

Sei $p\in\P,\ a_1,...,a_k\in\Z$.

$p\mid a_1,...,a_n \implies \exists j\in\{1,...,k\}: p\mid a_j$

Gegenbeispiel: $6$ keine Primzahl: $6\mid3\cdot4$, aber
$6\nmid3\land6\nmid4$

::: proof
```{=tex}
\begin{proof}
Durch vollständige Induktion über $k$:

IA: $k=1: p\mid a_1\implies p\mid a_1$

IV: Lemma gelte für $k-1$ beliebige, ganzzahlige Faktoren

IS: $k-1\to k$: \toprove Lemma gilt für $k$ Faktoren $a_1,...,a_k$.

Fallunterscheidung:
\begin{align*}
p\mid a_k:\quad&\implies\text{fertig}\\
p\nmid a_k:\quad&\implies\ggT(g,a_k)=1\text{, da } p\in\P\\
&\implies p\mid a_1,...,a_{k-1}\\
&\implies \exists j\in\{1,...,k-1\}:p\mid a_j
\end{align*}
\end{proof}
```
:::

## Fundamentalsatz der elementaren Zahlentheorie

Zu jeder natürlichen Zahl $n\ge2$ gibt es endlich viele paarweise
verschiedene Primzahlen $p_1,...,p_k$ und natürliche Zahlen
$e_1,...,e_k$ mit $$n = p_1^{e_1} \cdot ... \cdot p_k^{e_k}.$$ Die $p_i$
heißen Primfaktoren von $n$. Die Darstellung von $n$ als Produkt von
Primzahlen ist bis auf die Reihenfolge eindeutig.

::: proof
```{=tex}
\begin{proof}
~\\
\begin{itemize}
\item \textbf{Existenz:} Durch vollständige Induktion.
\begin{align*}
    \text{IA:}\quad&n=2\in\P\\
    \text{IV:}\quad&\text{Aussage gelte für }2,...,n\\
    \text{IS:}\quad&2,3,...,n\to n+1: \toprove\text{Aussage gilt dann auch für $n+1$}\\
    &\text{Ist }n+1\in\P\implies\text{fertig.}\\
    &\text{Ist }n+1\notin\P\implies n+1=a\cdot b,\quad a,b\in\{2,...,n\}\\
    &\implies a,b\text{ Produkte von Primfaktoren}
\end{align*}
\item \textbf{Eindeutigkeit:} Sei $n\ge2$.
\begin{rom}
    \item Falls $n\in\P:\quad$Behauptung erfüllt.
    \item Falls $n\notin\P:\quad$sei $n$ die kleinste natürliche Zahl mit $2$ verschiedenen Zerlegungen $n=p_1^{e_1}\cdot...\cdot p_k^{e_k}=q_1^{f_1}\cdot...\cdot q_e^{f_e}$\\
        \toprove$\{p_1,...,p_k\}\cap\{q_1,...,q_e\}=\emptyset$\\
        Angenommen nicht: O.B.d.a. $p_1=q_1$\\
        $\frac{n}{p_1}<n\text{ und }\frac{n}{p_1}$ hat $2$ verschiedene Zerlegungen $\lightning$
    \item $p_1\mid q_1^{f_1},...,q_e^{f_e} \implies \exists j\in\{1,...,k\}: p_i\mid q_j \implies p_1=q_j\text{, da }p_1\ne1\land q_j\in\P\lightning$
\end{rom}
\end{itemize}
\end{proof}
```
:::

## Euklid

Es gibt unendlich viele Primzahlen.

::: proof
```{=tex}
\begin{proof}
Angenommen es gibt nur endlich viele Primzahlen
$p_1,...,p_n$. Sei $a=p_1\cdot...\cdot p_n+1$

$\implies\exists q\in\P: q\mid a$

$\implies q=p_i$ für ein $i\in\{1,...,n\}$

$\implies q\mid (\underbrace{a-p_1,...,p_n}_1)$ $\lightning$ (da
$q>1$)
\end{proof}
```
:::

## Chinesischer Restsatz

Gegeben: $m_1,...,m_n\in\N,\quad a\in\Z$ und $M=m_1\cdot...\cdot m_n.$
Dann:
$(\underbrace{a\pmod{M}}_{=r})\pmod{m_i}=a\pmod{m_i}\quad\forall i$

::: proof
```{=tex}
\begin{proof}
\toprove $r\equiv a\pmod{m_i}$.

Division mit Rest: $\exists q\in\Z: a=qM+r=q\underbrace{\left(\frac{M}{m_i}\right)}_{\in\Z}m_i + r$

$\implies a\equiv r\pmod{m_i}$
\end{proof}
```
:::

Gegeben:

-   $m_1,...,m_n\in\N$ paarweise teilerfremd,
-   $M=m_1\cdot...\cdot m_n$
-   $a_1,...,a_n\in\Z$

Dann existiert $0\leq x<M$ mit *simultaner Kongruenz*
$$x\equiv\begin{cases}a_1\pmod{m_1}\\\vdots\\a_n\pmod{m_n}\end{cases}$$

::: proof
```{=tex}
\begin{proof}
Setze $M_i\defeq\frac{M}{m_i}\in\Z\implies\ggT(m_i,M_i)=1\quad\forall i=1,...,n$

$\implies \exists s_i,t_i\in\Z: s_i\cdot m_i + t_iM_i = 1$

Setze $e_i\defeq t_iM_i\implies e_i\equiv\begin{cases}0\pmod{m_j}&j\ne i\\1\pmod{m_i}\end{cases}$

$\implies x = \left(\sum_{i=1}^n a_ie_i\right)\pmod{M}$ Lösung, da:

\begin{align*}
x\pmod{m_j} &= \left(\left(\sum_{i=1}^n a_ie_i\right)\pmod{M}\right)\pmod{m_j}\\
&= \left(\sum_{i=1}^n a_ie_i\right)\pmod{m_j}\\
&= a_j \pmod{m_j}
\end{align*}
\end{proof}
```
:::

::: bsp
1.  Finde $0\leq x<M$ mit $m_1=3,\ m_2=4,\ m_3=5\implies M=60$.
    $M_1=\frac{M}{m_1}=20,\ M_2=\frac{60}{4}=15,\ M_3=\frac{60}{5}=12\\$**EEA**:`\begin{align*}7\cdot 3-20&=1\\4\cdot4-15&=1\\5\cdot5-2\cdot12&=1\end{align*}`{=tex}
    $x=(2\cdot(-20)+3\cdot(-15)+2\cdot(-24))\pmod{60}=47$
2.  Was ist $2^{1000}\pmod{1155}$? Primfaktorzerlegung:
    $1155=3\cdot5\cdot7\cdot11$
    1.  Berechne $2^{1000}\pmod{3,5,7,11}$:
        -   $2^{1000}\pmod{3}=(-1)^{1000}\pmod{3}=1$
        -   $2^{1000}\pmod{5}=4^{500}\pmod{5}=(-1)^{500}\pmod{5}=1$
        -   $2^{1000}\pmod{7}=(8^{333}\cdot2)\pmod{7}=2$
        -   $2^{1000}\pmod{11}=(2^5)^{200}\pmod{11}=1$
    2.  Suche $0\leq x<1155$ mit
        $$x\equiv\begin{cases}1\pmod{3}\\1\pmod{5}\\2\pmod{7}\\1\pmod{11}\end{cases}$$
        Chinesischer Restsatz liefert $x=331$
:::

Die Lösung $x$ aus vorigem Beispiel ist eindeutig.

::: proof
```{=tex}
\begin{proof}
Betrachte die Abbildung $\psi: \Z_M\to(\Z_{m_1}\times...\times\Z_{m_n})$, $x\mapsto(x\pmod{m_1},...,x\pmod{m_n})$. Der chinesische Restsatz besagt: Für jedes $n$-Tupel $(a_1,...,a_n)\in\Z_{m_1}\times...\times\Z_{m_n}$ gibt es ein $x\in\Z_M$ mit $\psi(x)=(a_1,...,a_n)$.

$\implies\psi$ ist surjektiv.

\toprove $\psi$ bijektiv, d.h. es gibt nur genau ein $x$, mit $\psi(x)=(a_1,,,.,a_n),\quad x\in\Z_M$. Da $M=m_1\cdot...\cdot m_n$ ist $|\Z_M|=|\Z_{m_1}\times...\times\Z_{m_n}|$

$\implies$ Jedes Element von $\Z_{m_1}\times...\times\Z_{m_n}$ wird nur von genau einem $x$ getroffen

$\implies \psi$ bijektiv
\end{proof}
```
:::

::: bsp
Aus *Meister Suns Rechenhandbuch* von Sun Zi Suan Jing:

"Es gibt eine unbekannte Zahl von Dingen. Wenn mit drei gezählt wird,
haben sie einen Rest von zwei; wird mit fünf gezählt, einen Rest von
drei, mit sieben einen Rest von zwei. Rate die Zahl."

Formal: Suche $x$ mit
$$x\equiv\begin{cases}2\pmod{3}\\3\pmod{5}\\2\pmod{7}\end{cases}$$

TU DU!
:::

## Strukturgleichheit von Ringen

Seien $(R, +, \cdot)$ und $(R',\oplus,\odot)$ Ringe.

1.  $\psi: R\to R'$ heißt (Ring-)Homomorphismus, falls
    $\forall x,y\in R$ gilt $$\psi(x+y)=\psi(x)\oplus\psi(y)$$
    $$\psi(x\cdot y)=\psi(x)\odot\psi(y)$$
2.  Wenn $\psi$ bijektiv, heißt $\psi$ (Ring-)Isomorphismus. In diesem
    Fall heißen $R,R'$ isomorph (d.h. sie sind strukturgleich). Man
    schreibt $R\cong R'$.

::: bsp
1.  Boolesche Algebra:
    $$(\{f,w\}, \texttt{XOR}, 1)\cong ({0,1},\oplus,\odot)$$
    $\psi(f)=0,\psi(w)=1$. $\psi$ Isomorphismus, falls
    Verknüpfungstafeln übereinstimmen
    `\begin{center}\begin{tabular}{c||c c}\texttt{XOR}&f&w\\\hline f&f&w\\w&w&f\end{tabular}\end{center}`{=tex}
    bzw.
    `\begin{center}\begin{tabular}{c||c c}$\oplus$&0&1\\\hline0&0&1\\1&1&0\end{tabular}\end{center}`{=tex}
2.  Homomorphismus:
    $$\psi(\Z,+,\cdot)\to(\Z_n,\oplus,\odot),\quad x\mapsto x\pmod{n}$$
:::

::: bem
Seien $(R,+,\cdot)$ und $(R',\oplus, \odot)$ Ringe und $\psi:R\to R'$
ein Isomorphismus.

1.  $\psi(1)$ ist Eins in $R'$: $\forall a\in R$, d.h. $\psi(a)\in R'$
    gilt:
    $$\psi(1)\odot\psi(a)=\psi(1\cdot a)=\psi(a)=\psi(a\cdot1)=\psi(a)\odot\psi(1).$$
2.  $a\in R$ invertierbar $\iff\psi(a)\in R'$ invertierbar.
    `\begin{align*}a\in R\text{ invertierbar}&\iff\exists b\in R: ab=1\\&\iff\psi(ab)=\psi(1)\\&\iff\psi(a)\odot\psi(b)=\psi(1)\\&\iff\psi(a)\text{ invertierbar}\end{align*}`{=tex}
:::

## Berechnung der Eulerschen $\varphi$-Funktion

Über chinesischen Restsatz.

$M=m_1\cdot...\cdot m_n,\quad m_i\in\N$ paarweise teilerfremd.

$\implies \varphi(M)=\varphi(m_1)\cdot...\cdot\varphi(m_n)$

Insbesondere durch Primfaktorzerlegung:
$M=p_1^{a_1}\cdot...\cdot p_k^{a_k}$

$\implies\varphi(M)=(p_1-1)p_1^{a_1-1}\cdot...\cdot(p_k-1)p_k^{a_k-1}$

::: proof
```{=tex}
\begin{proof}
Es gilt $Z_M\cong Z_{m_1}\times...\times Z_{m_n}$ mittels $\psi$ aus voriger Bemerkung. Dann gilt
\begin{align*}
    x\in\Z_M\text{ invertierbar}&\iff\psi(x)=(x\bmod{m_1},...,x\bmod{m_n})\text{ invertierbar}\\
    &\iff x\bmod{m_i}\text{ invertierbar},\quad\forall i\in\{1,...,n\}
\end{align*}
$\implies\varphi(M)=\varphi(m_1)\cdot...\cdot\varphi(m_n)$

Angenommen $M=p_1^{a_1}\cdot...\cdot p_k^{a_k}$ ist Primfaktorzerlegung. Es genügt zu zeigen, dass mit $p\in\P$ gilt $\varphi(p^a)=(p-1)p^{a-1}=p^a-p^{a-1}$. $\Z_{p^a}$ enthält $p^a$ Elemente. Dabei sind die Elemente $kp$ für $0\le k\le p^{a-1}-1$ nicht teilerfremd zu $p^a$. Davon gibt es $p^{a-1}$ Stück.
\end{proof}
```
:::

::: bsp
$\varphi(100)=\varphi(4\cdot5^2)=\varphi(4)\cdot\varphi(5^2)=2\cdot(5-1)\cdot5^{2-1}=40$
:::

## Euklidischer Algorithmus in Polynomringen über einem Körper $K$

### $\ggT$ und $\kgV$ in $K[x]$

1.  $f,g\in K[x],\ f\ne0,\ f\mid g \iff \exists q\in K[x]: g=qf\\\text{Gradformel}\implies\grad(f)\le\grad(g),\ \text{falls }g\ne 0$
2.  $f=\sum_{i=1}^na_ix^i\in K[x]$ heißt *normiert*, falls der
    Leitkoeffizient $a_n=1$.
3.  $g,h\in K[x]$, beide $=0$, $f=\ggT(g,h)$ falls $f$ *normiertes*
    Polynom von maximalem Grad, das $g$ und $h$ teilt.
4.  $g,h\in K[x]\setminus\{0\}$, $f=\kgV(g,h)$, falls $f$ *normiertes*
    Polynom von minimalem Grad, das von $g$ und $h$ geteilt wird.

::: bem
Sei $f=\sum_{i=1}^na_ix^i$, $a_n\ne0$. Dann ist $a_n^{-1}\cdot f$
normiert, z.B. $f=3x^2+x+7$

-   $f\in\R[x]: \frac{1}{3}f=x^2+\frac{x}{3}+\frac{7}{3}$
-   $f\in\Z_{11}[x]: 4f=x^2+4x+6$
:::

In $K[x]$ kann der $\ggT$ zweier Polynome mit einer Rekursionsvorschrift
analog zu $\ggT$ in $\Z$ berechnet werden. Man verwendet dazu
Polynomdivision mit Rest (siehe Mathe 2).

### Satz von Bézout

Analog zum Satz von Méziriac gilt: $g,h\in K[x]$, nicht beide $=0$
$\implies\exists s,t\in K[x]$: $\ggT(g,h)=sg+th$.

### EEA in K\[x\]

Wie in $(\Z,+,\cdot)$ kann auch für $(K[x],+,\cdot)$ der EEA formuliert
werden, um $s,t$ im Satz des Bézout zu berechnen. Damit kann jener Satz
auch für $K[x]$ bewiesen werden.

::: bsp
Seien $g=x^4+x^3+2x^2+1$ und $k=x^3+2x^2+2$ in $\Z_3[x]$

     $x$       $y$     $s_1$   $s_2$    $s$     $t_1$   $t_2$     $t$      $q$      $r$
  --------- --------- ------- ------- -------- ------- -------- -------- ------- ---------
      g         h        1       0       /        0       1        /        /        /
      h      $x^2+x$     0       1       1        1     $2x+2$   $2x+1$   $x+2$   $x^2+x$
   $x^2+x$   $2x+2$      /       /     $2x+2$     /       /      $x^2$    $x+1$   $2x+2$

Normieren: $\ggT(g,h)=2^{-1}(2x+2)=x+1$

$$s=2^{-1}(2x+2)=x+1$$ $$t=2^{-1}(x^2)=2x^2$$
:::

::: bem
Sowohl in $\Z$ als auch in $K[x]$ müssen eigentlich Existenz und
Eindeutigkeit der $\ggT$ und $\kgV$ gezeigt werden. Beweise trivial
offensichtlich. $\wtf$
:::

## Primelemente in $K[x]$

```{=tex}
\begin{center}\textit{Primelemente sind irreduzible Polynome.}\end{center}
```
$p\in K[x]$ mit $\grad\ge1$ irreduzibel $\iff f,g\in K[x]$ mit
$p=f\cdot g\implies \grad(f)=0\lor\grad(g)=0$

::: bsp
1.  $ax+b,\ a\ne0$ irreduzibel in $K[x]$
2.  $x^2-2\in\Q[x]$ irreduzibel, aber in $\R[x]$ reduzibel
3.  $x^2+1\in\R[x]$ irreduzibel, aber in $\Z_5[x]$ reduzibel
:::

### Lemma von Euklid in $K[x]$

$f\in K[x]$, $\grad(f)\ge1$. Dann sind folgende Aussagen äquivalent:

1.  $f$ irreduzibel
2.  $g,h\in K[x]$, $f\mid g\cdot h\implies f\mid g\lor f\mid h$

::: proof
```{=tex}
\begin{proof}
~\\
\begin{itemize}
\item (1) $\implies$ (2): Analog zu Lemma von Euklid in $\Z$.
\item (2) $\implies$ (1): Angenommen es existiert Polynom $g$ mit $g\mid f$.\\$\implies\exists g,h\in K[x]: f=gh$. Wir zeigen: $\grad(h)=0$ (d.h. $f$ irreduzibel). $f=gh\implies f\mid g\lor f\mid h$. O.B.d.A. $f\mid g$. $\grad(f)\le\grad(g)\le\grad(g)+\grad(h)=\grad(g\cdot h)=\grad(f)\\\implies\grad(h)=0,\ \grad(f)=\grad(g)$
\end{itemize}
\end{proof}
```
:::

::: bem
Für $\Z$ gilt (2) $\implies$ (1) ebenfalls. Anstatt der Gradformel im
vorigen Beweis schreibt man für
$f,g,h\in\Z,\ f\ge2: 2\le f\le|g|\le gh=f\implies f=|g|\land|h|=1\implies f\in\P$.
:::

## Primfaktorzerlegung in $K[x]$

Sei $f\in K[x]$ mit Leitkoeffizient $a_n\ne0,n\ge1$. Dann: Es gibt
eindeutige irreduzible Polynome $p_1,...,p_e\in K[x]$ und
$m_1,...,m_l\in\N$ mit $f=a_np_1^{m_1}\cdot...\cdot p_e^{m_e}$.

## Korollar

$f\in K[x]$, $\grad(f)=n\ge1$. Dann:

1.  $f$ hat max. $n$ Nullstellen $a_1,...,a_k\in K$.
2.  $f=(x-a_1)\cdot...\cdot(x-a_k)\cdot \bar{f}$ mit
    $\grad(\bar{f})=\grad(f-k)$.

::: proof
```{=tex}
\begin{proof}
~\\
\begin{itemize}
\item $n=1$: $f=ax+b$ hat Nullstelle $-a^{-1}b$.
\item $n>1$: Hat $f$ keine Nullstelle $\implies$ fertig.

Sonst: Sei $a\in K$ Nullstelle $\implies f=(x-a)\cdot g,\ \grad(g)=n-1$.

Sei $b\in K$ weitere Nullstelle, $b\ne a$: $\implies (x-b)\mid(x-a)\cdot g\implies (x-b)\mid g$, da $(x-b)$ irreduzibel.

$\implies b$ Nullstelle von $g$. Per Induktion hat $g$ maximal $n-1$ Nullstellen.
\end{itemize}
\end{proof}
```
:::

::: bem
$(\Z_n,\oplus,\odot)$ Körper $\iff n\in\P$. Analog in $K[x]$: Sei
$f\in K[x],\ \grad(f)=n$. Dann ist $(K[x]_n,+,\odot_f)$ mit

-   $K[x]_n=\{g\in K[x]\mid\grad(g)<n\}$
-   $g\odot_f h \defeq g\cdot h\pmod{f}$

ein kommutativer Ring mit Eins.

Invertierbare Elemente bezüglich $\odot_f$:
$K[x]_n^*\defeq\{g\in K[x]_n\mid\ggT(g,f)=1\}$ (Beweis wie für
$\Z_n^*$). Es folgt
$\exists s,t\in K[x]: sg+tf=1\implies s\cdot g\equiv1\pmod{f}$ und
$g^{-1}\equiv s\pmod{f}$. Damit erhält man $(K[x]_n,+,\odot_f)$ Körper
$\iff f$ irreduzibel.

Für $K=\Z_p$ lässt sich zeigen:

1.  $\Z_p[x]_n$ Körper der Ordnung $p^n\iff f$ irreduzibel, $p\in\P$
2.  Jeder endliche Körper hat Primzahlpotenzordnung und ist durch seine
    Ordnung bis auf Isomorphie eindeutig festgelegt.
:::

## Anwendungsbeispiel aus der Kryptologie

Die ältesten Verfahren zur Verschlüsselung von Nachrichten sind
symmetrisch, d.h. Sender und Empfänger verwenden denselben Schlüssel zur
Ver- und Entschlüsselung einer Nachricht (z.B. Cäsar-Chiffre, ENIGMA,
...). Problem: Sender und Empfänger müssen Schlüssel auf sicherem Weg
austauschen.

Zur Lösung des Problems wurden asymmetrische Verfahren entwickelt, bei
denen kein Schlüssel getauscht werden muss (z.B. public-key-Verfahren,
Diffie-Hellman, ...):

-   Bob will Nachricht empfangen. Er erzeugt 2 Schlüssel:
    -   public key, wird veröffentlicht
    -   private key, geheim
-   Alice verschlüsselt Nachricht an Bob mit public key
-   Bob entschlüsselt mit private key

Eine der wichtigsten Realisationen: RSA-Verfahren. Verwende dazu
Einwegfunktionen, d.h. Funktionen, die praktisch unmöglich umzukehren
sind. Kanditaten dafür sind Potenzfunktionen in $\Z_n$, wobei
$n=pq,\ p,q\in\P$: $x^e\pmod{n}$.

-   Es ist praktisch unmöglich, $n$ zu faktorisieren, wenn $n$ sehr
    groß: Angenommen $n$ ist 2000-Bit-Zahl und angenommen pro Sekunde
    kann man bei $10^9$ Zahlen testen, ob sie teilerfremd zu $n$ sind.
    Dazu bräuchte man
    $$\frac{2^{1000}}{10^9}s=\frac{(2^{10})^{100}s}{(10^3)^3}\approx10^{291}s\approx3\cdot10^{285}\text{ Jahre}.$$
    Faktorisierung von $n\approx2^{1000}$ mit schnellsten Rechnern der
    Welt derzeit mehr als $10^{100}$ Jahre.
-   Wurzelziehen in $\Z_n$ schwierig. Z.B. $x^3\pmod{7}=6\implies x=3$.
-   Man kann zeigen: Wählt man $e$ teilerfremd zu
    $\varphi(n)=(p-1)(q-1)$, so ist $x^e\pmod{n}$ bijektiv.
-   Es gibt eine geheime Zahl $d$, mit der die Operation umgekehrt
    werden kann. Eine solche Einwegfaktorisierung heißt
    Trapdoorfunktion.

## RSA-Verfahren

Bob (Schlüsselerzeugung)

1.  wählt zwei große $p,q\in\P: p\ne q$ und bildet $n=pq$
2.  berechnet $\varphi(n)=(p-1)(q-1)$
3.  wählt $e$ teilerfremd zu $\varphi(n)$
4.  bestimmt $0<d<\varphi(n)$ mit $e\cdot d\pmod{\varphi(n)}=1$.
    Verwendet dazu EEA: $ed\pmod{\varphi(n)}$
5.  Public key: $(e,n)$. Private key: d

Alice (Verschlüsselung)

1.  kodiert Nachricht als Zahl und zerlegt sie anschließend in Blöcke
    gleicher Länge, sodass jeder Block $m_i$ als Zahl $0\le m_i<n$ ist.
    Blöcke werden einzeln verschlüsselt. Sei $m$ ein solcher Block.
2.  berechnet $c=m^e\pmod{n}$
3.  sendet $c$ an Bob.

Bob (Entschlüsselung)

1.  berechnet $c^d\pmod{n}=m$ für alle Blöcke

### Korrektheit des Verfahrens:

::: proof
`\toprove`{=tex}$c^d\pmod{n}=m$. Daraus folgt insbesondere, dass die
Faktorisierung $m^e\pmod{n}$ bijektiv ist und Nachrichten korrekt
entschlüsselt werden können.
$$c^d\equiv (m^e)^d\equiv m^{ed}\equiv m^{k\varphi(n)+1}\equiv m(m^{\varphi(n)})^k\pmod{n}$$

```{=tex}
\begin{proof}
Durch Fallunterscheidung:
\begin{num}
    \item Fall: $m=0\iff c=0$, d.h. 0 wird durch 0 verschlüsselt.
    \item Fall: $\ggT(m,n)=1\implies m^{\varphi(n)}\equiv1\pmod{n}\implies c^d\equiv m\pmod{n}$
    \item Fall $p\mid m$ und $m\ne0\implies m=ap,\ a\in\{1,...,q-1\}\implies \ggT(q,m^j)=1\forall j\in\N$, insbesondere für $j=\varphi(n)\implies m\pmod{p}=0\land m^{\varphi(n)\pmod{q}}=1$. Chinesischer Restsatz: $m_1=p,M_1=q,m_2=q,M_2=p$. EEA: $\exists s,t\in\Z:sp+tq=1\implies c^d\equiv tqm+spm\equiv(tq+sp)m\pmod{n}$
    \item Fall: $q\mid m$ und $m\ne0$ analog zu Fall 3.
\end{num}
\end{proof}
```
:::

::: bsp
Gegeben $(n,e)=(33,3)$ public key

1.  Verschlüsseln Sie die Nachricht $m=6$.`\newline`{=tex}
    $c=m^e\pmod{n}=6^3\pmod{33}=3\cdot 6=18$
2.  Faktorisieren Sie $n=33$, berechnen Sie $\varphi(n)$ und
    $d$.`\newline`{=tex} $\varphi(n)=2\cdot10=20$, $ed\pmod{20=1}$. Man
    erkennt $d=7$.
3.  Entschlüsseln Sie die Nachricht $c=2$:
    $m=c^d\pmod{n}=2^7\pmod{33}=2^5\cdot2^2\pmod{33}=-4\pmod{33}=29$.
:::

# Funktionen und Stetigkeit im $\R^n$

## Wiederholung

-   Standardskalarprodukt auf $\R^n$:
    $$x=\begin{pmatrix}x_1\\\vdots\\x_n\end{pmatrix},\ y=\begin{pmatrix}y_1\\\vdots\\y_n\end{pmatrix}$$
    $$
    \implies(x|y)=x_1y_1+...+x_ny_n$$
-   Winkelberechnung: $\cos(\alpha)=\frac{(x|y)}{\|x\|\cdot\|y\|}$
-   Längenberechnung: $\|x\|=\sqrt{(x|x)}=\sqrt{x_1^2+...+x_n^2}$
-   Abstand: $d(x,y)=\|x-y\|$
-   Norm: $\|\cdot\|:\R^n\to\R$

## Konvergenz von Folgen

Sei $(x_k)_{k\in\N}$ eine Folge im $\R^n$. $(x_k)_{k\in\N}$ konvergiert
gegen $a\in\R^n$ ($x_k\to a$ oder $\lim_{k\to\infty}x_k=a$) wenn gilt
$$\forall\varepsilon>0\ \exists N\in\N\ \forall k\ge N:\|x_k-a\|<\varepsilon.$$

::: bem
`\begin{align*}&x_k=\begin{pmatrix}x_1^{(k)}\\\vdots\\x_n^{(k)}\end{pmatrix}\to a \begin{pmatrix}a_1\\\vdots\\a_n\end{pmatrix}\\\iff&x_i^{(k)}\to a_i\quad\forall i\in\{1,...,n\}\end{align*}`{=tex}
Die Rechenregeln für Folgen in $\R$ gelten analog im $\R^n$.
:::

::: bsp
-   $\begin{pmatrix}x_k\\y_k\end{pmatrix}=\frac{1}{\sqrt{k+1}}\begin{pmatrix}\cos(\frac{k\pi}{4})\\\sin(\frac{k\pi}{4})\end{pmatrix}\\\left\|\begin{pmatrix}x_k\\y_k\end{pmatrix}\right\|=\frac{1}{\sqrt{k+1}}\to0$
:::

## Offene, abgeschlossene, kompakte Mengen

-   Sei $x_0\in\R^n,\ \varepsilon>0$.
    $K_\varepsilon(x_0)=\{x\in\R^n\mid\|x-x_0\|<\varepsilon\}$ heißt
    offene $\varepsilon$-Kugel um $x_0$
-   $U\subseteq\R^n$ offen
    $\defiff\forall x\in U\exists\varepsilon>0:K_\varepsilon(x)\subseteq U$
-   $U$ heißt Umgebung von $x\in D\subseteq\R^n\defiff U$ offen und
    $x\in U$ und $U\subseteq D$
-   $A\subseteq\R^n$ abgeschlossen $\defiff A^C=\R^n\setminus A$ offen

## Rand

$x\in\R^n$ Randpunkt von
$D\subseteq\R^n\defiff K_\varepsilon(x)\cap D\ne\emptyset$ und
$K_\varepsilon(x)\cap D^C\ne\emptyset\quad\forall\varepsilon>0$.

$\partial D$ ist die Menge aller Randpunkte von $D$.

::: bsp
-   $K_1\left(\begin{pmatrix}0\\2\end{pmatrix}\right)\subseteq\R^2$
    offen
-   Allgemein: $K_\varepsilon(x_0)\subseteq\R^n$ offen
-   $U=\left\{\begin{pmatrix}x\\y\end{pmatrix}\in\R^2\mid x+y>1\right\}$
    offen
:::

## Charakterisiserung abgeschlossener Mengen

Sei $(x_k)$ Folge in $A\subseteq\R^n$ mit Grenzwert $a\in\R^n$.

$A$ abgeschlossen $\iff a\in A$.

::: proof
```{=tex}
\begin{proof}
In beide Richtungen:
\begin{itemize}
\item \enquote{$\implies$}\quad Sei $A$ abgeschlossen und
    $x_k\to a\in\R^n$. Angenommen $a\notin A$:
    \begin{align*}&\implies a\in A^C\\&\implies\exists\varepsilon>0:K_\varepsilon(a)\subseteq A^C\\&\implies\exists N\in\N\forall k\ge N:\|x_k-a\|<\varepsilon\\&\implies x_k\in K_\varepsilon(a)\quad\forall k\ge N\quad\lightning\end{align*}
\item \enquote{$\impliedby$}\quad Durch Kontraposition: $A\subseteq\R^n$ nicht abgeschlossen $\implies$ Es gibt Folge $(x_k)$ in $A$ mit Grenzwert $a\in A^C$. $A$ nicht abgeschlossen $\implies A^C$ nicht offen.
    \begin{align*}&\implies\exists a\in A^C:K_\varepsilon(a)\not\subseteq A^C\quad\forall\varepsilon>0\\&\implies K_\varepsilon(a)\cap A\ne\emptyset\quad\forall\varepsilon>0\end{align*} Wähle $x_k\in K_{1/k}(a)\cap A,\quad k\in\N$ \begin{align*}&\implies\|x_k-a\|<\frac{1}{k}\\&\implies x_k\to a\text{ für $k\to\infty$ und $x_k\in A$}\end{align*}
\end{itemize}
\end{proof}
```
:::

::: bsp
$M=\left\{\begin{pmatrix}x\\y\end{pmatrix}\in\R^2\mid0\le x<1\right\}$
weder offen noch abgeschlossen:

-   nicht offen, da z.B.
    $K_\varepsilon(0)\cap M^C\ne\emptyset\quad\forall\varepsilon>0$
-   nicht abgeschlossen, da z.B.
    $x_k=\begin{pmatrix}1-1/k\\0\end{pmatrix}\in M$, aber
    $x_k\to\begin{pmatrix}1\\0\end{pmatrix}\notin M$
:::

## Vereinigung und Schnitt offener Mengen

Sei $\{U_i\}_{i\in\N}$ ein System offener Mengen. Dann:

-   $\bigcup_{i=1}^\infty U_i$ offen
-   $U_1\cap U_2$ offen

::: proof
```{=tex}
\begin{proof}
~\\
\begin{abc}
    \item Sei $x\in\bigcup_{i=1}^\infty U_i$
    \begin{align*}&\implies\exists i\in\N:x\in U_i\\&\implies\exists\varepsilon>0:K_\varepsilon(x)\subseteq U_i\text{, da $U_i$ offen}\\&\implies K_\varepsilon(x)\subseteq\bigcup_{i=1}^\infty U_i\\&\implies\bigcup_{i=1}^\infty U_i\text{ offen}\end{align*}
    \item $x\in U_1\cap U_2$
    \begin{align*}&\implies\exists\varepsilon_1,\varepsilon_2>0:K_{\varepsilon_1}(x)\subseteq U_1,\ K_{\varepsilon_2}(x)\subseteq U_2\\&\varepsilon\defeq\min\{\varepsilon_1,\varepsilon_2\}\\&\implies K_\varepsilon(x)\subseteq K_{\varepsilon_1}(x)\subseteq U_1\land K_\varepsilon(x)\subseteq K_{\varepsilon_2}(x)\subseteq U_2\\&\implies K_\varepsilon(x)\subseteq U_1\cap U_2\end{align*}
\end{abc}
\end{proof}
```
:::

## Folgerung

Sei $\{A_i\}_{i=1}^\infty$ ein System abgeschlossener Mengen. Dann:

-   $\bigcap_{i=1}^\infty A_i$ abgeschlossen
-   $A_1\cup A_2$ abgeschlossen

::: proof
```{=tex}
\begin{proof}
~\\
\begin{itemize}
    \item $(\bigcap_{i=1}^\infty A_i)^C=\bigcup_{i=1}^\infty A_i^C$ offen
    \item $(A_1\cup A_2)^C=A_1^C\cap A_2^C$ offen
\end{itemize}
\end{proof}
```
:::

## Abschluss, Inneres

Sei $D\subseteq\R^n$.

-   $\bar{D}\defeq D\cup\partial D$ ist abgeschlossen und heißt
    Abschluss von $D$.
-   $\mathring{D}\defeq D\setminus\partial D$ ist offen und heißt
    Inneres von $D$.
-   $\partial D$ ist abgeschlossen

::: proof
```{=tex}
\begin{proof}
~\\
\begin{itemize}
    \item Sei $(x_k)$ Folge in $\bar{D}$ mit Grenzwert $a\in\R^n$.\\Annahme: $a\notin\bar{D}$, d.h. insbesondere $a\notin\partial D$\\$\implies\exists\varepsilon>0:K_\varepsilon(a)\cap D=\emptyset$ und $K_\varepsilon(a)\cap\partial D=\emptyset$.\\Widerspruch, da $\exists N\in\N\forall n\ge N: x_n\in K\varepsilon(a)$.
    \item \begin{rom}
    \item Es ist $\partial D=\partial(D^C)$: $x\in\partial(D^C)\\\iff K_\varepsilon(x)\cap D^C\ne\emptyset$ und $K_\varepsilon\cap(D^C)^C\ne\emptyset\quad\forall\varepsilon>0\\\iff x\in\partial D$
    \item $(D^C\cup\partial D)^C=D\cap(\partial D)^C=D\setminus\partial D\implies\mathring{D}$ offen
    \end{rom}
\end{itemize}
\end{proof}
```
:::

::: bsp
-   $\bar{K_\varepsilon}(x_0)=\{x\in\R^n\mid\|x\|\le\varepsilon\}$
    abgeschlossene $\varepsilon$-Kugel um $x_0\in\R^n$
-   `\begin{align*}M&=\left\{\begin{pmatrix}x\\y\end{pmatrix}\in\R^2\mid0\le x<1\right\}\\\partial M&=\left\{\begin{pmatrix}x\\y\end{pmatrix}\in\R^2\mid x=0\lor x=1\right\}\\\bar{M}&=\left\{\begin{pmatrix}x\\y\end{pmatrix}\in\R^2\mid0\le x\le1\right\}\\\mathring{M}&=\left\{\begin{pmatrix}x\\y\end{pmatrix}\in\R^2\mid0<x<1\right\}\end{align*}`{=tex}
:::

## Beschränkte/kompakte Mengen

-   $D\subseteq\R^n$ beschränkt
    $\defiff\exists K>0:\|x\|<K\quad\forall x\in D$
-   $D\subseteq\R^n$ kompakt $\defiff$ Jede Folge in $D$ besitzt eine in
    $D$ konvergente Teilfolge.

## Charakterisierung kompakter Mengen

$D\subseteq\R^n$ kompakt $\iff D$ beschränkt und abgeschlossen.

::: proof
```{=tex}
\begin{proof}
TODO.
\end{proof}
```
:::

::: bsp
-   $\bar{K}_\varepsilon(x_0)$ kompakt, da beschränkt und abgeschlossen
-   $A=\left\{\begin{pmatrix}x\\y\end{pmatrix}\in\R^2\mid y=x^2,\ y\le1\right\}$
    abgeschlossen und beschränkt, also kompakt
:::

## Mehrdimensionale reele Funktionen und Stetigkeit

-   Eine reele Funktion von mehreren Veränderlichen ist eine Abbildung
    `\begin{align*}f:D\subseteq\R^n&\to\R^m\\x=\begin{pmatrix}x_1\\\vdots\\x_n\end{pmatrix}&\to f(x)=\begin{pmatrix}f_1(x)\\\vdots\\f_m(x)\end{pmatrix}\end{align*}`{=tex}
-   Man unterscheidet folgende Fälle:
    `\begin{alignat*}{2}m=1:\quad&f:D\subseteq\R^n\to\R\quad&&\text{(skalare Funktion)}\\m>1:\quad&f:D\subseteq\R^n\to\R^m\quad&&\text{(vektorwertige Funktion)}\\n=1:\quad&f:D\subseteq\R\to\R^m\quad&&\text{(parameterisierte Kurve)}\end{alignat*}`{=tex}

::: bsp
-   Skalare Funktionen mit $D\subseteq\R^2$ lassen sich grafisch
    darstellen:
    -   $\mathrm{Graph}(f)\defeq\left\{\begin{pmatrix}x\\y\\z\end{pmatrix}\in\R^3\mid\begin{pmatrix}x\\y\\z\end{pmatrix}\in D,\ z=f(x,y)\right\}$
        ist eine Fläche im $\R^3\\$ Beispiel: $f(x,y)=5-2xy+x^3+y^2\\$
        `\begin{tikzpicture}\begin{axis}[xlabel={$y$},ylabel={$x$},zlabel={$z$}]\addplot3[surf, mesh, samples=30]{5-2*x*y+x^3+y^2};\end{axis}\end{tikzpicture}`{=tex}
    -   Höhen-/Niveaulinien:
        $N_C(f)\defeq\left\{\begin{pmatrix}x\\y\end{pmatrix}\in\R^2\mid f(x,y)=c\right\},\quad c\in\R.\\$
        Beispiel: $f:\R^2\to\R,\ f(x,y)=x^2+y^2\\$
        `\begin{tikzpicture}\begin{axis}[xlabel={$y$},ylabel={$x$},zlabel={$z$}]\addplot3[surf, mesh, samples=30]{x^2+y^2};\end{axis}\end{tikzpicture}\\`{=tex}
        `TODO%\begin{tikzpicture}\begin{axis}[view={0}{90},enlarge x limits,xlabel={$y$},ylabel={$x$},zlabel={$z$}]\addplot3[domain=-3:3,domain y=-3:3,contour gnuplot={levels={-1,1}},samples=30]{x^2+y^2};\end{axis}\end{tikzpicture}\\`{=tex}
-   Parameterisierte Kurve
    -   $f:\R\to\R^2,\ x\to\begin{pmatrix}\cos(x)\\\sin(x)\end{pmatrix}$
        Einheitskreis
    -   Venusbahn geozentrisch: TODO: Graphen.
        `\begin{align*}D(t)&=V(t)-E(t)\\E(t)&\approx a_E(\cos(8\cdot2\pi t),\ \sin(8\cdot2\pi 2))\\V(t)&\approx a_V(\cos(13\cdot2\pi t),\ \sin(13\cdot2\pi t))\end{align*}`{=tex}
        Innerhalb einer Zeiteinheit ($0\let\le1$) dreht sich die Erde
        $8\times\phantom{{}}$ um die Sonne $\implies$ Umlaufzeit Erde:
        $T_E=\frac{1}{8}\implies$ Umlaufzeit Venus $T_V=\frac{1}{13}$.
        Aus dem 3. Keplerschen Gesetz folgt:
        $$T_E^2\sim a_E^3\iff a_E\sim\sqrt[3]{T_E^2}=\sqrt[3]{\frac{1}{64}}=\frac{1}{4}$$
        und $$a_V\sim\sqrt[3]{\left(\frac{1}{13}\right)^2}.$$ Mit
        $a_E=\frac{1}{4}$ und
        $a_V=\sqrt[3]{\left(\frac{1}{13}\right)^2}$ erhält man für
        $D(t),\ 0\le t\le1$ eine Epitrochoide. TODO: Graphen
:::

## Stetigkeit

Sei $f:D\subset\R^n\to\R^m$.

-   $c\in\R^m$ heißt Grenzwert von $f$ in $a\in\R^n$, falls für jede
    Folge $(x_k)$ mit $x_k\to a,\ x_k\ne a\quad\forall k\in\N$ gilt:
    $f(x_k)\to c$. Schreibweise: $\lim_{x\to a}f(x)=c$
-   $f$ stetig in $a\in D \defiff \lim_{x\to a}f(x)=f(a)$
-   $f$ stetig auf $D \defiff f$ stetig in $a\quad\forall a\in D$

::: bem
-   $f:D\subset\R^n\to\R^m$ stetig in
    $a\in D\iff f_i:D\to\R\text{ stetig}\quad\forall i\in\{1,...,m\}$
-   Summen, Produkte, Quotienten, Kompositionen stetiger Funktionen sind
    stetig. Rechenregeln für Grenzwerte gelten analog.
:::

::: bem
-   Stetigkeit wurde anhand des Folgenkriteriums definiert. Analog dazu
    lässt sich dieses auch anhand des $\varepsilon-\delta$-Kriteriums
    formulieren:
    `\begin{align*}f:D\subset\R^n\to\R^m\text{ stetig}&\iff\forall\varepsilon>0\exists\delta>0\forall x\in D:\|x-a\|<\varepsilon\\&\implies\|f(x)-f(a)\|<\varepsilon\end{align*}`{=tex}
-   Anders formuliert:
    $$\forall\varepsilon>0\exists\delta>0:f(K_\delta(a))\subseteq K_\varepsilon(f(a))$$
:::

::: bsp
-   $f:\R^n\to\R,\ f(x_1,...,x_n)=x_i$ stetig in $a\in\R^n$:
    -   Es sei $(a_k)_{k\in\N}$ Folge in $\R^n$ mit
        `\begin{align*}&a_k=\begin{pmatrix}a_1^{(k)}\\\vdots\\a_n^{(k)}\end{pmatrix}\to a=\begin{pmatrix}a_1\\\vdots\\a_n\end{pmatrix}\\\implies&\lim_{k\to\infty}f(a_k)=\lim_{k\to\infty}a_i^{(k)}=a_i\end{align*}`{=tex}
    -   $f(a)=a_i\implies f(a_k)\to f(a)$
-   Es folgt, dass alle Polynome stetig sind
-   Folgende Funktion ist stetig in
    $\R^2\setminus\left\{\begin{pmatrix}0\\0\end{pmatrix}\right\}$
    (TODO: Graph)
    $$f(x,y)=\begin{cases}0&(x,y)=(0,0)\\\frac{3x^2}{x^2+y^2}&\text{ sonst}\end{cases}$$
    -   Sei
        $a_k\defeq\begin{pmatrix}1/k\\1/k\end{pmatrix}\in\R^2\setminus\left\{\begin{pmatrix}0\\0\end{pmatrix}\right\}$.
        Es gilt
        `\begin{align*}&a_k\to0\\\implies&f(a_k)=\frac{3(1/k)^2}{(1/k)^2+(1/k)^2}=\frac{3}{2}\\\implies&f(a_k)\to\frac{3}{2}\end{align*}`{=tex}
    -   $f(0,0)=0\implies f(a_k)\not\to f(0,0)$ und $f$ unstetig in
        $\begin{pmatrix}0\\0\end{pmatrix}$
-   Folgende Gleichung muss nicht notwendigerweise erfüllt sein
    (vorausgesetzt, die entsprechenden Grenzwerte existieren):
    $$\lim_{x\to a}(\lim_{y\to b}f(x,y))=\lim_{y\to b}(\lim_{x\to a}f(x,y))$$
:::

Falls einer der Grenzwerte existiert oder sogar die Gleichung erfüllt
ist, so folgt danach keineswegs, dass $\lim_{(x,y)\to(a,b)}f(x,y)$
existiert.

::: bsp
`\begin{align*}f:\ &\R^2\setminus\left\{\begin{pmatrix}0\\0\end{pmatrix}\right\}\to\R\\&f(x,y)=\frac{xy^2}{x^2+y^2}\end{align*}`{=tex}

Da $\lim_{x\to0}f(x,y)=0$ und $\lim_{y\to0}(\lim_{x\to0}f(x,y))=0$.

Analog $\lim_{x\to0}(\lim_{y\to0}f(x,y))=0$.

Aber: $\lim_{(x,y)\to(0,0)}f(x,y)$ existiert nicht, denn
$$f\left(\frac{1}{k},\frac{1}{k}\right)=\frac{k^2}{1/k^2+1/k^2}=\frac{k}{k^2+1}\to0$$
$$f\left(\frac{1}{k^2},\frac{1}{k}\right)=\frac{1/k^2}{2/k^2}\to\frac{1}{2}$$
Insbesondere lässt sich $f$ im Nullpunkt nicht stetig fortsetzen.
:::

## Stetigkeit und Offenheit

Sei $f:D\subseteq\R^n\to\R^n,\ V\subseteq f(0)$, $V$ offen. Dann:
$$f\text{ stetig}\iff f^{-1}(V)\text{ offen}$$

::: proof
```{=tex}
\begin{proof}
In beide Richtungen:
\begin{itemize}
\item \enquote{$\implies$}:\quad Sei \begin{align*}y\in V&\implies\exists x\in D: f(x)=y\\&\implies\exists\varepsilon>0:K_\varepsilon(y)\subseteq V\\&\implies\exists\delta>0:f(K_\varepsilon(x))\subseteq K_\varepsilon(y)\\&\implies K_\varepsilon(x)\subseteq f^{-1}(K_\varepsilon(y))\subseteq f^{-1}(V)\end{align*}
\item \enquote{$\impliedby$}:\quad Trivial
\end{itemize}
\end{proof}
```
:::

## Stetigkeit und Kompaktheit

$f:D\subseteq\R^n\to\R^m$ stetig, $A\subseteq D$ kompakt $\implies f(A)$
kompakt.

::: proof
```{=tex}
\begin{proof}
Sei $(y_k)$ Folge in $f(A)$. \toprove: $(y_k)$ hat eine in $f(A)$ konvergente Teilfolge.

Sei $(x_k)$ Folge in $A$ mit $f(x_k)=y_k\quad\forall k\in\N$.

$\implies\exists(x_{k_j})\subseteq A$ mit Grenzwert $a\in A$.

$\implies f(x_{k_j})=y_{k_j}$ Teilfolge von $(y_k)$ in $f(A)$ mit Grenzwert $f(a)$
\end{proof}
```
:::

## Beschränktheit von Funktionen

Sei $D=\emptyset$, $f:D\subseteq\R^n\to\R^m$ beschränkt $\defiff f(D)$
beschränkt.

## Minimax-Theorem von Weierstraß

$f:D\subseteq\R^n\to\R$ stetig, $D$ kompakt.

$\implies\exists x_\star,x^\star\in D: \underbrace{f(x_\star)}_\mathrm{min}\le f(x)\le f(x^\star)_\mathrm{max}\quad\forall x\in D$

::: proof
```{=tex}
\begin{proof}
\toprove $f(D)$ kompakt.
\begin{itemize}
\item $f(D)$ beschränkt $\implies\exists\mathrm{inf}f(D),\mathrm{sup}f(D)$
\begin{align*}\implies\exists(a_k),(b_k)\subseteq f(D):\ &a_k\to\mathrm{inf}f(D)\\&b_k\to\mathrm{sup}f(D)\end{align*}
\item $f(D)$ abgeschlossen
\begin{align*}\implies&\mathrm{inf}f(D)=\max f(D)=f(x_*)\\&\mathrm{sup}f(D)=\max f(D)=f(x^*)\end{align*}
\end{itemize}
\end{proof}
```
:::

::: bsp
$f:\R^2\to\R$, $f(x,y)=xy$

$S=\left\{\begin{pmatrix}x\\y\end{pmatrix}\in\R^2\mid x^2+y^2=1\right\}$

$\implies f$ hat Maximum und Minimum auf $S$
:::

## Kontraktion

Sei $A\subseteq\R^n$ abgeschlossen und sei $f:A\to\R^n$. $f$ heißt
Kontraktion auf $A\defiff$

-   $f(A)\subseteq A$
-   $\|f(x)-f(y)\|\le q\|x-y\|,\ q\in[0,1)\quad\forall x,y\in A$

$f$ ist eine stetige Abbildung.

::: bsp
-   $f:\R\to\R,\ f(x)=\frac{1}{2}x\\|f(x)-f(y)|=\frac{1}{2}|x=y|$, d.h.
    $q=\frac{1}{2}$
-   $f$ Kontraktion auf $A=[0,1]$:
    $f([0,1])=[0,\frac{1}{2}]\subseteq[0,1]$
-   $f$ keine Kontraktion auf $A=[1,2]$, da
    $f([1,2])=[\frac{1}{2},1]\not\subseteq[1,2]$
:::

## Banachscher Fixpunktsatz im $\R^n$

Sei $A\subseteq\R^n$ abgeschlossen und $f:A\to A$ eine Kontraktion auf
$A$. Dann:

1.  $\exists!\bar{x}\in A: A(\bar{x})=\bar{x}$. $\bar{x}$ heißt
    Fixpunkt.
2.  Für $x_0\in A$ und $x_n\defeq f(x_{x_n-1}),\ n\in\N$, gilt:
    $x_n\to\bar{x}$ und $\|x_n-\bar{x}\|\le\frac{qn}{1-q}\|x_1-x_0\|$

::: proof
```{=tex}
\begin{proof}
TODO. Siehe Skript
\end{proof}
```
:::

## Matrixnorm

Sei $A\in\M_{m,n}(\R)$. Die reele Zahl
$\|A\|=\max\{\|Av\|\mid v\in\R^n,\ \|v\|=1\}$ heißt Operatornorm von
$A$.

# Differenziation im $\R^n$

## Partielle Ableitung

Sei $D\subseteq\R^n$ offen, $f:D\to\R^m$, $f(x)=(f_1(x),...,f_m(x))$ und
$a=(a_1,...,a_n)^\top\in D$.

-   $f$ heißt an der Stelle $a$ partiell nach $x_j$ differenzierbar,
    falls für jede der Funktionen $f_i: \R^n\to\R$ gilt: Die skalare
    Funktion $f_i(a_1,...,a_{j-1},x_j,a_{j+1},...,a_n)$ einer
    Veränderlichen ist an der Stelle $a_j$ differenzierbar, d.h.
    `\begin{align*}&\lim_{k\to0}\frac{f_i(a_1,...,a_{j-1},a_j+h,a_{j+1},...,a_n)-f_i(a_1,...,a_n)}{h}\\=&\lim_{h\to0}\frac{f_i(a+h\cdot e_j)-f(a)}{h}\end{align*}`{=tex}
    existiert für alle $1\le i\le m$.
-   Dieser Grenzwert heißt dann partielle Ableitung von $f_i$ nach $x_j$
    an der Stelle $a$. Schreibweise:
    $\frac{\partial f_i}{\partial x_j}(a)$.
-   Sind alle $f_i$ nach allen $x_j$ partiell differenzierbar in $a$, so
    heißt $f$ partiell differenzierbar und man definiert die
    Jacobimatrix von $f$ in $a$ durch
    $$f'(a)\defeq\begin{pmatrix}\frac{\partial f_1}{\partial x_1}(a)&...&\frac{\partial f_1}{\partial x_n}(a)\\\frac{\partial f_m}{\partial x_1}(a)&...&\frac{\partial f_m}{\partial x_n}(a)\\\end{pmatrix}\in\M_{m,n}(\R)$$
-   Für skalare Funktionen besteht $f'(a)$ aus nur einer Zeile. Man
    bezeichnet den Vektor
    $$f'(a)^\top=\begin{pmatrix}\frac{\partial f}{\partial x_1}(a)\\\vdots\\\frac{\partial f}{\partial x_n}(a)\end{pmatrix}=:\nabla f(a)=\grad(f(a))\in\R^n$$
    als Gradienten von $f$ in $a$.

## Geometriche Deutung der partiellen Ableitung

Sei $f:\R^2\to\R,\ a\in\R^2,\ a=\begin{pmatrix}a_1\\a_2\end{pmatrix}$.

TODO: Graph

::: bsp
-   $f:\R^2\to\R,\ f(x,y)=3xy+4y$
    `\begin{align*}\frac{\partial f}{\partial x}(x,y)&=\lim_{h\to0}\frac{f(x+h,y)-f(x,y)}{h}\\&=\lim_{h\to0}\frac{3(x+h)y+4y-3xy-4y}{h}\\&=\lim_{h\to0}3y\end{align*}`{=tex}
    D.h.: $y$ wird als Konstante behandelt und nach $x$ wird abgeleitet.
-   $f:\R^3\to\R,\ f(x,y,z)=y^2x+3x^2z^2$
    `\begin{align*}\frac{\partial f}{\partial x}(x,y,z)&=y^2+6xz^2\\\frac{\partial f}{\partial y}(x,y,z)&=2xy\\\frac{\partial f}{\partial z}(x,y,z)&=6x^2z\end{align*}`{=tex}
    `\begin{alignat*}{2}\implies&f'(x,y,z)&&=(y^2+6xz^2, 2xy,6x^2z)\\&f'(1,0,1)&&=(6,0,6)\\&\nabla f(x,y,z)&&=\begin{pmatrix}y^2+6xz^2\\2xy\\6x^2z\end{pmatrix}\end{alignat*}`{=tex}
-   $f:\R^3\to\R^2$,
    $f(x,y,z)=\begin{pmatrix}x+y\\xyz\end{pmatrix}\implies f'(x,y,z)=\begin{pmatrix}1&1&0\\yz&xz&xy\end{pmatrix}$
:::

::: bem
-   Zeigen später: Der Gradient zeigt in Richtung des steilsten Anstiegs
    einer Funktion in einem gegebenen Punkt. Er steht senkrecht auf den
    Niveaulinien.
-   Existieren für $f$ in einem gegebenen Punkt alle partiellen
    Ableitungen, so muss $f$ nicht automatisch stetig sein.
:::

## Totale Ableitung

Sei $D\subseteq\R^n$ offen, $a\in D$, $f: D\to\R^m$.

-   $f$ heißt in $a\in D$ (total) differenzierbar, wenn $f$ geschrieben
    werden kann als
    $$f(x)=\underbrace{f(a)}_{\in\R^m}+\underbrace{A}_{\in\M_{m,n}(\R)}\cdot(\underbrace{x-a}_{\in\R^m})+\underbrace{R(x)}_{\in\R^m},$$
    wobei $A\in\M_{m,n}(\R)$ und $R: D\to\R^m$ mit
    $\lim_{x\to a}\frac{R(x)}{\|x-a\|}=0$
-   $f$ heißt (total) differenzierbar, wenn in jedem Punkt von $D$
    differenzierbar.

::: bem
-   Für $m=n=1$ erhält man die Differenzierbarkeit aus Mathe 1:
    `\begin{align*}&f(x)=f(a)+A(x-a)+R(x)\\\implies&\frac{f(x)-f(a)}{x-a}=A+\frac{R(x)}{x-a}\to A\\\implies&f'(a)=A\end{align*}`{=tex}
-   $x\to a\iff x-a\to0$. Sei $v=x-a\in\R^n$. Dann kann vorige Gleichung
    geschrieben werden als
    $$f(a+v)=f(a)+Av+R(v)\quad\text{mit }\frac{R(v)}{\|v\|}\to0$$
:::

## Differenzierbarkeit $\implies$ Stetigkeit

$f:D\subseteq\R^n\to\R^m$ differenzierbar in $a\in D$ (D offen).

$\implies f$ stetig in $a$.

::: proof
```{=tex}
\begin{proof}
$$\lim_{x\to a}f(x)=\lim_{x\to a}(f(a)+A(x-a)+R(x))=f(a)$$
\end{proof}
```
:::

## $A=f'(a)$

Sei $f:D\subseteq\R^n\to\R^m$ und differenzierbar in $a\in D$, $D$ offen
und sei $f(a+v)=f(a)+Av+R(v)$ wie zuvor. Dann ist $f$ in $a$ partiell
differenzierbar und es gilt $A=f'(a)$. Insbesondere: $A$ eindeutig.

::: proof
```{=tex}
\begin{proof}
Sei $A=(a_{i,j})_{i,j}$, $v=(v_1,...,v_n)^\top\in\R^n$.

Für $i\in\{1,...,m\}$ ist $f_i(a+v)=f_i(a)+\sum_{j=1}^na_{ij}v_j+R_i(v)$.

Setzt man $v=\underbrace{h}_{\in\R}\cdot e_k$, so ist $\|v\|=|h|=\mathrm{sgn}(h)\cdot h$ und \begin{align*}&\frac{f_i(a+v)-f_i(a)}{\|v\|}=\frac{a_{ik}\cdot h}{\|v\|}+\frac{R_i(v)}{\|v\|}\quad\mid\phantom{{}}\cdot\mathrm{sgn}(h)\\\iff&\underbrace{\frac{f_i(a+v)-f_i(a)}{h}}_{\to\frac{\partial f}{\partial x_k}(a)}=a_{ik}\cdot h+\underbrace{\frac{R_i(v)}{\|v\|}\cdot\mathrm{sgn}(h)}_{\to0}\\\implies&a_{ik}=\frac{\partial f_i}{\partial x_k}(a)\end{align*}
\end{proof}
```
:::

::: bsp
`\textbf{Tangentialebene berechnen}`{=tex}:

-   wir wissen, dass $\frac{R(x)}{\|x-a\|}\to0$ gilt und demnach $f(x)$
    in einer Umgebung von $a$ angenähert werden kann durch
    $$g(x)=\underbrace{f(a)}_{\text{TODO?}}+\underbrace{f'(a)\cdot(x-a)}_{\text{lineare Abbildung}}$$
    vorausgesetzt $f$ ist in $a$ differenzierbar. $g$ heißt lineare
    Approximation/Tangentialebene von $f$ in $a.\\$Z.B.:
    $f(x_1,x_2)=x_1^2+x_2^2,\quad\begin{pmatrix}x_1\\x_2\end{pmatrix}\in\R^2$
    Tangentialebene in $(a_1,a_2,f(a_1,a_2))^\top\in\R^3$ für
    $a=\begin{pmatrix}a_1\\a_2\end{pmatrix}=\begin{pmatrix}1\\2\end{pmatrix}$.
    `\begin{align*}g(x)&=f(a)+f'(a)(x-a)=5+\begin{pmatrix}2&4\end{pmatrix}\begin{pmatrix}x_1-1\\x_2-2\end{pmatrix}\\&=5+2x_1-2+4x_2-8\\&=-5+2x_1+4x_2\end{align*}`{=tex}

-   $f$ differenzierbar in $a\in D\iff f_i$ differenzierbar in
    $a\in D\quad\forall i\in\{1,...,n\}$.

    ::: proof
    ```{=tex}
    \begin{proof}
    Sei $f'(a)=(a_{ij})$ die Jacobimatrix von $f$ in $a$.\\Dann: \begin{align*}&f(x)=f(a)+f'(a)(x-a)+R(x),\quad\frac{R(x)}{\|x-a\|}\to0\\\iff&f_i(x)=f_i(a)+\underbrace{\sum_{j=1}^na_{ij}(x_j-a_j)}_{f_i'(a)(x-a)}+R_i(x),\quad\forall i\in\{1,...,m\};\ \frac{R(x)}{\|x-a\|}\to0\end{align*}
    \end{proof}
    ```
    :::
:::

## Ableitungsregeln

### Kettenregel

Seien $U\subseteq\R^n,\ V\subseteq\R^m$ offen, $a\in U$, $f:U\to\R^m$,
$g:V\to\R^k$ mit $f(U)\subseteq V$.

Ist $f$ differenzierbar in $a\in U$ und $g$ differenzierbar in $f(a)$,
so ist $g\circ f$ differenzierbar in $a$ und es gilt:
$$(g\circ f)'(a)=g'(f(a))\cdot f'(a)$$

::: proof
```{=tex}
\begin{proof}
Es seien $L\defeq f'(a)$, $K\defeq g'(f(a))$.

D.h.: $K\cdot L=g'(f(a))\cdot f'(a)$.

Setze
\begin{itemize}
    \item $R(v)=f(a+v)-f(a)-Lv$
    \item $S(w)=g(f(a)+w)-g(f(a))-Kw$
    \item $T(v)=(g\circ f)(a+v)-(g\circ f)(a)-KLv$
\end{itemize}
$f,g$ differenzierbar in $a$ bzw. $f(a)$.

$\implies\lim_{v\to0}\frac{R(v)}{\|v\|}=0$, $\lim_{w\to0}\frac{s(w)}{\|w\|}=0$

$\lim_{v\to0}\frac{T(v)}{\|v\|}=0$ folgt durch simples Einsetzen und Umformen.

$\lim_{v\to0}\frac{S(R(v)+Lv)}{\|v\|}=0$ folgt ebenfalls (bisschen komplexer eigentlich).

Daraus folgt für $0<\|v\|<\epsilon$: $$\frac{\|R(v)+Lv\|}{\|v\|}\le\frac{\|R(v)\|}{\|v\|}+\left\|L\cdot\frac{v}{\|v\|}\right\|\le1+c$$
Damit ergibt sich: $$\frac{S(R(v)+Lv)}{\|v\|}=\frac{S(R(v)+Lv)}{\|R(v)+Lv\|}\cdot\frac{\|R(v)+Lv\|}{\|v\|}\xrightarrow[v\to0]{}0$$

\end{proof}
```
:::

::: bsp
Sei
$f:\R\to\R^2,\ f(t)=\begin{pmatrix}\cos t\\t\end{pmatrix}\implies f'(t)=\begin{pmatrix}-\sin t\\1\end{pmatrix}$

Sei außerdem
$g:\R^2\to\R^2,\ g(x,y)=\begin{pmatrix}x^2+3y\\x-y\end{pmatrix}\implies g'(x,y)=\begin{pmatrix}2x&3\\1&-1\end{pmatrix}$

Gesucht ist $(g\circ f)'$.

1.  $(g\circ f)'(t)=g'(f(t))\cdot f'(t)=\begin{pmatrix}2\cos t&3\\1&-1\end{pmatrix}\begin{pmatrix}-\sin t\\1\end{pmatrix}=\begin{pmatrix}-2\cos t\cdot\sin t+3\\-\sin t - 1\end{pmatrix}$
2.  $(g\circ f)(t)=g\begin{pmatrix}\cos t\\t\end{pmatrix}=\begin{pmatrix}\cos^2t+3t\\\cos t-t\end{pmatrix}\implies(g\circ f)'(t)=\begin{pmatrix}-2\cos t\cdot\sin t+3\\-\sin t-1\end{pmatrix}$
:::

### Weitere Ableitungsregeln

Sei $D\subseteq\R^n$ offen, $f,g:D\to\R^m$ differenzierbar in $a\in D$,
$\lambda\in\R$. Dann sind auch $f+g$, $\lambda f$, $f^\top g$ in $a$
differenzierbar und es gilt:

-   $(f+g)'(a)=f'(a)+g'(a)$
-   $(\lambda f)'(a)=\lambda f'(a)$
-   $(f^\top g)'(a)=f(a)^\top g'(a)+g(a)^\top f'(a)$

::: bsp
$f,g: \R^2\to\R^2$, $f(x,y)=\begin{pmatrix}x-y\\x\end{pmatrix}$,
$g(x,y)=\begin{pmatrix}x^2\\y\end{pmatrix}$,
$f'(x,y)=\begin{pmatrix}1&-1\\1&0\end{pmatrix}$,
$g'(x,y)=\begin{pmatrix}2x&0\\0&1\end{pmatrix}$
`\begin{align*}\implies (f^\top g)'(x,y)&=(x-y,x)\begin{pmatrix}2x&0\\0&1\end{pmatrix}+(x^2,y)\begin{pmatrix}1&-1\\1&0\end{pmatrix}\\&=(2x^2-2xy,x)+(x^2+y,-x^2)\\&=(3x^2-2xy+y,x-x^2)\end{align*}`{=tex}
:::

## Mittelwertsätze

### Mittelwertsatz für skalare Funktionen

Sei $D\subseteq\R^n$ offen, $f:D\to\R$ differenzierbar und $a,b\in D$,
sodass $$S(a,b)\defeq\{a+t(b-a)\mid t\in(0,1)\}\subseteq D$$ Dann
existiert ein $\xi\in S(a,b)$, sodass $$f(b)-f(a)=f'(\xi)(b-a)$$

::: proof
```{=tex}
\begin{proof}
Sei $\varphi:[0,1]\to D$ mit $\varphi(t)=a+t(b-a)$, $g\defeq f\circ\varphi:[0,1]\to\R$. $f$ differenzierbar, $\varphi$ differenzierbar auf $(0,1)$ und stetig auf $[0,1]$.

$\implies g$ differenzierbar auf $(0,1)$ und stetig auf $[0,1]$
$\implies \exists\vartheta\in(0,1)$ mit $\frac{g(1)-g(0)}{1-0}=g'(\vartheta)$.

Sei $\xi\defeq\phi(\vartheta)$.
\begin{align*}
\implies f(b)-f(a)&=f(\varphi(1))-f(\varphi(0))=g(1)-g(0)\\
&=g'(\vartheta)=(f\circ\varphi)'(\vartheta)\\
&=f'(\varphi(\vartheta))\cdot\varphi'(\vartheta)\quad\mid\varphi'(t)=b-a\\
&=f'(\xi)(b-a)
\end{align*}
\end{proof}
```
:::

::: bem
Für vektorwertige Funktionen kann man den vorigen Satz nicht beweisen.
Z.B.:

Sei
$f:[0,2\pi]\to\R^2,\ f(t)=\begin{pmatrix}\cos t\\\sin t\end{pmatrix}$.

Gibt $\xi\in(0,2\pi)$ mit $f(2\pi)-f(0)=f'(\xi)(2\pi-0)$?

Nein, da
$$f(2\pi)-f(0)=\begin{pmatrix}1\\0\end{pmatrix}-\begin{pmatrix}1\\0\end{pmatrix}=0\ne f'(\xi)\cdot2\pi\implies f'(\xi)=(0,0).$$

Aber: $f'(t)=(-\sin t,\cos t)\ne(0,0)\quad\forall t\in(0,2\pi)$.

Es lässt sich jedoch eine Abschätzung mithilfe von Integralen zeigen.
:::

## Riemann-Integral

### Zerlegung

Sei $[a,b]\subseteq\R$.

-   $Z\defeq\{x_0,x_1,...,x_n\}\subseteq[a,b]$, $a=x_0<x_1<...<x_n=b$
    heißt Zerlegung von $[a,b]$
-   $|Z|\defeq\max_{i=1,...,n}(x_i-x_{i-1})$ heißt Feinheit von $Z$
-   $\sum[a,b]$: Menge aller Zerlegungen von $\yogh[a,b]$

### Riemannsche Summe

Sei $f:[a,b]\to\R$ und $Z=\{x_0,...,x_n\}\in\yogh[a,b]$.

-   $\xi\defeq (\xi_1,...,\xi_n)$, $\xi_i\in[x_{i-1},x_i]$, heißt
    Zwischenvektor von $Z$
-   $S(f,Z,\xi)\defeq\sum_{i=1}^nf(\xi_i)(x_i-x_{i-1})$ heißt
    Riemannsche Summe

### Riemann-Integral

$f:[a,b]\to\R$ heißt $R$-integrierbar auf $[a,b] \defiff$ für jede Folge
$Z_n\in\yogh[a,b]$ mit Zwischenvektor $\xi_n$ und
$|Z_n|\xrightarrow[n\to\infty]{}0$ konvergiert $S(f,Z_n,\xi_n)$ gegen
$A\in\R$.

Bezeichnung: $A=\int_a^bf(x)\mathrm dx$

::: bem
Die Definition ist äquivalent zu derjenigen aus Mathe 1.
:::

### Riemann-Integral für $f:[a,b]\to\R^m$

Sei $f:[a,b]\to\R^m$.

-   Für $Z$, $\xi$ wie zuvor ist
    $S(f,Z,\xi)\defeq\sum_{i=1}^nf(\xi_i)(x_i-x_{i-1})$
-   Für $Z_n$, $\xi_n$ sei $A\in\R^m$ der Grenzwert von
    $S(f,Z_n,\xi_n)$, falls existent.$\\$Bezeichnung:
    $A=\int_a^bf(x)\mathrm dx$

::: bem
-   Offensichtlich gilt:
    $$f:[a,b]\to\R^m\ R\text{-integrierbar}\iff f_i:[a,b]\to\R\ R\text{-integrierbar}\quad\forall i=1,...,m.$$D.h.
    $$\int_a^bf(x)\mathrm dx=\begin{pmatrix}\int_a^bf_1(x)\mathrm dx\\\vdots\\\int_a^bf_m(x)\mathrm dx\end{pmatrix}$$
-   Eine Matrix $A(x)\in\M_{m,n}(\R)$ kann man mit einem Vektor
    $v(x)\in\R^m\cdot n$ identifizieren, indem alle Matrixeingänge in
    eine Spalte geschrieben werden. Daher kann man
    definieren:$\\$$\int_a^bA(x)\mathrm dx\defeq\left(\int_a^ba_{ij}(x)\mathrm dx\right)_{i,j}$
    und es gilt
    $$\int_a^bA(x)\cdot h\mathrm dx=\int_a^bA(x)\mathrm dx\cdot h\quad\forall h\in\R^n$$
:::

### Dreiecksungleichung

$$f:[a,b]\to\R^m\text{ stetig}\implies\left\|\int_a^bf(x)\mathrm dx\right\|\le\int_a^b\left\|f(x)\right\|\mathrm dx$$

::: proof
```{=tex}
\begin{proof}
\begin{align*}
\|S(f,Z,\xi)\|&=\|\sum_{i=1}^nf(\xi_i)(x_i-x_{i-1})\|\\
&\le\sum_{i=1}^n\|f(\xi_i)\|\cdot\underbrace{(x_i-x_{i-1})}_{\ge0}\\
&=S(\underbrace{\|f\|}_{\mathclap{\text{stetig, da $f$ stetig}}},Z,\xi)
\end{align*}
\end{proof}
```
:::

## Mittelwertsätze für vektorwertige Funktionen

$f:D\subseteq\R^n\to\R^m$ ($D$ offen) sei differenzierbar, sodass alle
partiellen Ableitungen stetig sind (d.h. $f$ stetig differenzierbar).
Ferner seien $a,b\in D$, sodass
$$S=\{a+t(b-a)\mid t\in[0,1]\}\subseteq D.$$

Für $h\defeq b-a$ folgt:

-   $f(b)-f(a)=\underbrace{\int_0^1f'(a+th)\mathrm dt}_{\in\M_{m,n}(\R)}\cdot h\in\R^m$
-   $\|f(b)-f(a)\|\le M\cdot\|h\|$, wobei
    $M\defeq\max_{x\in S}\underbrace{\|f'(x)\|}_{\mathclap{\text{stetig, da alle partiellen Ableitungen stetig}}}$

::: proof
```{=tex}
\begin{proof}
\begin{itemize}
\item $\varphi_j: [0,1]\to\R$, $\varphi_j(t)\defeq f_j(a+t\cdot h)$, $h=b-a$.
\begin{align*}
\implies f_j(b)-f_j(a)&=\varphi_j(1)-\varphi_j(0)\\
&=\int_0^1\varphi_j'(t)\mathrm dt\\
&=\int_0^1\underbrace{f_j'(a+th)}_{\mathclap{\text{stetig, d.h. $R$-integrierbar}}}\cdot h\mathrm dt
\end{align*}
\begin{align*}
\implies f(b)-f(a)&=\begin{pmatrix}\int_0^1f_1'(a+th)\cdot h\mathrm dt\\\vdots\\\int_0^1f_m'(a+th)\cdot h\mathrm dt\end{pmatrix}\\
&=\int_0^1f'(a+th)\cdot h\mathrm dt\\
&=\int_0^1f'(a+th)\mathrm dt\cdot h
\end{align*}
\item $\|f(b)-f(a)\|=\left\|\int_0^1f'(a+th)\mathrm dt\cdot h\right\|\le\int_0^1\underbrace{\|f'(a+th)\|}_{\le M}\mathrm dt\cdot\|h\|$
\end{itemize}
\end{proof}
```
:::

::: bem
-   Differenzierbarkeit $\implies$ partielle Differenzierbarkeit
-   Umkehrung gilt nicht
:::

## Partielle und totale Differenzierbarkeit

Seien $D\subseteq\R^n$ offen, $a\in D$ und $f:D\to\R$ partiell
differenzierbar in $a$. Sind alle partiellen Ableitungen
$\frac{\partial f}{\partial x_i}$ ($i=1,...,n$) stetig in $a$, so ist
$f$ total differenzierbar in $a$.

::: proof
TODO.
:::

::: bem
-   Partielle Differenzierbarkeit gilt auch für vektorwertige Funktionen
    $f:D\subseteq\R^n\to\R^m$ ($D$ offen)
-   Die Stetigkeit der partiellen Ableitung ist ein hinreichendes, aber
    kein notwendiges Kriterium für Differenzierbarkeit
-   Alle Polynome sind differenzierbar, da die partiellen Ableitungen
    alle stetig sind
:::

## Richtungsableitung

Sei $D\subseteq\R^n$ offen, $f:D\to\R$, $v\in\R^n$ mit $\|v\|=1$.

$f$ heißt in $a\in D$ differenzierbar in Richtung $v$, falls
$\lim_{h\to0}\frac{f(a+hv)-f(a)}{h}$ exisitert. Der Grenzwert heißt
Richtungsableitung von $f$ in Richtung $v$ in $a$,
$\frac{\partial f}{\partial v}(a)$.

::: bsp
-   $\frac{\partial f}{\partial e_i}(a)=\lim_{h\to0}\frac{f(a+he_i)-f(a)}{h}=\frac{\partial f}{\partial x_i}(a)$
-   $f:\R^2\to\R$,
    $f(x,y)=\begin{cases}\frac{xy^2}{x^2+y^4}&(x,y)\ne(0,0)\\0&(x,y)=(0,0)\end{cases}$
    -   Wissen: $f$ unstetig in $0\in\R^2$
    -   $f$ ist in jede Richtung $v\in\R^2$, $\|v\|=1$, ableitbar in 0:
        Sei
        $v=(v_1,v_2)^\top\\\implies\frac{f(hv)-f(0,0)}{h}=\frac{h^2v_1v_2^2}{h\cdot h^2(v_1^2+h^2v_2^4)}\implies\frac{\partial f}{\partial v}(0,0)=\begin{cases}v_2^2/v_1&v_1\ne0\\0&v_1=0\end{cases}$
-   $f:\R^2\to\R$, $f(x,y)=x^2+y^2$, $h\to f(a+hv)$ ist eindimensionale
    Funktion. TODO: Graph
:::

### Satz

Sei $D\subseteq\R^n$ offen, $f:D\to\R$ differenzierbar. Dann existieren
alle Richtungsableitungen von $f$ in $a\in D$ und
$$\frac{\partial f}{\partial v}(a)=f'(a)\cdot v$$

::: proof
```{=tex}
\begin{proof}
\begin{align*}
&\frac{f(a+hv)-f(a)}{h}-f'(a)\cdot v\\
=&\|v\|\frac{\overbrace{f(a+hv)-f(a)-f'(a)\cdot v\cdot h}^{R(hv)}}{\|hv\|\cdot\sgn(h)}\xrightarrow{h\to0}0\\
\implies&\frac{\partial f}{\partial v}(a)=f'(a)v
\end{align*}
\end{proof}
```
:::

::: bsp
$$f(x,y)=e^{xy}+x^2\implies f'(x,y)=(ye^{xy}+2x,xe^{xy})$$ Sei
$v=\frac{1}{\sqrt{2}}(1,1)^\top$

$\implies\frac{\partial f}{\partial v}(x,y)=(ye^{xy+2x,xe^{xy}})\cdot\frac{1}{\sqrt{2}}\begin{pmatrix}1\\1\end{pmatrix}=\frac{1}{\sqrt{2}}(e^{xy}(x+y)+2x)$
:::

### Satz

Sei $D\subseteq\R^n$ offen, $f:D\to\R$ differenzierbar in $a\in D$ mit
$f'(a)\ne0$. Dann gilt:

-   $\nabla f(a)\in\R^n$ zeigt in Richtung des steilsten Anstiegs von
    $f$ im Punkt $a$, d.h.: $\frac{\partial f}{\partial v}(a)$ wird für
    $v=\frac{\nabla f(a)}{\|\nabla f(a)\|}$ am größten.
-   Ist $D\subseteq\R^2$, so steht $\nabla f(a)$ senkrecht auf der
    Niveaulinie $N_{f(a)}(f)=\{x\in D\mid f(x)=f(a)\}$

::: proof
```{=tex}
\begin{proof}
$\frac{\partial f}{\partial v}(a)=f'(a)\cdot v=(\nabla f(a)\mid v)=\cos\alpha\cdot\|\nabla f(a)\|$, $\alpha\in[0,2\pi)$ der Winkel, der von $\nabla f(a)$ und $v$ eingeschlossen wird.

\begin{abc}
\item $\cos\alpha$ (und somit $\frac{\partial f}{\partial v}(a)$) maximal für $v=\frac{\nabla f(a)}{\|\nabla f(a)\|}$
\item Sei $v\in\R^2$, $\|v\|=1$, sodass $(\partial f(a)\mid v)=0\implies\frac{\partial f}{\partial v}(a)=0$, d.h. in Richtung $v$ weißt $f$ keine Steigung auf im Punkt $a$. Somit zeight $v$ in Richtung der Niveaulinie $N_{f(a)}(f)$
\end{abc}
\end{proof}
```
:::

## Satz von Schwarz

### Stetige Differenzierbarkeit

$D\subseteq\R$ offen, $f:D\to\R$.

-   $f$ heißt stetig differenzierbar ($f\in\mathcal{C}^1(D)$), wenn $f$
    in jedem Punkt von $D$ partiell differenzierbar ist und alle
    $\frac{\partial f}{\partial x_i}$ ($i\in\{1,...,n\}$) auf $D$ stetig
    sind
-   $f$ heißt 2-mal stetig differezierbar ($f\in\mathcal{C}^2(D)$), wenn
    $f\in\mathcal{C}^1(D)$ und alle $\frac{\partial f}{\partial x_j}$
    ($j\in\{1,...,n\}$) $\in\mathcal{C}^1(D)$. Die partielle Ableitung
    von $\frac{\partial f}{\partial x_j}$ nach $x_k$ wird mit
    $\frac{\partial^2f}{\partial x_2\partial x_j}$ bezeichnet (partielle
    Ableitung zweiter Ordnung). Für $k=j$ schreibt man kurz
    $\frac{\partial^2f}{\partial x_j^2}$.
-   Analog ist $f$ $s$-mal stetig differenzierbar
    ($f\in\mathcal{C}^s(D)$), wenn alle partiellen Ableitungen der
    Ordnung $s$
    $\frac{\partial^sf}{\partial x_{j_s}...\partial x_{j_1}}$ existieren
    und stetig sind.

Gleiches gilt auch für vektorwertige Funktionen.

::: bsp
$f:\R^2\to\R$, $f(x,y)=3y+xy^2$

$\frac{\partial f}{\partial x}(x,y)=y^2$ und
$\frac{\partial f}{\partial y}(x,y)=3+2xy$.

Dann $\frac{\partial^2f}{\partial x^2}(x,y)=0$,
$\frac{\partial^2f}{\partial y\partial x}(x,y)=2y=\frac{\partial^2f}{\partial x\partial y}(x,y)$
sowie $\frac{\partial^2f}{\partial y^2}(x,y)=2x$.
:::

### Satz

$D\subseteq\R^n$ offen, $f:D\to\R\in\mathcal{C}^2(D)$

$\implies\frac{\partial^2f}{\partial x_k\partial x_j}=\frac{\partial^2f}{\partial x_j\partial x_k}\quad\forall j,k\in\{1,...,n\}$

::: proof
```{=tex}
\begin{proof}
Es genügt, die Behauptung für $D\in\R^2$ zu beweisen.

Sei $a=\begin{pmatrix}a_1\\a_2\end{pmatrix}\in D$.

Zu zeigen: $\frac{\partial^2f}{\partial x\partial y}(a)=\frac{\partial^2f}{\partial y\partial x}(a)$.

Sei $\delta>0$ mit $K_\delta(a)\subseteq D$.

$\implies\exists\epsilon>0,0<k,k<\epsilon$, sodass $(a_1+k,a_2+k)^\top\in K_\delta(a)$.

\begin{abc}
\item Sei $\varphi: [a_1,a_1+h]\to\R$, $\varphi(t)=f(t,a_2+k)-f(t,a_2)$.

$\implies\exists\xi_1\in(a_1,a_1+h):\varphi(a_1+h)-\varphi(a_1)=h\cdot\varphi'(\xi_1)$

Setze
\begin{align*}
F(h,k)&\defeq\overbrace{f(a_1+h,a_2+k)-f(a_1+h,a_2)}^{\varphi(a_1+h)}-\overbrace{f(a_1,a_2+k)+f(a_1,a_2)}^{\-\varphi(a_1)}\\
&=h\cdot\varphi'(\xi_1)\\
&=h\bigg[\underbrace{\frac{\partial f}{\partial x}(\xi_1,a_2+k)-\frac{\partial f}{\partial x}(\xi_1,a_2)}_{\mathclap{=\frac{\partial^2f}{\partial y\partial x}(\xi_1,\vartheta_1)\cdot k\text{ für ein }\vartheta_1\in(a_2,a_2+k)}}\bigg]\\
&\implies F(h,k)=h\cdot k\frac{\partial^2f}{\partial y\partial x}(\xi_1,\vartheta_1)
\end{align*}
\item Analog erhält man für $\psi(t)\defeq f(a_1+h,t)=f(a_1,t)$, dass $F(h,k)=\psi(a_2+k)-\psi(a_2)$ und $F(h,k)=h\cdot k\frac{\partial^2f}{\partial x\partial y}(\xi_2,\vartheta_2)$ für $\xi_2\in(a_1,a_1+h)$, $\vartheta\in(a_2,a_2+k)$.
\item Insgesamt folgt, da $h,k\ne0$: $\frac{\partial^2f}{\partial y\partial x}(\xi_1,\vartheta_1)=\frac{\partial^2f}{\partial x\partial y}(\xi_2,\vartheta_2)$

$\xRightarrow{h,k\to0}\frac{\partial^2f}{\partial y\partial x}(a_1,a_2)$, da $f\in\mathcal{C}^2(D).$
\end{abc}
\end{proof}
```
:::

::: bsp
Ist für folgende Funktion nicht erfüllt:
$$f(x,y)=\begin{cases}0&(x,y)=(0,0)\\\frac{x^3y-xy^3}{x^2+y^2}&\text{sonst}\end{cases}$$
:::

## Satz von Taylor

Sei $I\subseteq\R$ ein Intervall, $x_0\in I$, $f:I\to\R$ $(k+1)$-mal
stetig differenzierbar, $k\in\N_0$. Dann git die folgende
Taylorentwicklung um $x_0$ für ein $\xi$ zwischen $x$ und $x_0$:

$f(x)=T_k(x)+R_k(x)$ mit
$T_k(x)=\sum_{j=0}^k\frac{f^{(j)}(x_0)}{j!}(x-x_0)^j$ sowie
$R_k(x)=\frac{f^{(k+1)}(\xi)}{(k+1)!}(x-x_0)^{x+1}$ (Restglied nach
Lagrange)

::: bem
Die Taylorreihe
$T(x)\defeq\sum_{j=0}^\infty\frac{f^{(j)}(x_0)}{j!}(x-x_0)^j$
konvergiert gegen $f(x)\iff\lim_{k\to\infty}R_k(x)=0$. (Vorausgesetzt
$f$ ist unendlich oft differenzierbar.)
:::

::: bsp
Berechne $\sin(1)$ mit Fehlerdifferenz $<10^{-3}!$.

Entwickle dazu $f(x)=\sin(x)$ um $x_0=0$. Suche $k\in\N$, sodass
$$|R_k(1)|=\frac{|f^{(k+1)}(\xi)|}{(k+1)!}|1-0|^{k+1}<\frac{1}{1000},\quad\xi\text{ zwischen }0\text{ und } 1.$$

$f(x)=\sin x$, $f'(x)=\cos x$,
$f''(x)=-\sin x, f'''(x)=-f'(x), f^{(4)}(x)=f(x)$

$\implies f^{(2n)}(x)=(-1)^n\sin(x)$ und $f^{(2n+1)}(x)=(-1)^n\cos(x)$
für $n\ge0$

$\implies|R_k(1)|\le\frac{1}{(k+1)!}<\frac{1}{1000}$

$\iff (k+1)!>1000\iff k\ge6$`\medskip`{=tex}

Für $k=6$ ist
`\begin{align*}\sin(1)\approx T_6(1)&=\frac{\sin0}{0!}(1-0)^0+\frac{\cos0}{1!}(1-0)^1-\frac{\sin0}{2!}(1-0)^2\pm...\pm\frac{\sin0}{6!}(1-0)^6\\&=0+1+0-\frac{1}{6}+0+\frac{1}{120}+0=\frac{101}{120}\\&\approx 0.841\end{align*}`{=tex}
:::

### Multiindex

$p\defeq (p_1,...,p_m)\in\N_0^m$ heißt Multiindex.

$|p|\defeq p_1+...+p_m$ Ordnung von $p$.

$p!\defeq (p_1!)\cdot...\cdot(p_m!)$

Für $x\in\R^m$, $x=(x_1,...,x_m)^\top$ sei
$x^P\defeq x_1^{P_1}\cdot...\cdot x_m^{P_m}.$

Ist $f$ $k$-mal stetig differenzierbar, so sei
$\partial^Pf\defeq\frac{\partial^{|P|}f}{\partial x_1^{P_1}...\partial x_m^{P_m}}.$

::: bsp
-   $P=(0,...,0)\implies\partial^Pf=f$
-   $P=(1,0,...,0)\implies\partial^Pf=\frac{\partial f}{\partial x_1}$
-   $P=(1,2,0,...,0)\implies\partial^Pf=\frac{\partial^3f}{\partial x_1\partial x_2^2}$
:::

### Taylorpolynome

Sei $D\subseteq\R^n$ offen, $a\in D$, $f:D\to\R$ $k$-mal stetig
differenzierbar.

$T_k:\R^n\to\R$,
$T_k(x)=\sum_{|P|\le k}\frac{\partial^Pf(a)}{P!}(x-a)^P$ heißt $k$-tes
Taylorpolynom $f$ in $a$. $R_k(x)=f(x)-T_k(x)$ heißt $k$-tes Restglied
von $f$ in $a$.

### Hessematrix

Sei $D\subseteq\R^n$ offen, $f:D\to\R$ 2-mal stetig differenzierbar,
$a\in D$. Dann ist

-   $T_1(x)=\underbrace{f(a)}_{|p|=0}+\underbrace{\sum_{i=1}^n\frac{\partial f}{\partial x_i}(x_i-a_i)}_{|p|=1,p=(--\underbrace{1}_i--)}=f(a)+f'(a)(x-a)$
    lineare Approximation in $a$
-   $T_2(x)=f(a)+f'(a)(x-a)+\frac{1}{2!}\sum_{i,j=1}^n\frac{\partial^2f}{\partial x_i\partial x_j}(a)(x_i-a_i)(x_j-a_j)$
    und $H_f(a)\defeq (a_{ij})\in\M_n(\R)$,
    $a_{ij}=\frac{\partial^2f}{\partial x_i\partial x_j}(a)$ ist die
    sogenannte Hessematrix von $f$ in $a$. Damit erhält man
    $$T_2(x)f(a)+f'(a)(x-a)+\frac{1}{2}(x-a)^\top H_f(a)(x-a)$$

::: bsp
$f:\R^2\to\R$, $f(x,y)=e^x=xy$

$f'(x,y)=(e^x+y,x)$.

$H_f(x,y)=\begin{pmatrix}\frac{\partial^2f}{\partial x^2}(x,y)&\frac{\partial^2f}{\partial x\partial y}(x,y)\\\frac{\partial^2f}{\partial y\partial x}(x,y)&\frac{\partial^2f}{\partial y^2}(x,y)\end{pmatrix}=\begin{pmatrix}e^x&1\\1&0\end{pmatrix}.$

Sei $a=\begin{pmatrix}0\\1\end{pmatrix}$.
`\begin{align*} \implies T_2(x,y)&=f(0,1)+f'(0,1)\begin{pmatrix}x-0\\y-1\end{pmatrix}+\frac{1}{2}(x-0,y-1)H_f(0,1)\begin{pmatrix}x-0\\y-1\end{pmatrix}\\ &=1+(2,0)\begin{pmatrix}x\\y-1\end{pmatrix}+\frac{1}{2}(x,y-1)\begin{pmatrix}1&1\\1&0\end{pmatrix}\begin{pmatrix}x\\y-1\end{pmatrix}\\ &=1+2x+\frac{1{2}}(x^2+2(y-1)x)\\ &=1+x+\frac{1}{2}x^2+xy \end{align*}`{=tex}
:::

## Satz von Taylor für mehrdimensionale Funktionen

Sei $D\subseteq\R^n$ offen, $f\in\mathcal{C}^{k+1}(D,\R)$ und seien
$a,x\in D$, sodass $S(a,x)=\{a+t(x-a)\mid t\in(0,1)\}\subseteq D$. Dann
existiert ein $\xi\in S(a,x)$ mit
$$R_k(x)=\sum_{|p|=k+1}\frac{\partial^Pf(\xi)}{P!}(x-a)^P.$$
$$\text{Lagrange-Form des Restgliedes}$$

::: proof
```{=tex}
\begin{proof}
Sei $v=x-a$. Dann ist $S(a,x)=\{a+tv\mid t\in(0,1)\}$.

Setze $\varphi:[0,1]\to\R$, $\varphi(t)\defeq f(a+tv)$.
\begin{align*}
\implies\varphi'(t)&=f'(a+tv)\cdot v\\
&=\sum_{i=1}^n\frac{\partial f}{\partial x_i}(a+tv)v_i\\
&=\sum_{|P|=1}\partial^Pf(a+tv)v^P.\\
\varphi''(t)&=\sum_{i,j=1}^n\frac{\partial^2f}{\partial x_j\partial x_i}(a+tv)v_iv_j\\
&=2\sum_{|p|=2}\frac{\partial^Pf(a+tv)}{P!}v^P\\
&\vdots\\
\varphi^{(k+1)}(t)&=\sum_{i_1,...,i_{k+1}=1}^n\frac{\partial^{k+1}f}{\partial x_{i_1}\dots\partial x_{i_{k+1}}}(a+tv)v_{i_1}\dots v_{i_{k+1}}\\
&=(k+1)!\sum_{|P|=k+1}\frac{\partial^Pf(a+tv)}{P!}v^P
\end{align*}

$\implies\exists\vartheta\in(0,1)$ mit 
\begin{align*}
R_k^\varphi(1)&=\frac{\varphi^{(k+1)}(\vartheta)}{(k+1)!}(1-0)^{k+1}\\
&=\frac{\varphi^{(k+1)}(\vartheta)}{(k+1)!}
\end{align*}
Sei $\xi\defeq\varphi(\vartheta)=a+\vartheta v\in S(a,x)$
\begin{align*}
\implies R_k^\varphi(1)&=\sum_{|p|=k+1}\frac{\partial^Pf(\overbrace{a+\vartheta v}^{\mathclap{\xi}})}{P!}\underbrace{v^P}_{\mathclap{=(x-a)^P}}\\
&=R_k(x)
\end{align*}

Es ist
\begin{align*}
T_k^\varphi(1)&=\sum_{i=0}^k\frac{\varphi^{(i)}(0)}{i!}(1-0)^i\\
&=\sum_{i=0}^k\sum_{|P|=i}\frac{\partial^Pf(a)}{P!}v^P\\
&=T_k(x)
\end{align*}
$\implies\varphi(1)=R_k^\varphi(1)+T_k^\varphi(1)\iff f(\underbrace{a+v}_{\mathclap{=x}})=R_k(x)+T_k(x)$
\end{proof}
```
:::
