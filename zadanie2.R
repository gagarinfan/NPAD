Pobyt <- c(12,8,9,12,14,15)
Cena <- c(4100, 3600, 3200, 10800, 7600, 3800)
cenzaZaDzien <-c(Cena/Pobyt)

macierz = rbind(Pobyt, Cena, cenzaZaDzien)
colnames(macierz) <- c("Hiszpania","Francja", "Włochy", "Dominikana", "Peru", "Grecja")
macierz

najtanszyKraj = min(tail(macierz, n=1))
k <- arrayInd(najtanszyKraj, dim(macierz))
najlepszaOferta = macierz[,colnames(macierz)[k[,2]], drop=FALSE]
najlepszaOferta
