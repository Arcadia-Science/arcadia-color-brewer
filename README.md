# Generating plots in R using Arcadia colors

R package to generate color palettes using Arcadia Science's colors.

# How to install

The ArcadiaColorBrewer R package can be installed using devtools:

`devtools::install_github("Arcadia-Science/arcadia-color-brewer")`

# Walkthrough

<font size="3"> This walkthrough contains a function (**arcadia.pal**) for generating figure colors in R that match Arcadia's color palettes for quickly producing publication ready figures. 

<font size="3"> **arcadia.pal** is based on the **brewer.pal** function in the RColorBrewer package and functions similarly. Users provide a desired number of colors and a specific color palette to choose from. Arcadia currently has three color palettes to choose from: Neutral, Accent, and Lighter accents. Overviews of these palettes and can be [accessed here](https://docs.google.com/document/d/1hqy8Oqeffj2sOPGTkusiNNslaV1WinCnWP0N_lzeNVU/edit).

---
```

<font size="3"> Below is example usage of the function, here generating 3 colors from the 'Accent' palette


```R
arcadia.pal(3, 'Accent')
```


<style>
.dl-inline {width: auto; margin:0; padding: 0}
.dl-inline>dt, .dl-inline>dd {float: none; width: auto; display: inline-block}
.dl-inline>dt::after {content: ":\0020"; padding-right: .5ex}
.dl-inline>dt:not(:first-of-type) {padding-left: .5ex}
</style><dl class=dl-inline><dt>Aegean</dt><dd>'#5088C5'</dd><dt>Amber</dt><dd>'#F28360'</dd><dt>Seaweed</dt><dd>'#3B9886'</dd></dl>



<font size="3"> And here is an example generating 3 colors from the same palette, but choosing them randomly


```R
arcadia.pal(3, 'Accent', choose_random = TRUE)
```


<style>
.dl-inline {width: auto; margin:0; padding: 0}
.dl-inline>dt, .dl-inline>dd {float: none; width: auto; display: inline-block}
.dl-inline>dt::after {content: ":\0020"; padding-right: .5ex}
.dl-inline>dt:not(:first-of-type) {padding-left: .5ex}
</style><dl class=dl-inline><dt>Aegean</dt><dd>'#5088C5'</dd><dt>Rose</dt><dd>'#F898AE'</dd><dt>Iris</dt><dd>'#9977DA'</dd></dl>



---

<font size="3"> Now let's generate a couple of toy plots using different color palettes

---

<font size="3"> Accent, 3 colors


```R
boxplot(seq(-20, 0, by = .1),
        seq(0, 20, by = .1),
        seq(20, 40, by = .1),
        col = arcadia.pal(3, 'Accent'))
```


    
![png](output_14_0.png)
    


<font size="3"> Neutral, 3 colors


```R
boxplot(seq(-20, 0, by = .1),
        seq(0, 20, by = .1),
        seq(20, 40, by = .1),
        col = arcadia.pal(3, 'Neutral'))
```


    
![png](output_16_0.png)
    


<font size="3"> Lighter accents, 3 colors


```R
boxplot(seq(-20, 0, by = .1),
        seq(0, 20, by = .1),
        seq(20, 40, by = .1),
        col = arcadia.pal(3, 'Lighter_accents'))
```


    
![png](output_18_0.png)
    

