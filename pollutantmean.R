## Eduardo Geralde Neto

pollutantmean <- function(directory,pollutant,id=1:332){
        files <- dir(directory)
        data_frame <<- do.call("rbind",lapply(files[id], function(x) read.csv(paste(directory,"/",x,sep = ''),stringsAsFactors = FALSE)))
        data_clean <<- data_frame[complete.cases(data_frame),]
        mean_pollut <<- data_clean[,pollutant]
        mean(mean_pollut)
}