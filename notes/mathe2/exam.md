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

```{=tex}
\newpage
```
# Negative Zahlen in $\Z/n\Z$

Solange $n$ addieren, bis die Zahl positiv ist.

::: bsp
**Beispiel**: Äquivalenzklassen in $\Z/6\Z$.

1.  $[-2] = [4]$
2.  $[-7] = [5]$
:::

# Reduzibilität

Generell: Bei Polynomen der Grade 2/3 prüfen auf Nullstellen, da
$f = (x-a)g$ reduzibel mit $a$ NS. Bei Grad 4 Spezialfall der Zelegung
in zwei irreduzible Polynome zweiten Grades beachten (siehe Beispiel).

Bei $\Z/n\Z[X]$ typischerweise jegliche Kombinationen ausprobieren und
NS finden.

::: bsp
**Beispiel**: Reduzibilität von $f=x^4+2x^2+1$ in $\R[X]$:

Man erkennt schnell, dass $f$ keine NS in $\R$ besitzt, da die
Exponenten jeweils positiv sind.

**ALLERDINGS**: Polynome in Grad 4 sind durch Polynome folgender Grade
reduzibel: $$4 = 4 + 0 = 1 + 3 = 1 + 1 + 2 + 2 = 2 + 2 = 1 + 1 + 1 + 1$$
Eine Zerlegung in ein Polynom mit Graden $4+0$ wäre der irreduzible
Fall. Alle Zerlegungen mit 1 stellen den Fall einer Nullstelle dar, da
dort ein Linearfaktor existiert. Dann bleibt hier der Fall $2+2$.

Dann muss die Zerlegung existieren:
$$(x^2+ax+b)(x^2+cx+d) = x^4+(a+c)x^3+(b+ac+d)x^2+(ad+bc)x+bd$$

Durch die Koeffizienten von $f$ entsteht ein LGS:

```{=tex}
\begin{splitty}a+c&=0\\b+ac+d&=2\\ad+bc&=0\\bd&=1\end{splitty}
```
Mit der Lösung $a=c=0$ und $b=d=1$ lässt sich $f$ in $(x^2+1)(x^2+1)$
zerlegen.
:::

# Komplexe Zahlen

## Gleichungen mit komplexen Zahlen lösen

::: bsp
**Beispiel**: Bestimmen von $z$ bei $z^3 = 2 + 2i$.

```{=tex}
\begin{center}\begin{tikzpicture}
\begin{axis}[axis lines=center,xmin=-1,xmax=3,ymin=-1,ytick={-1,...,3},ymax=3,minor tick num=1,ticks=both,yticklabels={$-i$, $0$, $i$, $2i$, $3i$}]
\addplot[black,mark=*] coordinates {(4,5)} {};
\addplot[ultra thick,dashed,red] coordinates { (0,0) (2,0) } node[pos=0.5,above] {$\mathrm{Re}(z)=2$};
\addplot[thick,dashed,red] coordinates { (2,0) (2,2) } node[pos=0.5,right] {$\mathrm{Im}(z)=2$};
\addplot[thick,blue] coordinates { (0,0) (2,2) } node[pos=0.5,left] {$r$};

\node [above,red] at (axis cs: 2,2) {$2+2i$};
\end{axis}
\end{tikzpicture}\end{center}
```
Zuerst bestimmt man die Exponentialdarstellung mittels des Winkels. In
diesem Fall ist $\varphi=\frac{\pi}{4}$. $r$ lässt sich mit Pythagoras
berechnen als $r^2=2^2+2^2=8\implies r=\sqrt{8}$. Dann ist
$z^3 = 2+2i = \sqrt{8}e^{i(\frac{\pi}{4}+k2\pi)}$. Es folgt mit
$k=0,1,2$:
$$z_k=(\sqrt{8})^{\frac{1}{3}}e^{i(\frac{\pi}{4}+k2\pi)\cdot\frac{1}{3}} = \sqrt{2}e^{i(\frac{\pi}{12}+k\frac{2}{3}\pi)}.$$
Alle Lösungen liegen dann auf dem imaginären Kreis.
:::

# Vektorräume

## Prüfen auf Erzeugendensystem/Basis

Prüfen, ob $E = \{v_1,...,v_n\}$ eine Basis bzw. ein Erzeugendensystem
von Vektorraum $V$ ist:

