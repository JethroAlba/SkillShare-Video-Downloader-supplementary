# This is an additional script for deleting .m3u8 files after converting to a different format
# This is particularly useful when downloading and converting several SkillShare courses 
# Note: make sure to set the created directory (directory containing folders which contains the .m3u8 files) as your working directory



folder<-list.files()
for (j in folder){
  setwd(j)
  files3<-list.files()
  to.delete <- grep("m3u8",files3)
  file.remove(files3[to.delete])
  setwd("..")
}
