cellcounts <- read.csv('data/2024KPMP_CellNumber_Subclassl1.csv', row.names = 1)
names(cellcounts) <- c('cluster','participant_id','Freq')

counts <- read.csv('data/2024KPMP_Psuedobulk_Subclassl1.csv', row.names = 1)
subcounts <- counts[grep("IMM",rownames(counts)), ]
rownames(subcounts) <- gsub("IMM_","", rownames(subcounts))


meta <- readRDS('data/simplified_KPMP_clinical_and_biomarker_data.rds')

# outcome: gene expression
# predictor: PFAS (continuous)
# covariates: ACR, disease type




require(DESeq2)
pheno$timepoint <- factor(pheno$timepoint)
pheno$group <- factor(pheno$group, levels = c('SC','MVS','SVS','EC','SS'))

ind <- which(pheno$group == 'EC' | pheno$mmp8 == 'MMP8-')
ds <- DESeqDataSetFromMatrix(countData = counts[,ind],
                             colData = pheno[ind,],
                             design= ~group)
res <- DESeq(ds)

deseq <- results(res, alpha = .05, name = 'group_SS_vs_EC')

