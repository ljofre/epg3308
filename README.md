epg3308 <img src="http://www.labmat.puc.cl/themes/labmat/imagenes/facultad_logo.png" align="right" />
====================


Biblioteca de estadistica descriptiva en R

## Instalación
```s
# install.packages("devtools")
devtools::install_github("ljofre/epg3308")
```

## Uso de la libreria

Datos de prueba

```s
>library(describeNsimulate)

>data("albahaca")

>head(albahaca)


  produccion  temp alt n.riegos hum sexo marca cuidado
1      46.44 14.93 590        9   2    0     3       1
2      27.77 13.05 586        5   2    0     2       1
3      47.02 18.86 939       12   1    1     1       1
4      32.38 14.32 833        8   3    1     2       2
5      30.40 13.34 819        7   1    0     1       1
6      27.24 12.95 604        4   3    1     3       1
```

funciones básicas de estadistica descriptiva

```s
# Coeficiente de Asimetria de Fisher 

> asimetria.fisher(albahaca$produccion,'SI')
[1] "Asimetria Negativa"
[1] -0.1934995

#Curtosis
> curtosis(albahaca$produccion,'SI')
[1] "Distribucion Platicurtica"
[1] 2.251493

#Cuartiles            *******
> cuartiles(albahaca$produccion)
   Cuartiles
Q1     29.26
Q2     38.97
Q3     46.45

#Correlacion de Pearson   *********
> corr.pearson(albahaca,"n.riegos","produccion")
[1] 0.7930546
[1] "Asosiacion Lineal Positiva"


#Matriz Correlaciones Pearson
> corr.matrix.pearson(albahaca)
           produccion      temp        alt  n.riegos
produccion  1.0000000 0.3567275 -0.3984812 0.7930546
temp        0.3567275 1.0000000  0.1889965 0.2377609
alt        -0.3984812 0.1889965  1.0000000 0.1408494
n.riegos    0.7930546 0.2377609  0.1408494 1.0000000

#Matriz Correlaciones Spearman
> corr.matrix.spearman(albahaca)
           produccion      temp       alt  n.riegos
produccion  1.0000000 0.8631957 0.8190119 0.8575672
temp        0.8631957 1.0000000 0.8468730 0.7956535
alt         0.8190119 0.8468730 1.0000000 0.7920263
n.riegos    0.8575672 0.7956535 0.7920263 1.0000000

#Covarianza
> covarianza(albahaca$produccion,albahaca$temp)
[1] 10.11587

#Coeficiente Variacion
> coeficiente.variacion(albahaca$produccion)
[1] 0.2882387

#Promedio
> promedio(albahaca$produccion)
[1] 37.5985

#Suma
> suma(albahaca$produccion)
[1] 1503.94
```

## Resumenes Descriptivos

### Categoricas

```s
descriptive.categorical(albahaca)
[1] "hum"
  hum  n proporcion   odds error std
1   1  7      0.175 0.2121    0.0601
2   2 15      0.375 0.6000    0.0765
3   3 18      0.450 0.8182    0.0787
[1] "sexo"
  sexo  n proporcion   odds error std
1    0 19      0.475 0.9048     0.079
2    1 21      0.525 1.1053     0.079
[1] "marca"
  marca  n proporcion   odds error std
1     1 12        0.3 0.4286    0.0725
2     2 16        0.4 0.6667    0.0775
3     3 12        0.3 0.4286    0.0725
[1] "cuidado"
  cuidado  n proporcion odds error std
1       1 20        0.5    1    0.0791
2       2 20        0.5    1    0.0791
```

### Numéricas

```s
> descriptive.continue(albahaca)
            n promedio     suma     std    CV asimetria curtosis minimo maximo     Q1     Q2
produccion 40   37.598  1503.94  10.837 0.288    -0.193    2.251  12.94  60.31  35.67  39.31
temp       40   16.466   658.64   2.617 0.159    -0.018    1.727  12.07  20.92  18.65  18.20
alt        40  790.375 31615.00 158.639 0.201    -0.185    1.426 502.00 988.00 779.00 974.00
n.riegos   40    7.500   300.00   2.253 0.300     0.131    1.948   4.00  12.00   6.50   9.00
               Q3
produccion  35.67
temp        18.65
alt        779.00
n.riegos     6.50
```

## Autores

Seomara Palominos (skpalominos@uc.cl)

<img src="https://media.licdn.com/mpr/mpr/shrinknp_400_400/AAEAAQAAAAAAAAkKAAAAJGEwNjIxNDcxLWQ5OWUtNGMxMC1iZjNhLWU4NGUyNmYwZjA3Zg.jpg" width="200" height="200" />


Leonardo Jofré (lnjofre@uc.cl)

<img src="https://media.licdn.com/mpr/mpr/shrinknp_400_400/AAEAAQAAAAAAAAmpAAAAJDVhMWI1M2YzLWExYzMtNDZiZi1hMmViLTgzMmFhNzkyOTc3Yw.jpg" width="200" height="200" />