0.  Für Basis ggf. zuerst auf lineare Unabhängigkeit prüfen zwecks
    Effizienz (wenn offensichtlich, sonst sowieso ZSF in nächsten
    Schritten)
1.  Matrix $A$ erstellen mit Vektoren $v_1,...,v_n$ als Zeilen
    untereinander
2.  Rang von $A$ bestimmen
3.  Dimension von $V$ bestimmen
    -   wenn $\mathrm{rank}(A) = \mathrm{dim}(V)$, dann $E$
        Erzeugendensystem
    -   wenn zusätzlich $\mathrm{rank}(A) = n$, dann $E$ Basis
4.  Wenn keine Basis: Basis ermitteln/ergänzen:
    -   wenn $\mathrm{rank}(A) < \mathrm{dim}(V)$, dann alle linear
        unabhängigen Vektoren (nicht-Nullzeilen der ZSF) zu einer Basis
        ergänzen (z.B. durch passende Einheitsvektoren)
    -   wenn $\mathrm{rank}(A) = \mathrm{dim}(V) < n$, dann linear
        abhängige Vektoren streichen

ODER über Determinante $\neq 0$ (TUDU)

## Basis ermitteln

-   Spalten einer Matrix bilden dessen Basis

## Prüfen auf lineare Unabhängigkeit

Anwenden des Gauß-Algorithmus:

::: bsp
**Beispiel** mit $v_1=\begin{pmatrix}5\\11\\-2\end{pmatrix}$,
$v_2=\begin{pmatrix}3\\5\\-1\end{pmatrix}$ und
$v_3=\begin{pmatrix}4\\3\\-1\end{pmatrix}$:
$$\begin{pmatrix}5&3&4\\11&5&3\\-2&-1&-1\end{pmatrix} \leadsto \begin{pmatrix}0&\frac{1}{2}&\frac{3}{2}\\0&-\frac{1}{2}&-\frac{5}{2}\\-2&-1&-1\end{pmatrix} \leadsto \begin{pmatrix}0&0&-1\\0&-\frac{1}{2}&-\frac{5}{2}\\-2&-1&-1\end{pmatrix} \leadsto \begin{pmatrix}1&\frac{1}{2}&\frac{1}{2}\\0&1&5\\0&0&1\end{pmatrix}$$
Man erkennt die lineare Unabhängigkeit: Die Vektoren bilden eine Basis
in $\R^3$.
:::

## Prüfen auf Untervektorraum

**Über Untervektorraumaxiome**:

1.  $0\in U$
2.  $x,y\in U \implies x+y\in U$
3.  $x\in U, \lambda\in K \implies \lambda x\in U$

**Über Kern/Bild**:

Wenn man zeigen soll, dass eine Menge einen Untervektorraum darstellt,
ist es sinnvoll die Tatsache zu verwenden, dass sowohl Kern als auch
Bild immer Untervektorräume darstellen.

::: bsp
**Beispiele**: Schreiben einer Menge als Kern zum Beweis des
Untervektorraums.

1.  Sei $U=\{x\in\R^3: x_1-x_2-x_3=0\}$. Dies lässt sich schreiben als
    Matrixvektorprodukt mit
    $U=\{x\in\R^3: (1,-1,-1)(x_1,x_2,x_3)^\top = 0\}$. Dann ist $U$
    wegen der Definition des Kerns mit $U=\{x\in V: Ax = 0\}$ ein
    Untervektorraum von $\R^3$.
2.  Sei
    $U=\{(u_1,u_2,u_3)^\top\in\R^3: \begin{pmatrix}2u_1+3u_2-u_3\\u_1-4u_2+3u_3\end{pmatrix}=\begin{pmatrix}0\\0\end{pmatrix}\}$.
    Dies lässt sich schreiben als Matrixvektorprodukt mit
    $U=\{(u_1,u_2,u_3)^\top\in\R^3: \begin{pmatrix}2&3&-1\\1&-4&3\end{pmatrix}(u_1,u_2,u_3)^\top=\begin{pmatrix}0\\0\end{pmatrix}\}$.
    Dann ist $U$ wegen der Definition des Kerns mit
    $U=\{x\in V: Ax = 0\}$ ein Untervektorraum von $\R^3$.
:::

