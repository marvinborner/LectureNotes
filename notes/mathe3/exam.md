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
# Sinnvolle Rechenregeln

## Potenzregeln

-   $a^n\cdot a^m=a^{n+m}$
-   $a^n\cdot b^n=(a\cdot b)^n$
-   $(a^n)^m=a^{n\cdot m}$
-   $\frac{a^n}{b^n}=\left(\frac{a}{b}\right)^n$
-   $\frac{a^n}{b^m}=a^{n-m}$

## Toll

-   $\sin^2(x)+\cos^2(x)=1$

# Euklidischer Algorithmus

Zur Berechnung des ggT.

::: bsp
Berechnung von $\ggT(48,-30):$
`\begin{align*}48&=-1\cdot-30+18\\-30&=-2\cdot18+6\\18&=3\cdot6+0\end{align*}`{=tex}

$\ggT(48,-30)=6$
:::

TODO: kgV mit Primfaktorzerlegung

# Erweiterter Euklidischer Algorithmus

Zur Berechnung von $s,t$, da:
$$0\ne a,b\in\Z\implies\exists s,t\in\Z:\ggT(a,b)=sa+tb$$ ggT
gleichsetzen, rückwärts einsetzen und je ausmultiplizieren.

::: bsp
Mit vorigem Beispiel:
`\begin{align*}6&=-30+2\cdot18\\&=-30+2\cdot(48+1\cdot-30)\\&=2\cdot48+3\cdot-30\end{align*}`{=tex}
:::

TODO: Polynome.

# Inverse prüfen

$$a\in\Z_n\text{ invertierbar}\iff\ggT(a,n)=1$$ $a^{-1}$ ist dann $s$
aus $sa+tn=1$ des EEA.

# Zykel

-   zyklische Gruppe, von $a$ erzeugt:
    $\langle a\rangle\defeq\{a^n\mid n\in\Z\}$

# Fundamentalsatz

Mit $2\le n\in\N$ gibt es endlich viele paarweise verschiedene
$p_1,...,p_k\in\P$ und $e_1,...,e_k\in\N$, sodass
$$n=p_1^{e_1}\cdot...\cdot p_k^{e_k}.$$

# Chinesischer Restsatz

Lösen von simultaner Kongruenz.

TODO: Beispiel.

# Reduzibilität

-   TODO: Nullstellen und so
-   TODO: Mit Primzahlen ez

# Lösen von $a^b\pmod{n}$

-   falls $n$ groß: Primfaktorzerlegung von $n$ und für jeden Faktor
    durchführen.
-   Modulo in Potenzen aufnehmen (Trick: $2\pmod{3}=-1$)
-   Satz von Euler: $a^{\varphi(n)}\equiv1\pmod{n}$
-   sonst schlau Potenzregeln anwenden

# Eulersche $\varphi$-Funktion

-   $\varphi(p)=p-1$ für $p\in\P$
-   $\varphi(M)=m_1\cdot...\cdot m_n$ mit $m_i\in\N$ paarweise
    teilerfremd (bspw. über chinesischen Restsatz)
-   $\varphi(M)=(p_1-1)p_1^{a_1-1}\cdot...\cdot(p_k-1)p_k^{a_k-1}$, mit
    Primfaktorzerlegung $M=p_1^{a_1}\cdot...\cdot p_k^{a_k}$

::: bsp
$\varphi(100)=\varphi(4\cdot5^2)=\varphi(4)\cdot\varphi(5^2)=2\cdot(5-1)\cdot5^{2-1}=40$
:::

# RSA-Verfahren

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

# Konvergenz

Sei $(x_k)_{k\in\N}$ eine Folge im $\R^n$. $(x_k)_{k\in\N}$ konvergiert
gegen $a\in\R^n$ ($x_k\to a$ oder $\lim_{k\to\infty}x_k=a$) wenn gilt
$$\forall\varepsilon>0\ \exists N\in\N\ \forall k\ge N:\|x_k-a\|<\varepsilon.$$

# Eigenschaften von Mengen

-   Sei $x_0\in\R^n,\ \varepsilon>0$.
    $K_\varepsilon(x_0)=\{x\in\R^n\mid\|x-x_0\|<\varepsilon\}$ heißt
    offene $\varepsilon$-Kugel um $x_0$.
-   $D\subseteq\R^n$ **beschränkt**
    $\defiff\exists K>0:\|x\|<K\quad\forall x\in D$
-   $U\subseteq\R^n$ **offen**
    $\defiff\forall x\in U\exists\varepsilon>0:K_\varepsilon(x)\subseteq U$
-   $A\subseteq\R^n$ **abgeschlossen** $\defiff A^C=\R^n\setminus A$
    offen
