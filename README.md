En este repositorio se organizan los scripts, base de datos y presentaciones relativos al proceso de reclutamiento de INFOSEL. 
El contenido es el siguiente.

Archivos:
respuesta.Rmd<-Archivo en rmd que compila todos los codigos para crear una presentación
respuesta.html<-Archivo html con base en el archivo anterior

particular_extraction.zh<- Script en sh para extracción de información de fondos en particular
general_extraction.zh<- Script en sh para extracción de información de fondos en general

particular_cleaning.R<- Script en R para limpieza de información de fondos en particular
general_cleaning.R<- Script en R para limpieza de información de fondos en general

fondos_particulares.csv<-base de datos adecuable a cualquier fondo que indiquemos queremos en el script (con base en sus fichas de información)
fondos_generales.csv<-base de datos que toma sus valores de la actualización diaria de información de fondos por parte de BBVA con base en el archivo denominado Anaquel con Rendimientos Históricos del Día Actual
