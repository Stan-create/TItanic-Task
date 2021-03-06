PassM <- nrow (TitanicTrain [TitanicTrain$Sex == 'male', ])
PassF <- nrow (TitanicTrain [TitanicTrain$Sex == 'female', ])

PassMPerc <- (PassM / nrow (TitanicTrain)) * 100
PassFPerc <- (PassF / nrow (TitanicTrain)) * 100

SexPerc <- data.frame(
  name = c ("Male", "Female"),
  value = c (PassMPerc, PassFPerc)
)
ggplot (SexPerc, aes (x = name, y = value)) +
  geom_bar (stat = "identity")


PMServ <- nrow (TitanicTrain [TitanicTrain$Sex == 'male' 
                              & TitanicTrain$Survived == 1, ])
PFServ <- nrow (TitanicTrain [TitanicTrain$Sex == 'female' 
                              & TitanicTrain$Survived == 1, ])
PercPMServ <- (PMServ / nrow (TTrainOne)) * 100
PercPFServ <- (PFServ / nrow (TTrainOne)) * 100

PassSexServ <- data.frame (
  name = c ("Male", "Female"),
  value = c (PercPMServ, PercPFServ)
)
ggplot(PassSexServ, aes (x = name, y = value)) +
  geom_bar (stat = "identity")

PMSink <- nrow (TitanicTrain [TitanicTrain$Sex == 'male' 
                              & TitanicTrain$Survived == 0, ])
PFSink <- nrow (TitanicTrain [TitanicTrain$Sex == 'female' 
                              & TitanicTrain$Survived == 0, ])
PercPMSink <- (PMSink / nrow (TTrainNull)) * 100
PercPFSink <- (PFSink / nrow (TTrainNull)) * 100

PassSexSink <- data.frame(
  name = c ("Male", "Female"),
  value = c (PercPMSink, PercPFSink)
)
ggplot(PassSexSink, aes(x = name, y = value)) +
  geom_bar(stat = "identity")
