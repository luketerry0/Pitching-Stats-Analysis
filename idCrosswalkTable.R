idCrosswalkTable <- function(){
  #a function which creates a table that simply has all lahman IDS with their cooresponding MLB IDS

  #import relevant data
  allpp <- read.csv("data/people.csv")
  pros <- subset(allpp, mlb_played_first != "NA", select = c("key_retro", "key_mlbam"))
  lmpp <- Lahman::People
  
  #initialize dataframe
  df <- data.frame(c(),c())

    for (p in lmpp$retroID){
    #iterate over the lahman database and find each retrosheet ID
    df <- rbind(df, c(pp[which(pp$retroID == p),1], pros[which(pros$key_retro == p),2]))
  }
  
  colnames(df) <- c("LahmanID", "MlbID")
  df

}
