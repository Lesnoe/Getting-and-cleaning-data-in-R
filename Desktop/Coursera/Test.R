
r <-function(directory,threshold = 0  ){
        data_set<-list.files("specdata",full.names =TRUE)
        final<-c()
        
        
        
        
        
        for (i in 1:332) {
                y<- read.csv(data_set[i])
                com<-complete.cases(y)
                x <-sum(com)
                
                if  ( x  > threshold){
                        
                        sulfate <- c(y[,"sulfate"])
                        nitrate <- c(y[,"nitrate"])
                        
                        
                        cr<-(cor(  sulfate ,nitrate, use ="complete.obs"))
                        final <-rbind(final,cr)
                        
                }   
                if  (x  < threshold){
                        print(0)   
                }
                
        }
        final
}






