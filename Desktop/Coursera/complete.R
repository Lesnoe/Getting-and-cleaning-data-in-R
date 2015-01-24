complete <- function(directory,id = 1:332) {
        dir <- list.files("specdata", full.names=TRUE )
        Nobs_fl <- vector()
        
        
        
        
        
        for(i in id){
                myDATA <-read.csv(dir[i])
                count <-sum(complete.cases(myDATA))
                
                
                Nobs_fl<-c(Nobs_fl,count)
                
        }   
        data <- data.frame(id=id,nobs = Nobs_fl)
        data
}

