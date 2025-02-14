cellcounts <- read.csv('data/2024KPMP_CellNumber_Subclassl1.csv', row.names = 1)
names(cellcounts) <- c('cluster','sample','Freq')

counts <- read.csv('data/2024KPMP_Psuedobulk_Subclassl1.csv', row.names = 1)

# outcome: gene expression
# predictor: PFAS (continuous)
# covariates: ACR, disease type



