---
author: Marvin Borner
date: "`\\today`{=tex}"
lang: de-DE
pandoc-latex-environment:
  bem-box:
  - bem
  bsp-box:
  - bsp
  prob-box:
  - prob
  proof-box:
  - proof
  visu-box:
  - visu
toc-title: Inhalt
---

```{=tex}
\newpage
\renewcommand\O{\mathcal{O}} % IDK WHY
```
# Tricks

-   $\log_a(x)=\frac{\log_b(x)}{\log_b(a)}$

# Big-O-Notation

-   $f\in\O(g)$: $f\le g$
-   $f\in\Omega(g)$: $f\ge g$
-   $f\in o(g)$: $f<g$
-   $f\in\omega(g)$: $f>g$
-   $f\in\Theta(g)$: $f=g$

# Master Theorem

Mit $T(n)=aT(\lceil n/b\rceil)+\O(n^d)$ für $a>0$, $b>1$ und $d\ge0$,
ist
$$T(n)=\begin{cases}\O(n^d)&d>\log_ba\\\O(n^d\log_n)&d=log_ba\\\O(n^{log_ba})&d<\log_ba\end{cases}$$

# Bäume

-   Binary Höhe: $\log n$; Binary Anzahl: $\sum_{i=0}^h2^i=2^{h+1}-1$
-   Heap:
    -   `Heapify`: rekursiv swap bis Bedingung nicht verletzt:
        $\O(\log n)$
    -   `Decrease`: erniedrigen, dann heapify auf node: $\O(\log n)$
    -   `Increase`: erhöhen, dann rekursiv mit parent swappen bis
        bedingung nicht verletzt: $\O(\log n)$
    -   `ExtractMax`: Wurzel mit letzter leaf ersetzen, `heapify(root)`:
        $\O(\log n)$
    -   `Insert`: Einfügen an nächster Stelle mit $-\infty$,
        `Increase(x)` : $\O(\log n)$
    -   `Build`: Array irgendwie als Baum schreiben, `heapify` auf jedem
        Knoten von unten nach oben: $\O(n)$
-   Priority queue: Als heap analog

# Hashing

-   irreversible Reduzierung des Universums

# Graphen

-   Adjazenzmatrix: $a_{ij}=1$ bzw Gewicht wenn Kante von $i$ nach $j$
    -   für dense
-   Adjazenzliste: array von Knoten mit Listen von ausgehenden Kanten
    -   für sparse
-   Sources: längste finishing time von DFS
-   Sinks: alle Kanten umdrehen, dann sources finden
-   SCC: DFS auf umgedrehtem Graph, startend bei ursprünglicher source
    (`\textrightarrow`{=tex} SCC). Weiter bei restlichen Knoten (nach
    absteigenden finishing times): $\O(V + E)$
-   Cycles: durch DFS wenn visited nochmal visited wird
-   Topological sort: no cycles; DFS und Knoten nach absteigenden
    finishing times sortieren

## DFS

-   $\O(V+E)$ bzw. $\O(V^2)$ für Matrix

TODO: Anleitung schriftlich

## BFS

-   gleich wie DFS nur queue statt stack
-   $\O(V+E)$ bzw. $\O(V^2)$ für Matrix
-   gut für shortest path, einfach jedes Mal distance updaten

## Relaxation

-   anfangs alle $\infty$ außer Start

```{=tex}
\begin{lstlisting}
function Relax(u,v)
    if v.dist > u.dist + w(u, v)
      v.dist = u.dist + w(u,v)
      v.$\pi$ = u
\end{lstlisting}
```
## Bellman-Ford

-   $(|V|-1)$-mal alle Kanten relaxen, dann noch einmal alle relaxen
    (wenn sich was ändert, dann cycle): $\O(V\cdot E)$
-   in undirected muss in beide Richtungen relaxed werden
-   blöd für negative Gewichte
-   geht auch dezentral/asynchron, damit einzelne Knoten sich updaten
    können

## Dijkstra

-   gierig: nimmt einfach immer die nächstbeste Kante
-   $\O((V+E)\log V)$ mit min-priority Queues
-   für PPSP einfach stoppen wenn Knoten erreicht wurde (oder auch
    bidirektional, dann besser)