-   Sei $(x_k)$ Folge in $A\subseteq\R^n$ mit Grenzwert $a\in\R^n$. $A$
    **abgeschlossen** $\iff a\in A$.
-   $x\in\R^n$ Randpunkt von
    $D\subseteq\R^n\defiff K_\varepsilon(x)\cap D\ne\emptyset$ und
    $K_\varepsilon(x)\cap D^C\ne\emptyset\quad\forall\varepsilon>0$.
-   $\partial D$ ist die (abgeschlossene) Menge aller Randpunkte von
    $D$.
-   $D\subseteq\R^n$ **kompakt** $\defiff$ Jede Folge in $D$ besitzt
    eine in $D$ konvergente Teilfolge.
-   $D\subseteq\R^n$ **kompakt** $\iff D$ beschränkt und abgeschlossen.
-   $\bar{D}\defeq D\cup\partial D$ ist abgeschlossen und heißt
    **Abschluss** von $D$.
-   $\mathring{D}\defeq D\setminus\partial D$ ist offen und heißt
    **Innneres** von $D$.

# Stetigkeit

Sei $f: D\subset\R^n\to\R^m$.

-   $f$ stetig in $a\in D\defiff\lim_{x\to a}f(x)=f(a)$
-   $f$ stetig auf $D\defiff f\text{ stetig in }a\quad\forall a\in D$

Mit $f: D\subseteq\R^n\to\R^n, v\subseteq f(0)$, $V$ offen:
$$f\text{ stetig}\iff f^{-1}(V)\text{ offen.}$$

TODO: Stetige Fortsetzbarkeit

## Polarkoordinaten

-   $x=r\cdot\cos(\alpha)$
-   $y=r\cdot\sin(\alpha)$
-   statt $(x,y)$ $(r,\alpha)$ gegen $a$ laufen lassen (TODO!)

## Prüfen

-   In Punkt: $\lim_{v\to v_0} f(v)=f(v_0)$
    -   bspw. mit Polarkoordinaten
    -   oder mit
        $0\le|f(x,y)|\le ... \implies \lim_{(x,y)\to(0,0)}f(x,y)=0$
        -   bspw. x aus Nenner nehmen

# Weierstraß Minimax-Theorem

$f:D\subseteq\R^n\to\R$ stetig, $D$ kompakt.

$\implies\exists x_\star,x^\star\in D: \underbrace{f(x_\star)}_\mathrm{min}\le f(x)\le\underbrace{f(x^\star)}_\mathrm{max}\quad\forall x\in D$

::: bsp
$f:\R^2\to\R$, $f(x,y)=xy$

$S=\left\{\begin{pmatrix}x\\y\end{pmatrix}\in\R^2\mid x^2+y^2=1\right\}$

$\implies f$ hat Maximum und Minimum auf $S$
:::

# TODO: Zeug?

# Differenziation

Sei $D\subseteq\R^n$ offen, $f:D\to\R^m$, $f(x)=(f_1(x),...,f_m(x))$ und
$a=(a_1,...,a_n)^\top\in D$.

-   Jacobimatrix:
    $$f'(a)\defeq\begin{pmatrix}\frac{\partial f_1}{\partial x_1}(a)&...&\frac{\partial f_1}{\partial x_n}(a)\\\frac{\partial f_m}{\partial x_1}(a)&...&\frac{\partial f_m}{\partial x_n}(a)\\\end{pmatrix}\in\M_{m,n}(\R)$$
-   Gradient:
    $$f'(a)^\top=\begin{pmatrix}\frac{\partial f}{\partial x_1}(a)\\\vdots\\\frac{\partial f}{\partial x_n}(a)\end{pmatrix}=:\nabla f(a)=\grad(f(a))\in\R^n$$

Sei $D\subseteq\R^n$ offen, $a\in D$, $f: D\to\R^m$.

-   $f$ heißt in $a\in D$ (total) differenzierbar, wenn $f$ geschrieben
    werden kann als
    $$f(x)=\underbrace{f(a)}_{\in\R^m}+\underbrace{A}_{\in\M_{m,n}(\R)}\cdot(\underbrace{x-a}_{\in\R^m})+\underbrace{R(x)}_{\in\R^m},$$
    wobei $A\in\M_{m,n}(\R)$ und $R: D\to\R^m$ mit
    $\lim_{x\to a}\frac{R(x)}{\|x-a\|}=0$
-   $f$ heißt (total) differenzierbar, wenn in jedem Punkt von $D$
    differenzierbar.

Anderes:

