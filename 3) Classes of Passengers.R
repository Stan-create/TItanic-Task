PclassNOne <- TitanicTrain [TitanicTrain$Pclass == 1, ]
PclassNTwo <- TitanicTrain [TitanicTrain$Pclass == 2, ]
PclassNThree <- TitanicTrain [TitanicTrain$Pclass == 3, ]

PerTTPclassOne <- (nrow (PclassNOne) / nrow (TitanicTrain)) * 100
PerTTPclassTwo <- (nrow (PclassNTwo) / nrow (TitanicTrain)) * 100
PerTTpClassThree <- (nrow (PclassNThree) / nrow (TitanicTrain)) * 100

PTTPcOne <- PerTTPclassOne
PTTPcTwo<- PerTTPclassTwo
PTTPcThree<- PerTTpClassThree

ClassData <- data.frame(
  name = c ("Class1", "Class2", "Class3"),
  value = c (PTTPcOne, PTTPcTwo, PTTPcThree)
)
ggplot (ClassData, aes (x = name , y = value)) +
  geom_bar(stat = "identity")
