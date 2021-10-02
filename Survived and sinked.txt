PclassNOneS <- TitanicTrain [TitanicTrain$Pclass == 1 
                             & TitanicTrain$Survived == 1, ]
PclassNTwoS <- TitanicTrain [TitanicTrain$Pclass == 2 
                             & TitanicTrain$Survived == 1, ] 
PclassNThreeS <- TitanicTrain [TitanicTrain$Pclass == 3 
                               & TitanicTrain$Survived == 1, ]

PerPcNOneS <- (nrow (PclassNOneS) / 
                 nrow (TitanicTrain [TitanicTrain$Survived == 1, ])) * 100
PerPcNTwoS <- (nrow (PclassNTwoS) /
                 nrow (TitanicTrain [TitanicTrain$Survived == 1, ])) * 100
PerPcNThreeS <- (nrow (PclassNThreeS) /
                   nrow (TitanicTrain [TitanicTrain$Survived == 1, ])) * 100

PclassNOneNoS <- TitanicTrain [TitanicTrain$Pclass == 1 
                               & TitanicTrain$Survived == 0, ]
PclassNTwoNoS <- TitanicTrain [TitanicTrain$Pclass == 2 
                               & TitanicTrain$Survived == 0, ]
PclassNThreeNoS <- TitanicTrain [TitanicTrain$Pclass == 3 
                                 & TitanicTrain$Survived == 0, ]

PerPcNOneNoS <- (nrow (PclassNOneNoS) /
                   nrow (TitanicTrain [TitanicTrain$Survived == 0, ])) * 100
PerPcNTwoNoS <- (nrow (PclassNTwoNoS) /
                   nrow (TitanicTrain [TitanicTrain$Survived == 0, ])) * 100
PerPcNThreeNoS <- (nrow (PclassNThreeNoS) /
                     nrow (TitanicTrain [TitanicTrain$Survived == 0, ])) * 100

PPcNOneData <- data.frame(
  name = c ("Survived (Class 1)", "Sinking (Class 1)"),
  value = c (PerPcNOneS, PerPcNOneNoS)
)
ggplot (PPcNOneData, aes (x = name, y = value)) + 
  geom_bar(stat = "identity")

PPcNTwoData <- data.frame(
  name = c ("Survived (Class 2)", "Sinking (Class 2)"),
  value = c (PerPcNTwoS, PerPcNTwoNoS)
)
ggplot (PPcNTwoData, aes (x = name, y = value)) +
  geom_bar(stat = "identity")

PPcNThreeData <- data.frame(
  name = c ("Survived (Class 3)", "Sinking (Class 3)"),
  value = c (PerPcNThreeS, PerPcNThreeNoS)
)
ggplot (PPcNThreeData, aes (x = name, y = value)) +
  geom_bar(stat = "identity")
