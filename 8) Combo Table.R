ComboTable <- cbind(TTnew$PassengerId, 
                    TTnew$Survived, 
                    TTnew$Pclass, 
                    TTnew$SexIdenCode, 
                    TTnew$Family, 
                    TTnew$Fare,
                    TTnew$EmbarkedCode
                    )

colnames (ComboTable) <- c ("PassengerId",
                            "Survived",
                            "Pclass",
                            "SexIdenCode",
                            "Family",
                            "Fare",
                            "EmbarkedCode")
ComboTableDF <- data.frame(ComboTable)
