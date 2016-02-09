data1 <- data.frame() # matrix(nrow=1, ncol=3)
names(data1[,1:3]) <- c("ID","Region","Reading")

addRecord <- function(df,key_Increment=TRUE) {
        key_Increment <- key_Increment
        keepGoing=TRUE
        colNames <- names(df)
        colLength <- length(colNames)
        
                while(keepGoing==TRUE){
                        enterRowNum <- nrow(df)+1
                        
                                for(i in 1:colLength){
                                                if(key_Increment==TRUE & i==1){
                                                        df[enterRowNum,i] <- df[enterRowNum-1,1]+1
                                                }
                                                else { 
                                                        thisValue <- readline(prompt= paste0("Enter value for row ",enterRowNum, ", variable ",names(df[,i])))
                                                        df[enterRowNum,i] <- thisValue
                                                }        
                                }
                        
                        goOrStop <- readline(prompt = paste0("Keep going? (Y/N) :"))
                                if(goOrStop!="Y") {
                                        break
                                }
                }
        return(df)
}

data1 <- addRecord(data1)

