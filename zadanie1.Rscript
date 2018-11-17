#R version 3.3.2 
#Przypisanie wartości oraz wyliczonego BMI do wektorów
waga <- c(87, 76, 95, 58, 61, 65, 100, 112)
wzrost <- c(180, 181, 173, 165, 178, 160, 193, 199)
BMI <- c(waga/((wzrost/100)^2))

#Załadowanie wektorów do macierzy z warunkiem, że tylko te pozycje, dla których BMI jest większe niż 25
macierz = rbind(waga[which(BMI>25)], wzrost[which(BMI>25)], BMI[BMI>25])
macierz
