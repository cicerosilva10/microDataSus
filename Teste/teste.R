library("microdatasus")
library("tidyverse")

# Utilização ----

# A função fetch_datasus realiza o download dos dados. 
# Para o processamento, utilize a função apropriada de acodo com o Sistema de 
# Informação em Saúde acessado: process_sim, process_sinasc ou process_sih.

dados <- fetch_datasus(year_start = 2010, year_end = 2019, uf = "SP", information_system = "SIM-DO")

dados$NATURAL <- as.character(dados$NATURAL)

dados <- dados %>% 
  select(-NATURAL)

processado <- process_sim(dados)
