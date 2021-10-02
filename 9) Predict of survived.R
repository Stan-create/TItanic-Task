RF <- randomForest(Survived ~ Pclass + SexIdenCode + Family + Fare + EmbarkedCode, ComboTableDF)
RFresult <- predict(RF, ComboTableDF)
AndResult <- data.frame(round(RFresult))
colnames (AndResult) <- c ("RFresult")
