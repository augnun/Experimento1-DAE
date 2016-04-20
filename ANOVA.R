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