## Floyd-Warshall

-   besser für APSP (da Bellmand/Dijkstra je für jeden Vertex ausführen
    müssten: $\O(V^2\cdot E...)$)
-   dreimal `for` für Matrix

## A\*

-   wie Dijkstra, nur mit nächstem $d(s,u)+w(u,v)+\pi(v)$ statt
    $d(s,u)+w(u,v)$ (Heuristik)

## Kruskal

-   für MST
-   Kanten aufsteigend sortieren; je nächste Kante zu leerem Graph
    hinzufügen solange kein Zykel entsteht
-   oder voll toll mit union-find: $\O(E\log V)$
    -   weil dann Zykelerkennung ez geht und so

## Prim

-   für MST
-   bei random starten, dann immer nächstbeste Kante hinzufügen (Kreis
    erweitert sich)
-   mit priority queue $\O(E\log V)$

# Sortierung

-   **stabil**: wenn gleicher Wert am Ende gleichen Index
    -   selection: stabil
    -   insertion: stabil
    -   heap: instabil
    -   merge: stabil
    -   quick: stabil (out-of-place)
    -   counting: stabil (mit Listen als buckets)
-   Annahme: konstante Vergleiche

## Selection

-   je kleinstes Element entfernen und in Ausgabe pushen: $\O(n^2)$

## Insertion

-   je Element nach links bewegen bis es kleiner-gleich ist. Dann für
    nächstes wiederholen: $\O(n^2)$ oder best-case $\O(n)$

## Bubble

-   Paare von hinten durchgehen, je swappen wenn größer: $\O(n^2)$ oder
    best-case $\O(n)$

## Merge

-   List halbieren, rekursiv beide Listenhälften merge-sorten und
    mergen: $\O(n\log n)$ weil Master-Theorem
-   merge sollte nicht kopieren (also doof in funktionalen Sprachen)

## Heap

-   Heap aus Zahlen erstellen, je `ExtractMax` anwenden: $\O(n\log n)$
    worst und best

## Quick

-   je Pivotelement (e.g. Median) wählen, dann kleiner/größer
    Pivot-Hälfte rekursiv zusammenfügen: $\O(n^2)$ oder best-case
    $\O(n)$
-   durch random Pivotelement ist worst-case $\O(n\log n)$ zu erwarten

## Counting

-   array mit buckets, sortieren nach Schlüsselwert; am Ende concat
    ausgeben: $\O(K+n)$ - besser als vergleichsbasierte Algorithmen

## Radix

-   Zahlen werden als Strings vom Ende aus durch Counting-Sort sortiert:
    $\O(d(n+K))$ mit $d$ als Anzahl der Ziffern
-   block-based: je nochmal $x$ buckets

## Bucket

