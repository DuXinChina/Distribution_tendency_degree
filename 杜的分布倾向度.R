
D=function(tan,seq_)
{
  N=seq_
  d=N
  for(i in 1:length(N)){d[i]=length(subset(tan,tan<N[i+1] & tan>=N[i]))}
  N=d
  weightN=N[-length(N)]
  for (i in 1:length(weightN)) {
    weightN[i] = N[i] * i
  }
  D = sum(weightN)/(length(tan) * (length(weightN)+ 1)/2)
  D=round(D,3)
  D  
}
seq_=c(-Inf,1.5,2.5,Inf)
tan=c(1,1,1,2,2,2,2,3,3,3,3,3,3,3,3,3,3,3,3)
D(tan,seq_)
tan=c(1,1,1,1,1,1,1,1,1,1,1,1,2,2,2,2,3,3,3)
D(tan,seq_)