::: bsp
**Beispiel**: Schreiben einer Menge als Bild zum Beweis des
Untervektorraums.

Sei $U=\{(2x,-3x)^\top:x\in\R\}$. Dies lässt sich schreiben als
$U=\{\begin{pmatrix}2\\-3\end{pmatrix}x: x\in\R\}$. Dann ist $U$ wegen
der Definition des Bildes mit $U=\{Ax: x\in V\}$ ein Untervektorraum von
$\R^2$.
:::

# Prüfen auf Linearität

## Homomorphismus

Beide Bedingungen lassen sich gemeinsam prüfen mit:
$$f(\lambda\vec{u} + \vec{v}) = \lambda f(\vec{u}) + f(\vec{v}).$$

# Matrizen

## Matrizen transponieren

$$A=\begin{pmatrix}a_{11}&...&a_{1n}\\\vdots&&\vdots\\a_{m1}&...&a_{mn}\end{pmatrix} \implies A^\top=\begin{pmatrix}a_{11}&...&a_{m1}\\\vdots&&\vdots\\a_{1n}&...&a_{mn}\end{pmatrix}$$

## Rang bestimmen

1.  Matrix in Zeilenstufenform bringen
2.  Die Anzahl aller Zeilen, die nicht vollständig aus Nullen bestehen,
    entspricht dem Rang

## Bild bestimmen

1.  Transponierte Matrix $A^\top$ in Zeilenstufenform bringen
2.  Umgeformte Matrix erneut transponieren
3.  Die Menge aller Linearkombinationen der Spalten, die nicht
    vollständig aus Nullen bestehen, entspricht dem Bild

## Kern bestimmen

1.  Gleichungssystem $A\cdot v = 0$ aufstellen (mit
    $A\in K^{m\times n} \implies v\in K^{n\times1}$)
    -   $A$ ist dann eine Abbildungsmatrix
2.  Gleichungssystem in Zeilenstufenform bringen
3.  Lösung (in Abhängigkeit von Parametern) als Menge schreiben

## Determinante bestimmen

### Regel von Sarrus

Gilt bei $3\times3$-Matrizen:

$$A=\begin{pmatrix}a&b&c\\d&e&f\\g&h&i\end{pmatrix}$$
$$\implies \mathrm{det}(A) = aei+bfg+cdh-bdi-afh-ceg$$

### Gaußsches Eliminationsverfahren

1.  Gauß nutzen für Zeilenstufenform (rechte obere Dreiecksmatrix)
    -   bei jeder Vertauschung der Zeilen muss die Determinante mit $-1$
        multipliziert werden
