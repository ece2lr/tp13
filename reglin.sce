N = 10^5
U = grand(1,N,"exp",1)
V = grand(1,N,"exp",1)
//U = rand(1,N)
//V = rand(1,N)
X = min(U,V) // + 2*U
Y = max(U,V) // + 2*U

[a,b,sig] = reglin(X,Y)
//help reglin
//// --> coef dir, ord orig, écart type inexpliqué

x = linspace(0,max(X))

clf()
plot(X,Y)

// cosmétique nuage de points
c = gce().children
c.line_mode = "off"
c.mark_size = 5
c.mark_style = 0
c.mark_foreground = 13

plot(x,a*x+b)

// cosmétique droite de régression
c = gce().children
c.thickness=3

coef = 1 - sig^2/variance(Y)
title("coefficient de détermination " + string(floor(100*coef)) + "%","fontsize",5)
