#EXTRINSIC

generatedEx <- rnorm(100, meanEx, sigmaEx)
hist(generatedEx, prob=T, breaks=8, main="Histogram - extrinsic")
lines(vectorEx, yNormEx, col="red", lwd=2)

#-------------------------------------------------

#INTRINSIC

generatedIn <- rnorm(100, meanIn, sigmaIn)
hist(generatedIn, prob=T, breaks=8, main="Histogram - intrinsic")
lines(vectorIn, yNormIn, col="red", lwd=2)