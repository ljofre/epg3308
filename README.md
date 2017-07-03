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


## Autores

Seomara Palominos (skpalominos@uc.cl)

<img src="https://media.licdn.com/mpr/mpr/shrinknp_400_400/AAEAAQAAAAAAAAkKAAAAJGEwNjIxNDcxLWQ5OWUtNGMxMC1iZjNhLWU4NGUyNmYwZjA3Zg.jpg" width="200" height="200" />


Leonardo Jofré (lnjofre@uc.cl)

<img src="https://media.licdn.com/mpr/mpr/shrinknp_400_400/AAEAAQAAAAAAAAmpAAAAJDVhMWI1M2YzLWExYzMtNDZiZi1hMmViLTgzMmFhNzkyOTc3Yw.jpg" width="200" height="200" />


