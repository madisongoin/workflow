library(tidyverse)

result <- sum(1:10)
print(result)

diamonds_plot <- ggplot(diamonds, aes(x = carat, y = price, color = cut)) +
  geom_point(alpha = 0.45, size = 1.2) +
  scale_color_viridis_d(option = "plasma", end = 0.9) +
  labs(
    title = "A diamond's weight comes at a price",
    subtitle = "Price generally rises with carat weight, across every cut quality",
    x = "Carat weight",
    y = "Price (USD)",
    color = "Cut quality"
  ) +
  theme_minimal(base_size = 13) +
  theme(
    plot.title = element_text(face = "bold", size = 20),
    plot.subtitle = element_text(color = "grey35"),
    legend.position = "bottom",
    panel.grid.minor = element_blank()
  )

ggsave(
  "diamonds-1.png",
  plot = diamonds_plot,
  width = 10,
  height = 7,
  dpi = 300,
  bg = "white"
)
