#czynnikowy powinien być typ kredytu
id <- c(1,2,3)
imie <- c("Janusz", "Andrzej", "Karina")
nazwisko <- c("Pawlak", "Ziemniak", "Blokowska")
k_kredytu <- c(90000,20000,300000)
typ_kredytu <- factor(c("hipoteczny", "gotowkowy", "jakis_inny"))
zarobki <- c(1500,2500, 3500)
  
kredytobiorcy_df <- data.frame(id, imie, nazwisko, k_kredytu, typ_kredytu, zarobki)
kredytobiorcy_df

typeof(typ_kredytu)

subset(kredytobiorcy_df, subset = (zarobki*12) < k_kredytu )