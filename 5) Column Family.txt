TitanicTrain$Family <- TitanicTrain$Parch + TitanicTrain$SibSp
Is_Alone <- TitanicTrain [TitanicTrain$Family == 0, ]
MaxFam <- max(TitanicTrain$Family, na.rm = TRUE)
MinFam <- min(TitanicTrain$Family, na.rm = TRUE)
