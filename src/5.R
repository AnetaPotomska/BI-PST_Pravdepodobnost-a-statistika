alpha <- 1 - 95/100 # 0.05
z <- qnorm(1 - alpha/2, mean=0, sd=1) # 1.959964


#EXTRINSIC

# neznám
LBoundEx <- meanEx - z * (sigmaEx/sqrt(cntEx))
RBoundEx <- meanEx + z * (sigmaEx/sqrt(cntEx))

cat("[", LBoundEx, ",", RBoundEx, "]") # [ 13.5925 , 17.88577 ]

# znám
tEx <- 2.074
LBoundEx <- meanEx - tEx * (sqrt(varEx)/sqrt(cntEx))
RBoundEx <- meanEx + tEx * (sqrt(varEx)/sqrt(cntEx))

cat("[", LBoundEx, ",", RBoundEx, "]") # [ 13.4676 , 18.01066 ]

#-------------------------------------------------

#INTRINSIC
cntIn
# neznám
LBoundIn <- meanIn - z * (sigmaIn/sqrt(cntIn))
RBoundIn <- meanIn + z * (sigmaIn/sqrt(cntIn))

cat("[", LBoundIn, ",", RBoundIn, "]") # [ 18.10719 , 21.65948 ]

# znám
tIn <- 2.069
LBoundIn <- meanIn - tIn * (sqrt(varIn)/sqrt(cntIn))
RBoundIn <- meanIn + tIn * (sqrt(varIn)/sqrt(cntIn))

cat("[", LBoundIn, ",", RBoundIn, "]") # [ 18.00838 , 21.75829 ]