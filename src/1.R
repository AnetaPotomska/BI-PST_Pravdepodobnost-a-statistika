path <- "C:/Users/Aneta/Desktop/ukolPST/my_data.csv"
dataTable <- read.table(path, header=TRUE, sep=";")
dataTable
#-------------------------------------------------

#EXTRINSIC

extrinsic <- as.numeric(gsub(",", ".", dataTable[which(dataTable$Treatment=='Extrinsic'), 1]))

#počet záznamů
cntEx <- length(extrinsic)

#střední hodnota
meanEx <- mean(extrinsic)

#rozptyl
varEx <- var(extrinsic)

#medián příslušného rozdělení
medianEx <- median(extrinsic)

#-------------------------------------------------

#INTRINSIC

intrinsic <- as.numeric(gsub(",", ".", dataTable[which(dataTable$Treatment=='Intrinsic'), 1]))

#počet záznamů
cntIn <- length(intrinsic)

#střední hodnota
meanIn <- mean(intrinsic)

#rozptyl
varIn <- var(intrinsic)

#medián příslušného rozdělení
medianIn <- median(intrinsic)
