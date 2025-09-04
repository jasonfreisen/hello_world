#build a graph

#load packages
library(ggplot2)
library(EVR628tools)

#load data
data("data_heatwaves")

#build a plot
p <- ggplot(data = data_sst |> head(365),
       mapping = aes(x = date, y = temperature_C)) +
  geom_line()

#export my plot
ggsave(plot = p,
       filename = "results/img/hello_world.pdf")
