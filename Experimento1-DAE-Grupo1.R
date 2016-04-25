
# Escolha das amostras dos papeis
set.seed(30)
sample.int(120,5,replace=FALSE)
# [1] 12 59 43 50 35
set.seed(30)
sample.int(60,5,replace=FALSE)
# [1]  6 29 22 24 17
set.seed(30)
sample.int(50,5,replace=FALSE)
# [1]  5 24 18 20 14
set.seed(13)
sample.int(60,5,replace=FALSE)
# [1] 43 15 23  6 54

marcas <- factor(rep(
  c("Snob", "Coquetel", "Stylus", "Maxim"), each = 5))
delta.peso <- c(6.4,6.4,6.1,6.1,6.5,6.9,
                7.3,8,7.3,7.1,5.7,6.4,7.1,6.8,7.5,7.5,6.8,7.2,7.6,7.2)
dados <- data.frame(peso = delta.peso, marcas)

attach(dados)

tapply(peso,marcas,mean)
tapply(peso,marcas,sd)

anova.papeis <- aov(peso~marcas)
summary(anova.papeis)
predict(anova.papeis)

require("randtests")

runs.test(residuals(anova.papeis), plot = T)
