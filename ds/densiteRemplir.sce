N = 10^5 // taille de l'échantillon 
Y = grand(1,N,"exp",1)
X = ___
histplot(60,X) // tracé de l'histogramme

t = linspace(-8,8)
densite = exp(-t) ./ (1+exp(-t)).^2
plot(t,densite) // tracé de la densité 
