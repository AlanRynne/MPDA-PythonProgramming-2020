---
author: MPDA'20
title: Python Exam
theme: white
transition: convex
highlight: breezedark
css: '../assets/css/revealCustom.css'
header-includes: |
  <!-- If the query includes 'print-pdf', use the PDF print sheet -->
  <script>
  document.write( '<link rel="stylesheet" href="../assets/css/' +
      ( window.location.search.match( /print-pdf/gi ) ? 'pdf' : 'paper' ) + 
      '.css" type="text/css" media="print">' );
  </script>
---

# The spiral stairwell

# {-}

:::columns

::::column

$$
(r,\theta,z)\longrightarrow
\begin{eqnarray}
x &=& r\cos\theta\\
y &=& r\sin\theta\\
z &=& z
\end{eqnarray}
$$

$$
\small\text{where }\left\{
\begin{eqnarray}
\small r&\in&[0,\infty)\\
\small\theta&\in&[0,2\pi)\\
\small z&\in&[0,\infty)\\
\end{eqnarray}\right.
$$
::::

::::column
![](https://mathinsight.org/media/image/image/cylindrical_coordinates.png)
::::

:::
