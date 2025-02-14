

covar_names_fin <- c(
  "su_base_urine_protein_mg_d_l" ,
  "log_msd_urine_new_acr_mg_g",
  "msd_urine_new_acr_mg_g",
  "msd_urine_new_acr_category", 
  "msd_urine_urine_albumin_concentration_mg_d_l",
  "msd_urine_urine_creatinine_concentration_mg_d_l",
  "enrollment_category",
  "sex", "age_years_binned", "race",
  colnames(df_analysis%>% select(contains("imputed")))
)

# PFAS Names
pfas_names <- c("pfas_PFOA",
                "pfas_PFOS",
                "pfas_PFHxS")

# Kidney injury covariates
kidney_injury_covars <- c("sex", 
                          "age_years_binned", # modeled as a numeric variable to save df
                          "bc_plasma_e_gfr_cys_imputed", # may be able to drop this from models
                          "log_msd_urine_new_acr_mg_g",
                          "acute_chronic")
