#P(x=1) d quanto é igual
dbinom(1,5,0.1)


#P(X<=2) p quando menor ou igual
pbinom(2,5,0.1)


#05 
#a
dbinom(0,10,0.1)

#b
#menor que 3 não pode ser 3 duh
pbinom(2,10,0.1)

#c tem que fazer complementar

1-dbinom(0,10,0.1) #???

#d
dbinom(5,10,0.1)

#e
#E(x)= n*p   10*0.1
#V(X)=n*p(1-p)
10*0.1*0.9
sqrt(0.9)

#distribuiçao poisson
#p(x=0)
dpois(0,1)
#p(x>1=) = 1-p(x=0)
1-dpois(0,1)
#p(2<=x<=4)
ppois(4,1)- ppois(2,1)


dbinom(1,5,0.33)

1-pbinom(0,5,0.33)

#dbinom(3,500,0.002)
#ppois(x(p=x),lambda)

ppois(3,2.5)


#20 a) modeno binomial, parametro (Ntentativas,ProbabilidadeSucesso)

#b)
1-pbinom(3,13,0.2)

#c requer esperança   E(x)=n*p

13*0.2
#+-=3

#varianca v(x) = N*p*(1-p)
13*0.2*0*8

#DesvioPadrao=sqrt(variança)
#+-=1

#|----------3,0----------|
#      |         |    
#   E(x)-DP     E(x)+DP
#     2           4
#são os valores mais provaveis



#21
ppois(0,4)

1-ppois(2,4)

ppois(0,2.5)
#p/80 80*0,082 =+- 7dias



