SS.downloader<- function(delete = "no"){
  
  folders<-list.files()
  
  for (i in folders){
    setwd(i)
    
    files<-list.files()
    files
    link<- character()
    
    for (x in files){
      read<- readLines(x)
      store<-read[length(read)]
      link<-c(link,store)
    }
    
    dir.create("downloads")
    setwd("downloads")
    
    for (j in 1:length(link)){
      download.file(link[j],destfile = files[j])
    }
    setwd("..")
    setwd("..")
  }
  
  if (delete == "yes"){
    
    folders<-list.files()
    
    for (x in folders){
      setwd(x)
      files<-list.files()
      len<-length(files)-1
      file.remove(files[1:len])
      wd<-getwd()
      
      setwd("down")
      files2<-list.files()
      file.copy(files2,wd)
      setwd("..")
      unlink("down",  recursive = T)
      setwd("..")
    } 
    
    if (delete == "no"){
      next
    }
  }
}
