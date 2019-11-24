#1. Uzywajac danych cars narysuj wykres rozrzutu, gdzie pierwsza zmienna to predkosc,
#a druga to droga hamowania. Dopasuj do tego prosta regresji i narysuj ja na wykresie.
#Spróbuj dopasowac i narysowac funkcje kwadratowa.

?cars
cars
?plot
?abline



cor.test(~ dist + speed, data = cars)
model.lm <- lm(dist~speed, data = cars)
coeff <-coefficients(model.lm)
eq <- paste0("y = ", round(coeff[2],1), "*x ", round(coeff[1],1))
plot(dist ~ speed, data = cars, pch = 20, main=eq)
abline(model.lm, lwd = 2, col = 'red')