#EXTRINSIC

#mý
meanEx # 15.73913

#sigma
sigmaEx <- sd(extrinsic) # 5.252596 
sigmaEx^2 # 27.58976

#lambda
lambdaEx <- 1/meanEx # 0.06353591

#m1
meanEx # 15.73913

#m2
m2Ex <- mean(extrinsic^2) # 274.1104

#a
aEx <- meanEx - sqrt(3*(m2Ex - meanEx^2)) # 6.841343

#b
bEx <- meanEx + sqrt(3*(m2Ex - meanEx^2)) # 24.63692


#hranice
minEx <- 0 
maxEx <- 30

#histogram
hist(extrinsic, prob=T, breaks=8, xlim = range(minEx, maxEx), main="Histogram - extrinsic")

#
by <- 0.2
vectorEx <- seq(minEx, maxEx, by)

#normální rozdělení
yNormEx <- dnorm(vectorEx, mean=meanEx, sd=sigmaEx)
lines(vectorEx, yNormEx, col="red", lwd=2)

#exponenciální rozdělení
yExpEx <- dexp(vectorEx, lambdaEx)
lines(vectorEx, yExpEx, col="green", lwd=2)
          
#rovnoměrné rozdělení
yUnifEx <- dunif(vectorEx, aEx, bEx)

firstZeroesCnt <- match(max(yUnifEx), yUnifEx) - 1
maxNumsCnt <- length(yUnifEx) - match(max(yUnifEx), rev(yUnifEx)) + 1 - firstZeroesCnt
lastZeroesCnt <- length(yUnifEx) - firstZeroesCnt - maxNumsCnt 

line1 <- rep(0, firstZeroesCnt)
line2 <- rep(max(yUnifEx), maxNumsCnt)
line3 <- rep(0, lastZeroesCnt)

length(seq((firstZeroesCnt - 1)*by + by, (firstZeroesCnt + maxNumsCnt - 1)*by, by))
length(line2)

lines(seq(0, (firstZeroesCnt - 1)*by, by), line1, col="blue", lwd=2)
lines(seq((firstZeroesCnt - 1)*by + by, (firstZeroesCnt + maxNumsCnt - 1)*by, by), line2, col="blue", lwd=2)
lines(seq((firstZeroesCnt + maxNumsCnt - 1)*by + by, (firstZeroesCnt + maxNumsCnt + lastZeroesCnt - 1)*by, by), line3, col="blue", lwd=2)


#legenda
legend("topright", legend=c("Normální r.", "Exponenciální r.", "Rovnoměrné r."),
       col=c("red", "green", "blue"), lwd=2, cex=0.6)

#-------------------------------------------------

#INTRINSIC

#mý
meanIn # 19.88333

#sigma
sigmaIn <- sd(intrinsic) # 4.439513 
sigmaIn^2 # 19.70928


#lambda
lambdaIn <- 1/meanIn # 0.05029338

#m1
meanIn # 19.88333

#m2
m2In <- mean(intrinsic^2) # 414.235

#a
aIn <- meanIn - sqrt(3*(m2In - meanIn^2)) # 12.35577

#b
bIn <- meanIn + sqrt(3*(m2In - meanIn^2)) # 27.41089



#hranice
minIn <- 0
maxIn <- 35

#histogram
hist(intrinsic, prob=T, breaks=8, xlim = range(minIn, maxIn), main="Histogram - intrinsic")

#
by <- 0.2
vectorIn <- seq(minIn, maxIn, by)

#normální rozdělení
yNormIn <- dnorm(vectorIn, mean=meanIn, sd=sigmaIn)
lines(vectorIn, yNormIn, col="red", lwd=2)

#exponenciální rozdělení
yExpIn <- dexp(vectorIn, lambdaIn)
lines(vectorIn, yExpIn, col="green", lwd=2)

#rovnoměrné rozdělení
yUnifIn <- dunif(vectorIn, aIn, bIn)

firstZeroesCnt <- match(max(yUnifIn), yUnifIn) - 1
maxNumsCnt <- length(yUnifIn) - match(max(yUnifIn), rev(yUnifIn)) + 1 - firstZeroesCnt
lastZeroesCnt <- length(yUnifIn) - firstZeroesCnt - maxNumsCnt 

line1 <- rep(0, firstZeroesCnt)
line2 <- rep(max(yUnifIn), maxNumsCnt)
line3 <- rep(0, lastZeroesCnt)

length(seq((firstZeroesCnt - 1)*by + by, (firstZeroesCnt + maxNumsCnt - 1)*by, by))
length(line2)

lines(seq(0, (firstZeroesCnt - 1)*by, by), line1, col="blue", lwd=2)
lines(seq((firstZeroesCnt - 1)*by + by, (firstZeroesCnt + maxNumsCnt - 1)*by, by), line2, col="blue", lwd=2)
lines(seq((firstZeroesCnt + maxNumsCnt - 1)*by + by, (firstZeroesCnt + maxNumsCnt + lastZeroesCnt - 1)*by, by), line3, col="blue", lwd=2)


#legenda
legend("topright", legend=c("Normální r.", "Exponenciální r.", "Rovnoměrné r."),
       col=c("red", "green", "blue"), lwd=2, cex=0.6)