2.  Die Determinante ist das Produkt der Hauptdiagonalelemente:
    $$\mathrm{det}(A) = (-1)^{\text{\#Vertauschungen}} \cdot a'_{11}\cdot...\cdot a'_{nn}$$

### Laplacescher Entwicklungssatz

1.  Wähle Zeile/Spalte aus, nach welcher entwickelt wird (optimalerweise
    möglichst viele Nullen)

2.  Startpunkt als Faktor aufschreiben und mit der Determinanten der
    Matrix multiplizieren, die entsteht, wenn die gesamte derzeitige
    Zeile/Spalte gestrichen wird (abhängig von Schachbrettmuster ggf.
    mit $-1$ multiplizieren)

3.  2 wiederholen für alle Elemente der gewählten Spalte/Zeile und
    addieren

::: bsp
**Beispiel**: Entwicklung nach der ersten Zeile:

```{=tex}
\begin{splitty}
    \mathrm{det}\begin{pmatrix}1&2&3\\4&5&6\\7&8&9\end{pmatrix} &= 1 \cdot \mathrm{det}\begin{pmatrix}5&6\\8&9\end{pmatrix} + (-1)\cdot2\cdot\mathrm{det}\begin{pmatrix}4&6\\7&9\end{pmatrix} + 3\cdot\mathrm{det}\begin{pmatrix}4&5\\7&8\end{pmatrix}\\
    &= 1\cdot(-3) - 2 \cdot (-6) + 3\cdot(-3)\\
    &= 0
\end{splitty}
```
:::

## Matrizen invertieren

Generell: Für $2\times2$-Matrizen empfiehlt sich das
**Adjunktenverfahren**. Für $3\times3$-Matrizen empfiehlt sich das
**Adjunktenverfahren** sowie die **Cramersche Regel**. Bei größeren
Matrizen oder bei Matrizen mit vielen Nullen empfiehlt sich der
**Gauß-Jordan-Algorithmus**.

Wichtig ist: Matrizen lassen sich nur invertieren, wenn $n\times n$ und
$$\mathrm{rank}(A) = n \iff \mathrm{det}(A)\neq0 \iff A^{-1} \text{ existiert.}$$

### Adjunktenverfahren

Für $n\times n$-Matrizen: TUDU adj
$$A^{-1} = \frac{1}{\mathrm{det}(A)} \mathrm{adj}(A)$$

Für $2\times2$-Matrizen:
$$A^{-1}=\frac{1}{ad-bc}\begin{pmatrix}d&-b\\-c&a\end{pmatrix}$$

## Cramersche Regel

1.  $\mathrm{det}(A)$ berechnen und $\mathrm{det}(A)\neq0$ prüfen
2.  Einzelne Einträge der Lösung $x=(x_1,...,x_n)^\top$ mit
    $x_i=\frac{\mathrm{det}(A_i)}{\mathrm{det}(A)}$ bestimmen ($A_i$
    ergibt sich, wenn die $i$-te Spalte von $A$ durch den Vektor $b$
    ersetzt wird)

### Gauß-Jordan-Algorithmus

1.  Erweiterte Koeffizientenmatrix $(A\mid E_n)$ bilden:
    $$(A\mid E_n) = \left(\begin{array}{ccc|ccc}a_{11}&...&a_{1n}&1&...&0\\\vdots&&\vdots&\vdots&\ddots&\vdots\\a_{m1}&...&a_{mn}&0&...&1\end{array}\right)$$
2.  Gaußsches Eliminationsverfahren anwenden, um die linke Seite auf die
    Einheitsmatrix zu bringen:
    $$(E_n\mid A^{-1}) = \left(\begin{array}{ccc|ccc}1&...&0&b_{11}&...&b_{1n}\\\vdots&\ddots&\vdots&\vdots&&\vdots\\0&...&1&b_{m1}&...&b_{mn}\end{array}\right)$$
3.  Die Matrix auf der rechten Seite entspricht dem Inversen von $A$

## Charakteristisches Polynom bestimmen

Determinante von $A-\lambda E_n$ abhängig von $\lambda$ bestimmen:
$$P_A = \mathrm{det}(A-\lambda E_n)$$

::: bsp
**Beispiel**: Mit
$A=\begin{pmatrix}1&1&-2\\1&1&-2\\-2&-2&4\end{pmatrix}$:

Lösen durch Laplaceschen Entwicklungssatz:
`\begin{align*}P_A&=\mathrm{det}\begin{pmatrix}1-\lambda&1&-2\\1&1-\lambda&-2\\-2&-2&4-\lambda\end{pmatrix}\\&=(1-\lambda)\mathrm{det}\begin{pmatrix}1-\lambda&-2\\-2&4-\lambda\end{pmatrix}-1\mathrm{det}\begin{pmatrix}1&-2\\-2&4-\lambda\end{pmatrix}-2\mathrm{det}\begin{pmatrix}1&1-\lambda\\-2&-2\end{pmatrix}\\&=-\lambda^2(\lambda-6)\end{align*}`{=tex}
:::

## Eigenwerte bestimmen

1.  Charakteristisches Polynom $P_A$ bestimmen
2.  Nullstellen von $P_A$ sind Eigenwerte

::: bsp
**Beispiel**: Mit $P_A=-\lambda^2(\lambda-6)$:
`\begin{align*}&-\lambda^2(\lambda-6)=0\\\implies&\lambda_{1,2}=0\quad\land\quad\lambda_3=6\end{align*}`{=tex}
:::

## Eigenvektoren bestimmen

1.  Eigenwerte $\lambda_i$ bestimmen
2.  Für jedes $\lambda_i$ lösen:
    $$V_{\lambda_i} = \mathrm{ker}(A-\lambda_i E_n)$$
3.  Die Lösungen werden jeweils abhängig von einer Variable sein
    `\textrightarrow\space`{=tex} linearen Spann aufstellen

::: bsp
**Beispiel**: Mit $\lambda_{1,2}=0,\ \lambda_3=6$ und
$A=\begin{pmatrix}1&1&-2\\1&1&-2\\-2&-2&4\end{pmatrix}$:

1.  Eigenvektor für $\lambda_1=0$ berechnen: $\\A-\lambda_1$ umformen:
    $$\begin{pmatrix}1&1&-2\\1&1&-2\\-2&-2&4\end{pmatrix}\leadsto\begin{pmatrix}1&1&-2\\0&0&0\\0&0&0\end{pmatrix}$$
    Gleichung $\mathrm{ker}(A-\lambda_1) \implies A-\lambda_1 = 0$
    lösen:
    `\begin{align*}&x_1+x_2-2x_3=0\\\implies&x_1=-x_2+2x_3\\\implies&x_2=...=x_2\\\implies&x_3=...=x_3\end{align*}`{=tex}
    Linearen Spann aufstellen:
    $$V_0=\mathrm{Lin}\left(\begin{pmatrix}-1\\1\\0\end{pmatrix},\begin{pmatrix}2\\0\\1\end{pmatrix}\right)$$
2.  Eigenvektor für $\lambda_3=6$ berechnen: $\\A-\lambda_3$ umformen:
    $$\begin{pmatrix}1-6&1&-2\\1&1-6&-2\\-2&-2&4-6\end{pmatrix}\leadsto\begin{pmatrix}2&0&1\\0&2&1\\0&0&0\end{pmatrix}$$
    Gleichung $\mathrm{ker}(A-\lambda_3) \implies A-\lambda_3 = 0$ lösen
    durch LGS:
    `\begin{align*}&2x_1+x_3=0\quad\land\quad2x_2+x_3=0\\\implies&x_1=-\frac{x_3}{2}\quad\land\quad x_2=-\frac{x_3}{2}\quad\land\quad x_3=x_3\end{align*}`{=tex}
    Linearen Spann aufstellen:
    $$V_6=\mathrm{Lin}\begin{pmatrix}-\frac{1}{2}\\-\frac{1}{2}\\1\end{pmatrix}=\mathrm{Lin}\begin{pmatrix}-1\\-1\\2\end{pmatrix}$$
:::

## Eigenraum bestimmen

1.  Eigenvektoren $V_{\lambda_i}$ bestimmen
2.  Linearen Spann aller Eigenvektoren aufstellen

::: bsp
**Beispiel**: Mit
$V_0=\mathrm{Lin}\left(\begin{pmatrix}-1\\1\\0\end{pmatrix},\begin{pmatrix}2\\0\\1\end{pmatrix}\right)$
und $V_6=\mathrm{Lin}\begin{pmatrix}-1\\-1\\2\end{pmatrix}$:
$$\mathbb{L}=\mathrm{Lin}\left(\begin{pmatrix}-1\\1\\0\end{pmatrix},\begin{pmatrix}2\\0\\1\end{pmatrix},\begin{pmatrix}-1\\-1\\2\end{pmatrix}\right)$$
:::

## Diagonalmatrix und invertierbare Matrix bestimmen

Gesucht werden Lösungen von $S^{-1}AS=D$ mit der invertierbaren Matrix
$S$ und der Diagonalmatrix $D$.

1.  Eigenwerte und Eigenvektoren von $A$ bestimmen
2.  Die Spalten der invertierbaren Matrix $S$ entsprechen den
    Eigenvektoren
3.  Die Elemente der Diagonalen der Diagonalmatrix entsprechen den
    Eigenwerten

::: bsp
**Beispiel**: Mit $\lambda_{1,2}=0,\ \lambda_3=6$ sowie
$V_0=\mathrm{Lin}\left(\begin{pmatrix}-1\\1\\0\end{pmatrix},\begin{pmatrix}2\\0\\1\end{pmatrix}\right)$
und $V_6=\mathrm{Lin}\begin{pmatrix}-1\\-1\\2\end{pmatrix}$:

$$S=\begin{pmatrix}-1&2&-1\\-1&0&-1\\0&1&2\end{pmatrix}$$
$$D=\begin{pmatrix}\lambda_1&0&0\\0&\lambda_2&0\\0&0&\lambda_3\end{pmatrix}=\begin{pmatrix}0&0&0\\0&0&0\\0&0&6\end{pmatrix}$$
:::
