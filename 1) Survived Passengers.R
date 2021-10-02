TTrainNull <- TitanicTrain [TitanicTrain$Survived == 0, ]
TTrainOne <- TitanicTrain [TitanicTrain$Survived == 1, ]
PercentageTTrainNull <- (nrow (TTrainNull) / nrow (TitanicTrain)) * 100
print (PercentageTTrainNull)
PercentageTTrainOne <- (nrow (TTrainOne) / nrow (TitanicTrain)) * 100
print (PercentageTTrainOne)

SSdata <- data.frame(
  name = c ("Sinking", "Survivor"),
  value = c (PercentageTTrainNull, PercentageTTrainOne)
)
ggplot (SSdata, aes(x = name, y = value)) +
  geom_bar(stat = "identity")
