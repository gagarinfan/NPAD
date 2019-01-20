#czynnikowy powinien być typ kredytu
id <- c(1,2,3,4,5,6,7,8,9)
imie <- c("Janusz", "Andrzej", "Karina", "Xavier", "Balbina", "Json", "R", "Py", "Go")
nazwisko <- c("Pawlak", "Ziemniak", "Blokowska", "Eifel", "Gaska", "Jamlowski", "Studio", "Charm", "Land")
wiek <- c(20,30,40, 25, 35, 45, 23, 44,32)
staz <- c(1,2,3,4,5,6,7,8,9)
stanowisko <- c("Programista", "DevOps", "Architekt", "Programista", "DevOps", "Architekt", "Programista", "DevOps", "Architekt")
miasto <- c("Warszawa", "Poznan", "Wroclaw", "Warszawa", "Poznan", "Wroclaw", "Opole", "Opole", "Opole")
pensja <- c(1500,2500, 3700, 7500, 5500, 6500, 11000, 12999, 30000)

pracownicy_df = data.frame(id, imie, nazwisko, wiek, staz, stanowisko, miasto, pensja)
pracownicy_df

#a
subset(pracownicy_df, subset = pensja > 6000 & miasto == "Warszawa", select = c(imie,nazwisko, stanowisko))

#b
sum(as.numeric((subset(pracownicy_df, subset = miasto == "Wroclaw"))$pensja))

#c
l_programistow = nrow(subset(pracownicy_df,subset = stanowisko == "Programista"))
suma = sum(as.numeric((subset(pracownicy_df, subset = stanowisko == "Programista"))$pensja))
srednia = suma/l_programistow
srednia

#d
min((subset(pracownicy_df, subset = miasto == "Poznan"))$pensja)

#e
opolanie <- t(subset(pracownicy_df, subset = miasto == "Opole", select = pensja)[,1])
labelka <- t(subset(pracownicy_df, subset = miasto == "Opole", select = nazwisko)[,1])
legenda <- t(subset(pracownicy_df, subset = miasto == "Opole", select = nazwisko))

lbl = paste(opolanie, sep=" ")
pie(opolanie, labels = lbl, col=rainbow(length(lbl)), main = "Wynagrodzenie w Opolu")
legend("topright", legenda, cex=0.4,fill=rainbow(length(opolanie)))
