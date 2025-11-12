library(tidyverse)
library(here)

load(here("data/intermediate/democr-info-env.RData"))

s1 <- d |> 
  filter(I24 != "") |> 
  select(id, I24)

sample1 <- sample(s1$id, 100, replace = FALSE)
s1 <- d |> 
  select(id, I24) |> 
  filter(id %in% sample1)

ft <- flextable::flextable(s1)
doc <- officer::read_docx() |>
  officer::body_add_par("Sampled IDs and I24 values", style = "heading 1") |>
  flextable::body_add_flextable(ft)

# save to file
print(doc, target = here("data/intermediate/sampled_data_mediaomgeving.docx"))

s2 <- d |> 
  filter(I28 != "") |> 
  select(id, I28)

sample2 <- sample(s2$id, 100, replace = FALSE)
s2 <- d |> 
  select(id, I28) |> 
  filter(id %in% sample2)

ft <- flextable::flextable(s2)
doc <- officer::read_docx() |>
  officer::body_add_par("Sampled IDs and I24 values", style = "heading 1") |>
  flextable::body_add_flextable(ft)

# save to file
print(doc, target = here("data/intermediate/sampled_data_mediapersoonlijkheid.docx"))
