# ---
# jupyter:
#   jupytext:
#     formats: ipynb,R:percent
#     text_representation:
#       extension: .R
#       format_name: percent
#       format_version: '1.3'
#       jupytext_version: 1.13.8
#   kernelspec:
#     display_name: R
#     language: R
#     name: ir
# ---

# %%
library(tidyverse)

# %% [markdown]
# Pulling in Michalis PIP data

# %%
url<- "https://raw.githubusercontent.com/owid/notebooks/main/MichalisMoatsos/MainDataCountriesOnlyNew.csv"

df <- read.csv(url, row.names = 1, header = T, sep = ";", dec = ",")


# %%
head(df)

# %% [markdown]
# This is a chart of Angola, $1.90 a day headcount ratio.

# %%

df %>% 
    filter(Entity == "GBR") %>%
    ggplot(aes(x=Year, y=headcount_ratio_1_90)) + geom_line()
