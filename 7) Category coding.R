SexIden <- as.factor (TitanicTrain$Sex)
SexIdenCode <- as.numeric(SexIden)

EmbarkedIden <- as.factor(TitanicTrain$Embarked)
EmbarkedCode <- as.numeric(EmbarkedIden)

TTnew <- cbind(TitanicTrain, SexIdenCode, EmbarkedCode)
