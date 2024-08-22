K <- 14 # 14.1.
L <- 8 # Potomská
M <- ((K+L)*47)%%(11)+1 # 1

M

library(Sleuth2)
path <- "C:/Users/Aneta/Desktop/ukolPST/my_data.csv"
write.table(case0101, path, row.names=F, sep=";", dec=",")