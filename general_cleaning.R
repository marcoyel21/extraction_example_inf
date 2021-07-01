
#cargo librerias necesarias
library(readr)
library(dplyr)

#Creo la tabla que necesito
data<-read.delim("general_raw.txt",header = F)
data<-matrix(data$V1,ncol = (nrow(data)/9), nrow= 9)
data<-as.data.frame(t(data))
head_names<-c("Fondo","Calificación", "Mínimo de inversión",
              "Diario","Semanal","Acum. Mes","Acum. Año","1 Año","Precio")
colnames(data)<-head_names
data<-data %>% mutate("Tipo de Fondo"="Fondo de deuda Deuda C.P. P.F.")
write_csv(data,"general_funds_info.csv")
