#EXTRINSIC

#distribuční funkce pomocí histogramu
hist(extrinsic, prob=T, breaks=8, main="Histogram - extrinsic")

#distribuční funkce pomocí empirické distribuční funkce
plot(ecdf(extrinsic), main="Empirická distribuční funkce - extrinsic")

#hustota
plot(density(extrinsic),  main="Hustota - extrinsic")

#-------------------------------------------------

#INTRINSIC

#distribuční funkce pomocí histogramu
hist(intrinsic, prob=T, breaks=8, main="Histogram - intrinsic")

#distribuční funkce pomocí empirické distribuční funkce
plot(ecdf(intrinsic), main="Empirická distribuční funkce - intrinsic")

#hustota
plot(density(intrinsic),  main="Hustota - intrinsic")