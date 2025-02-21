cellcounts <- read.csv('data/2024KPMP_CellNumber_Subclassl1.csv', row.names = 1)
names(cellcounts) <- c('cluster','participant_id','Freq')

counts <- read.csv('data/2024KPMP_Psuedobulk_Subclassl1.csv', row.names = 1)

meta <- readRDS('data/simplified_KPMP_clinical_and_biomarker_data.rds')

# outcome: gene expression
# predictor: PFAS (continuous)
# covariates: ACR, disease type



