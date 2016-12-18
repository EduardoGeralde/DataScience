complete <- function(directory,id=1:332){
        files <<- dir(directory)
        data_frame <<- do.call("rbind",lapply(files[id], 
                function(x) read.csv(paste(directory,"/",x,sep = ''),
                        stringsAsFactors = FALSE)))
        data_clean <<- data_frame[complete.cases(data_frame),]
        num_times <<- aggregate(nitrate~ID,data_clean,length)
        names(num_times)[2]<-'nobs'
        num_times
}