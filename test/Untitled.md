test\`
================
Seevasant Indran
09 October, 2018

A not so minimal guide to readr, dplyr and tidyr. <details> <summary> Table of content </summary> [WARNING!! install.packages()+ CONTENT](#WARNING!!-install.packages()+-CONTENT) [Why-Data-Manipulation](#Why-Data-Manipulation) [Examples of Messy vs Tidy data](#Examples-of-Messy-vs-Tidy-data) [A gapminder tidy &lt;- untidy walkthough](#A%20gapminder%20tidy%20%3C-%20untidy%20walkthough) [Untidy-gapminder-(above)-vs-tidy-gapminder-(below)](#Untidy-gapminder-(above)-vs-tidy-gapminder-(below)) (\#A-dplyr-walkthrough) (\#Summary-of-the-main-dplyr-Functions) (\#Relationship-to-the-other-functions) (\#Tibble-diff) (\#{base}-R-and-dplyr) (\#Chaining) </details>

WARNING!! install.packages()+ CONTENT
=====================================

Why Data Manipulation
=====================

### Examples of Messy vs Tidy data

#### A gapminder tidy &lt;- untidy walkthough

Untidy gapminder (above) vs tidy gapminder (below).
---------------------------------------------------

A dplyr walkthrough
-------------------

Summary of the main dplyr Functions
-----------------------------------

Relationship to the other functions
-----------------------------------

Tibble diff
-----------

{base} R and dplyr
------------------

Chaining
--------

A tidyr walkthrough Summary of the tidyr main Functions \# The dplyr Functions Most usefull dplyr functions for data manipulation dplyr:: tbl\_df() rename() filter() select() arrange() %&gt;% mutate() summarise() group\_by() Super %&gt;% pipe The tidyr Functions 2 most important tidyr for data manipulation tidyr:: Some Data gather() spread() A dplyr:: walkthrough Summary of the 9 joint function inner\_join() semi\_join() left\_join() anti\_join() right\_join() full\_join() Bonus content union() intersect() setdiff() gather() part 2 gather() part 3 - define year using subset of colnames spread() - part 2 with continent has the colnames and meanSchool as value inner\_join() part 2 semi\_join() part 2 left\_join() part 2 anti\_join() part 2
