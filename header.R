library(sf)
library(rgdal)
library(dplyr)
library(plyr)
library(readr)
library(raster)
library(bcmaps)
library(bcdata)
library(fasterize)
library(tidyr)
library(rio)
library(WriteXLS)
library(ggplot2)
library(readxl)
library(stringr)
library(mapview)
library(gdata)
library(reshape2)
library(exactextractr)
library(plotKML)
library(purrr)
library(lubridate)
library(tibble)
library(janitor)
library(magrittr)
library(igraph)
library(rgeos)
library(rlist)


MonitoringSeason<-"2019"

OutDir <- 'out'
dataOutDir <- file.path(OutDir,'data')
StrataOutDir <- file.path(dataOutDir,'Strata')
figsOutDir <- file.path(OutDir,'figures')
SpatialDir <- file.path('data','spatial')
DataDir <- file.path('data')
spatialOutDir <- file.path(OutDir,'spatial')

WetspatialDir <- file.path('../../../Projects/ESI/Wetlands/Assessment/Data')
#WetspatialDir <- file.path('/Users/darkbabine/Sync/Wetland/Tier 2/Data')
SyncDir <- file.path('/Users/darkbabine/Sync')
WetSampSpatialDir <- file.path('../Wetland_SkeenaESI_Monitoring/out/spatial')



GBdataOutDir <- file.path('../GB_Data/out/data')
GBPDir <-file.path('../GB_Data/data/Population/Bear_Density_2018')
ESIDir <- file.path('/Users/darkbabine/Dropbox (BVRC)/Projects/ESI')
RoadDir <- file.path('/Users/darkbabine/Dropbox (BVRC)/_dev/Biodiversity/bc-raster-roads/data')
ESIData <- file.path('/Users/darkbabine/Desktop')
GISDir <- file.path('/Users/darkbabine/Dropbox (BVRC)/Library/GISFiles/BC/Shapefiles')
GISSkDir <- file.path('/Users/darkbabine/Dropbox (BVRC)/Library/GISFiles/Skeena/Shapefiles')
FREPDir<-file.path('/Users/darkbabine/Sync/Wetland/Tier 2/Data/FREP')
Tier2Dir<-file.path('/Users/darkbabine/Sync/Wetland/Tier 2/Data')
CGLDir<-file.path('/Users/darkbabine//Dropbox (BVRC)/Projects/UBM_LUP/data/CGL_Wetlands')


dir.create(file.path(OutDir), showWarnings = FALSE)
dir.create(file.path(dataOutDir), showWarnings = FALSE)
dir.create(file.path(StrataOutDir), showWarnings = FALSE)
dir.create(file.path(spatialOutDir), showWarnings = FALSE)
dir.create(DataDir, showWarnings = FALSE)
dir.create(figsOutDir, showWarnings = FALSE)
dir.create("tmp", showWarnings = FALSE)

#Location of Monitoring spreadsheet
WetMonDir<-file.path('../../../Projects/ESI/Wetlands/Monitoring/2019FieldData')
#WetMonDir<-file.path('data')
#WetspatialDir <- file.path('data')
#system(paste('ls ',WetMonDir,sep=''))

