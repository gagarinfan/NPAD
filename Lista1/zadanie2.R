Pobyt <- c(12,8,9,12,14,15)
Cena <- c(4100, 3600, 3200, 10800, 7600, 3800)
#Wyliczenie ceny za dzień
cenzaZaDzien <-c(Cena/Pobyt)
#załadowanie danych do macierzy
macierz = rbind(Pobyt, Cena, cenzaZaDzien)
#nazwanie kolumn
colnames(macierz) <- c("Hiszpania","Francja", "Włochy", "Dominikana", "Peru", "Grecja")
macierz

#znalezienie pozycji najtańszego kraju
najtanszyKraj = min(tail(macierz, n=1))
k <- arrayInd(najtanszyKraj, dim(macierz))
#zlokalizowanie kolumy i wylistowanie jej
najlepszaOferta = macierz[,colnames(macierz)[k[,2]], drop=FALSE]
najlepszaOferta
