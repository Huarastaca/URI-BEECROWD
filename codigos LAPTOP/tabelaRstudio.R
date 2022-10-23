data.frame(Base)
x = table(Base$`5. Tipo de Residência`)
x
y= table(Base$`12. Tempo que Conhece o Parque`)
y

w= prop.table(y)
w

round(w, 2)

plot(w)

barplot(table(Base$`7. Idade (Anos)`), xlab="tipo de residencia", ylab="quantidade", ylim=c(0,80),col=c("green","yellow","red"), main="tipo de residencia")

pie(table(Base$`5. Tipo de Residência`), col=c("green","yellow","blue"), main= "grafico pizza")


round(mean(Base$`3. Tempo Mora na Localidade`))

median(Base$`3. Tempo Mora na Localidade`)

getmode <- function(v) {
  uniqv <- unique(v)
  uniqv[which.max(tabulate(match(v,uniqv)))]
}

getmode(Base$`3. Tempo Mora na Localidade`)

boxplot(Base$`3. Tempo Mora na Localidade`)

margin.table(y , 2)

vec <- c(50,50,60,60,60,60,60,60,60,60,60,60,60,60,60,60,60,70,70,70,70,70,70,70,70,70,70,70,70,70,70,70,70,70,70,70,70,70,70,70,70,70,70,70,70,70,70,70,70,70,70,70,70,70,70,70,70,70,70,70,70,70,70,70,70,80,80,80,80,80,80,80,80,80,80,90,90,90)

var(Base$`3. Tempo Mora na Localidade`)


s=sd(Base$`3. Tempo Mora na Localidade`)
s

m=mean(Base$`3. Tempo Mora na Localidade`)
m

CV = (s/m)*100
CV
