j = 9
n0=0
n1=1
nNext=0
#inicjacja dwóch pierwszych argumentów w wektorze
wektor<-c(n0,n1)
for(i in 0:j) {
  if(i>=2){
    nNext=n0+n1
    n0=n1
    n1=nNext
    #dopisanie do wektora kolejnego elementu
    wektor <-c(wektor, nNext)
  }
}
wektor