pollutantmean <- function( directory,pollutant,id =1:332 ) {
        
        
        specdata <- list.files( "specdata", full.names=TRUE)
        dap <- data.frame()
        for(i in id) {
                dap <- rbind(dap,read.csv(specdata[i]))
        }
         sub_set <- dap[,pollutant]
        x <-  mean(sub_set,na.rm=TRUE)
        print(x)
}