-   Werte aus Intervall $[i/n,(i+1)/n[$ werden bucket $i$ zugeordnet;
    dann jeden Bucket mit Insertion sortieren: $\O(n)$ oder worst-case
    $\O(n\log n)$

# Suchen

## Binary

-   (Array sortiert); `A[n/2]` betrachten, entsprechend in
    linker/rechter Hälfte weitersuchen: $\O(\log n)$

## Exponential

-   Zweierpotenz-Indizes durchgehen, bei $q<2^i$ binary auf $2^{i-1}$
    und $2^i$

## Binary tree

-   links $\le$ parent, rechts $\ge$ parent: $\O(\log n)$
-   rekursiver tree-walk für sort: $\O(n)$
-   insert wird obv sehr unbalanced: $\O(n)$
-   delete einfach nächstbestes passendes Element als Substitution
    suchen: $\O(n)$

### AVL

-   LeftRotation/RightRotation für balancing von Subbäumen (TODO?)
-   insert/delete: $\O(\log n)$ da balancing $\O(1)$

# Gier

-   einfach immer das nächstbeste nehmen (Heuristiken)
-   häufig nicht optimal, dafür effizient
    -   bei Knapsack bspw. doof
    -   für Dijkstra, Kruskal, Prim aber auch global optimal

## Lokale Suche

-   bei zufälligem Wert starten, lokale Nachbarschaft betrachten.
    Aufhören, sobald keine bessere Lösung in lokaler Nachbarschaft ist
-   mit unterschiedlichen Startwerten wiederholen
-   bei TSP durch swappen eigentlich not too bad (also für TSP obv)

### Simulated annealing

-   am Anfang zu höherer Wahrscheinlichkeit auch schlechtere Lösungen in
    lokaler Nachbarschaft betrachten (in Abhängigkeit der Differenz)
-   Wahrscheinlichkeit ist je $e^{-\Delta/T}$
-   eigentlich ganz cool, aber T muss halt passend gewählt werden

# Dynamik

-   Lösen von Problemen durch Kombination der Teilproblemlösungen
    (bottom-up vs. top-down)

## Knapsack

-   Dieb\*in will möglichst viel stehlen hehe
-   Fälle: Objekt $j$ wird nicht eingepackt: $K(V,j)=K(V,j-1)$
-   Fälle: Objekt $j$ wird eingepackt: $K(V,j)=K(V-vol_j,j-1)+val_j$
-   bottom-up Array konstruieren mit beiden Fällen und je Maximum nehmen
-   top-down bspw. durch rekursive Memoization
-   damit $\O(n\cdot V_\text{total})$ (abhängig von
    $V\implies\text{Skalierung siehe Approximationsalgorithmen}$)

# Backtracking

-   bspw. toll bei Queen's problem
-   einfach backtracken im Lösungsbaum wenn Teillösung ungültig

# Branch and Bound

-   bound: untere Schranke bestimmen und mit aktueller Lösung
    vergleichen
-   bei TSP ist die untere Schranke bspw. das Gewicht des MST
-   verbessert nur durchschittliche Laufzeit

# Approximationsalgorithmen

-   Algorithmus finden, der der tatsächlichen Lösung möglichst nahe
    kommt
-   Güte von Approximation $A$ mit Instanz $I$ entsprechend
    $\alpha_A=\max_I\frac{\mathrm A(I)}{\mathrm{OPT}(I)}$
-   Beispiele
    -   Set/Vertex cover
    -   TSP: Zusätzliche Annahme: Dreiecksungleichung. Dann ist lower
        bound MST und upper bound zweifacher Graph Durchlauf unter
        Verwendung der Dreiecksungleichung
        -   damit $\alpha_A\le2$
    -   Knapsack: Volumina skalieren und inten - Rundungsfehler ergibt
        entsprechend $\alpha_A$

# Line

-   $\sigma=\sigma_1,...,\sigma_m$ Sequenz unbekannter $\sigma$
-   `\texttt{opt($\sigma$})`{=tex} sind Kosten des besten offline
    Algorithmus
-   `\texttt{A($\sigma$})`{=tex} sind Kosten des online Algorithmus für
    $\sigma$
-   **c-kompetitiv**, wenn für $\sigma$ gilt
    $A(\sigma)\le c\mathrm{opt}(\sigma)$

## Buy-or-rent

-   Wie lange Skifahren? Leihen $50$, kaufen $500$ Euro.
-   $\sigma_i=1\implies\text{skifahren}$,
    $\sigma_i=0\implies\text{nicht skifahren}$
-   $\frac{A(\sigma)}{c\mathrm{opt}(\sigma)}=\frac{50(t-1)+500}{50t}$
    minimal für $t=10$
    -   also Ski kaufen nach 10 Tagen

## List-update

-   move-to-front ist am besten

## Dating

-   wie viele Dates bevor Entscheidung?
-   Kalibrierungsphase mit $t$ Personen; in Phase 2 entscheiden sobald
    jemand besser als alle aus Phase 1
-   blabla $t=\frac ne$ also mit ca. 1/3 kalibrieren

# Closest pair of points

-   brute-force ($\O(n^2)$) und sortieren ($\O(n\log n)$) beides nicht
    optimal
-   divide and conquer: Raum rekursiv aufteilen, Abstand closest pair je
    Seite: $\O(n\log n)$
    -   problem in der Mitte lässt sich 2d elegant lösen
-   randomisierte Lößung: $\sqrt{n}$ zufällige Punkte und paarweise
    Abstände
    -   kleinster Abstand ist $\delta$
    -   Hashing, Würfel, blabla effizient (TODO?)

# KD-Bäume

TODO.
