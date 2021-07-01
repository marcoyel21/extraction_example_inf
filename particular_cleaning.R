#cargo librerias necesarias
library(readr)
library(dplyr)
# indico cuantos documentos son (5, 10 o 1000)
docs<-num
#Importo los datos que extraje

fondo<-read.delim("context_fondo.txt",header = F)
clave<-read.delim("clave.txt",header = F)
liquidez<-read.delim("liquidez.txt",header = F)
horario<-read.delim("horario.txt",header = F)
ren_bruto<-read.delim("ren_bruto.txt",header = F)
ren_neto<-read.delim("ren_neto.txt",header = F)
plazo_min<-read.delim("plazo_min.txt",header = F)


#Adecuo en un formato estandarizado los datos que extraje
#para columnas 
clave<-matrix(clave$V1,ncol = 1, nrow= docs) %>% as.data.frame() %>% rename(clave=V1)
liquidez<-matrix(liquidez$V1,ncol = 1, nrow= docs)%>% as.data.frame() %>% rename(liquidez=V1)
horario<-matrix(horario$V1,ncol = 1, nrow= docs)%>% as.data.frame()%>% rename(horario=V1)
plazo_min<-matrix(plazo_min$V1,ncol = 1, nrow= docs)%>% as.data.frame()%>% rename(plazo_min=V1)

#para matrices 
fondo<-t(matrix(fondo$V1,ncol = 5, nrow= docs)) %>% as.data.frame() %>% 
  rename(nombre=V1, sociedad_y_razon=V2, tipo=V3, clase= V4,plazo_categ=V5)
ren_bruto<-t(matrix(ren_bruto$V1,ncol = 5, nrow= docs))%>% as.data.frame() %>%
  rename(rend_anual_brut_ultmes=V1, rend_anual_brut_ult3mes=V2, rend_anual_brut_ult12mes=V3, rend_anual_brut_min= V4,rend_anual_brut_max=V5)
ren_neto<-t(matrix(ren_neto$V1,ncol = 5, nrow= docs))%>% as.data.frame() %>%
  rename(rend_anual_net_ultmes=V1, rend_anual_net_ult3mes=V2, rend_anual_net_ult12mes=V3, rend_anual_net_min= V4,rend_anual_net_max=V5)


#Creo la tabla que necesito
data<-data.frame(fondo,clave,liquidez,horario,ren_bruto,ren_neto,plazo_min)
write_csv(data,"fondos_particulares.csv")
