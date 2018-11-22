#delkaracja macierzy
m1 = rbind( c(4,2,9,6,1), c(3,4,0,7,6), c(1,5,1,8,4), c(6,7,2,9,3))
m2 = rbind(c(2,9,1,4,7), c(6,4,3,5,2), c(3,1,0,0,1), c(2,4,1,2,3))
#wyliczenie odległości
odl = sqrt(rowSums((m1-m2)^2))
odl
#dodanie po jednej kolumnie do istniejących macierzy
m1 = cbind(m1, c(3,5,0,4))
m2 = cbind(m2, c(3,1,8,5))
#ponowne wyświetlenie odległości
odl2 = sqrt(rowSums((m1-m2)^2))
odl2