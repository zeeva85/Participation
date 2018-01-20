---
title: "Seminar 2a & 2b deliverables"
date: "`r format(Sys.time(), '%d %B, %Y')`"
author: Seevasant Indran
output: 
  html_document:
    toc: yes
    toc_depth: 2
    keep_md: true
---





# Pre-deliverables exercise data for 2b 

Sample data set from 1999 till 2008 for 38 popular model cars from [EPA](http://fueleconomy.gov)


```r
ggplot2::mpg
```

```
## # A tibble: 234 x 11
##    manufac~ model   displ  year   cyl trans  drv     cty   hwy fl    class
##    <chr>    <chr>   <dbl> <int> <int> <chr>  <chr> <int> <int> <chr> <chr>
##  1 audi     a4       1.80  1999     4 auto(~ f        18    29 p     comp~
##  2 audi     a4       1.80  1999     4 manua~ f        21    29 p     comp~
##  3 audi     a4       2.00  2008     4 manua~ f        20    31 p     comp~
##  4 audi     a4       2.00  2008     4 auto(~ f        21    30 p     comp~
##  5 audi     a4       2.80  1999     6 auto(~ f        16    26 p     comp~
##  6 audi     a4       2.80  1999     6 manua~ f        18    26 p     comp~
##  7 audi     a4       3.10  2008     6 auto(~ f        18    27 p     comp~
##  8 audi     a4 qua~  1.80  1999     4 manua~ 4        18    26 p     comp~
##  9 audi     a4 qua~  1.80  1999     4 auto(~ 4        16    25 p     comp~
## 10 audi     a4 qua~  2.00  2008     4 manua~ 4        20    28 p     comp~
## # ... with 224 more rows
```

## Practice Scatterplot


```r
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy))
```

![](Seminar_2b_deliverables_files/figure-html/unnamed-chunk-2-1.png)<!-- -->

## Practice Scatterplot with colour visualization


```r
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy, color = class ))
```

![](Seminar_2b_deliverables_files/figure-html/unnamed-chunk-3-1.png)<!-- -->

## Practice Scatterplot size visualization



```r
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy, size = class ))
```

![](Seminar_2b_deliverables_files/figure-html/unnamed-chunk-4-1.png)<!-- -->

## Practice Scatterplot with fixed colour


```r
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy, color = "red"))
```

![](Seminar_2b_deliverables_files/figure-html/unnamed-chunk-5-1.png)<!-- -->

# ScatterPlot template

>ggplot(data = <DATA>) + 
  <GEOM_FUNCTION>(
     mapping = aes(<MAPPINGS>),
     stat = <STAT>, 
     position = <POSITION>
  ) +
  <COORDINATE_FUNCTION> +
  <SCALE_FUNCTION> +
  <AXIS_FUNCTION> +
  <FACET_FUNCTION>
  
## Practice Scatterplot regression with loess
 

```r
  ggplot(data = mpg,mapping = aes(x = displ, y = hwy)) +
  geom_point() +
  geom_smooth()
```

```
## `geom_smooth()` using method = 'loess'
```

![](Seminar_2b_deliverables_files/figure-html/unnamed-chunk-6-1.png)<!-- -->

## Practice Scatterplot regression with loess and year visualization
 

```r
  ggplot(data = mpg,mapping = aes(x = displ, y = hwy, color = year)) +
  geom_point() +
  geom_smooth()
```

```
## `geom_smooth()` using method = 'loess'
```

![](Seminar_2b_deliverables_files/figure-html/unnamed-chunk-7-1.png)<!-- -->

## Practice Scatterplot regression with transmission visualization


```r
  ggplot(data = mpg,mapping = aes(x = displ, y = hwy, color = trans)) +
  geom_point()
```

![](Seminar_2b_deliverables_files/figure-html/unnamed-chunk-8-1.png)<!-- -->

## Variable assignation to fuel efficency using the piping command


```r
(averageEfficiency <- 
  mpg %>% group_by(class) %>% summarise(fuel_efficiency = mean(hwy)))
```

```
## # A tibble: 7 x 2
##   class      fuel_efficiency
##   <chr>                <dbl>
## 1 2seater               24.8
## 2 compact               28.3
## 3 midsize               27.3
## 4 minivan               22.4
## 5 pickup                16.9
## 6 subcompact            28.1
## 7 suv                   18.1
```

## Practice barchart fuel efficiecies of various clases


```r
ggplot(data = averageEfficiency) +
  geom_bar(aes(x = class, y = fuel_efficiency),
           stat = "identity")
```

![](Seminar_2b_deliverables_files/figure-html/unnamed-chunk-10-1.png)<!-- -->

## Practice barchart fuel efficiencies of various clases with colour


```r
ggplot(data = averageEfficiency) +
  geom_bar(aes(x = class, y = fuel_efficiency, fill = class),
           stat = "identity")
```

![](Seminar_2b_deliverables_files/figure-html/unnamed-chunk-11-1.png)<!-- -->

## Practice barchart fuel efficiencies of various clases with colour with properly labbeled axis


```r
ggplot(averageEfficiency) + 
  geom_bar(aes(x = class, y = fuel_efficiency, fill = class),
           stat = "identity") +
  ylab("Fuel Efficiency (miles per gallon)") +
  xlab("Vehicle Type")
```

![](Seminar_2b_deliverables_files/figure-html/unnamed-chunk-12-1.png)<!-- -->

## Practice barchart fuel efficiencies of various clases (colour) inverted


```r
ggplot(averageEfficiency) + 
  geom_bar(aes(x = class, y = fuel_efficiency, fill = class),
           stat = "identity") +
  ylab("Fuel Efficiency (miles per gallon)") +
  xlab("Vehicle Type") +
  scale_y_reverse()
```

![](Seminar_2b_deliverables_files/figure-html/unnamed-chunk-13-1.png)<!-- -->

## Practice barchart fuel efficiencies of various clases (colour) side fliped


```r
ggplot(averageEfficiency) + 
  geom_bar(aes(x = class, y = fuel_efficiency, fill = class),
           stat = "identity") +
  coord_flip()
```

![](Seminar_2b_deliverables_files/figure-html/unnamed-chunk-14-1.png)<!-- -->

## Coord polar fuel efficiencies of various clases (colour)


```r
ggplot(averageEfficiency) + 
  geom_bar(aes(x = class, y = fuel_efficiency, fill = class),
           stat = "identity") +
  coord_polar()
```

![](Seminar_2b_deliverables_files/figure-html/unnamed-chunk-15-1.png)<!-- -->

## Scatterplot fuel efficiencies of various clases in facet wrap


```r
ggplot(data = mpg, 
       mapping = aes(x = displ, y = hwy)) +
  geom_point() +
  facet_wrap(~class)
```

![](Seminar_2b_deliverables_files/figure-html/unnamed-chunk-16-1.png)<!-- -->

#Deliverables for seminar 2b


```r
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy, color = drv, size = class))
```

![](Seminar_2b_deliverables_files/figure-html/unnamed-chunk-17-1.png)<!-- -->
  
                                                        
                                                        **The End** 
  