-   $f:D\subseteq\R^n\to\R^m$ differenzierbar in $a\in D$ (D offen)
    $\implies f$ stetig in $a$.
-   **Tangentialebene**: $g(x)=f(a)+f'(a)\cdot(x-a)$
-   $f$ differenzierbar in $a\in D\iff f_i$ differenzierbar in
    $a\in D\quad\forall i\in\{1,...,n\}$.

## Prüfen

-   ob in Punkt $p$ partiell differenzierbar: partielle Ableitungen
    bilden
    -   falls bspw. Fallunterscheidung und $(0,0)$-Punkt: $h$-Definition
        für $x$/$y$ anwenden
    -   Richtungsableitung: $f_v(x,y)=\frac{(x+hv_1,0+hv_2)-f(0,0)}{h}$
-   total differenzierbar
    -   je partiell ableiten und prüfen ob Ableitungen stetig
    -   mit Richtungsleitung versuchen Gegenteil zu beweisen (TODO)

# Ableitungsregeln

-   $(g\circ f)'(a)=g'(f(a))\cdot f'(a)$
-   $(f+g)'(a)=f'(a)+g'(a)$
-   $(\lambda f)'(a)=\lambda f'(a)$
-   $(f^\top g)'(a)=f(a)^\top g'(a)+g(a)^\top f'(a)$

TODO: lhopital

Anderes:

-   $\left(\ln x\right)'=\frac 1 x$
-   $\left(\frac gh\right)'=\frac{h\cdot g'-g\cdot h'}{h^2}$
-   $\left(\frac{a}{x^k}\right)'=-\frac{ka}{x^{k+1}}$ bzw. unten
    Kettenregel

# Richtungsableitung

Sei $D\subseteq\R^n$ offen, $f:D\to\R$, $v\in\R^n$ mit $\|v\|=1$.

$f$ heißt in $a\in D$ differenzierbar in Richtung $v$, falls
$\lim_{h\to0}\frac{f(a+hv)-f(a)}{h}$ exisitert. Der Grenzwert heißt
Richtungsableitung von $f$ in Richtung $v$ in $a$,
$\frac{\partial f}{\partial v}(a)$.

# Satz von Schwarz

TODO.

# Definitheit

1.  Partielle Ableitungen
2.  Gradienten mit $0$ gleichsetzen
3.  Hessematrix und Punkte einsetzen (falls $x$/$y$ vorhanden)
4.  Über Eigenwerte oder Determinante bestimmen

## Matrix

Eine symmetrische Matrix $A\in\M_n(\R)$ ist

-   positiv definit $\iff$ $\det(A_k)>0\quad\forall k\in\{1,...,n\}$
-   negativ definit $\iff$
    $\det(A_k)\begin{cases}<0&k\text{ ungerade}\\>0&k\text{ gerade}\end{cases}$
    (-+-+..)

TODO: über Eigenwerte

# Extrema

Sei $D\subseteq\R^n$ offen,
$f\in\varphi^2(D,\R),\ a\in D,\ \nabla f(a)=0$.

-   $H_f(a)$ positiv definit $\implies$ $a$ Stelle eines lokalen
    Minimums.
-   $H_f(a)$ negativ definit $\implies$ $a$ Stelle eines lokalen
    Maximums.
-   $H_f(a)$ indefinit $\implies$ $a$ ist Sattelpunkt
-   Ist $H_f(a)$ positiv/negativ semidefinit, so ist keine Aussage
    möglich.

# Taylor

-   Taylorpolynom: $T_n(x)=\sum_{k=0}^n\frac{f^{(k)}(x_0)}{k!}(x-x_0)^k$
-   Satz: $f(x)=T_n(x)+R_n(x)$
    -   $R_n(x)=\frac{f^{(n+1)}(\xi)}{(n+1)!}(x-x_0)^{n+1}$

# Höhenlinien

-   $f(x,y)=c$ setzen
-   nach $y=...$ umformen
-   entweder verschiedene $c$ einsetzen oder geg. $N_c(f)$

# Implizite Funktionen

TODO.

# Umkehrfunktionen

TODO.

# Lagrange

1.  Nebenbedingung mit $0$ gleichsetzen
2.  Lagrange-Funktion, bspw.
    $\mathcal{L}(x,y,\lambda)=f(x,y)+\lambda g(x,y)$ mit $g$
    Nebenbedingung
3.  Erste partielle Ableitungen der Lagrange Funktion
    ($\mathcal{L}_\lambda=g$)
4.  Ableitungen mit $0$ gleichsetzen und lösen (Additionsverfahren gut)
5.  Mehrere Ergebnisse dann Extrempunkte
6.  Definitheit überprüfen (geränderte Matrix TODO?)
