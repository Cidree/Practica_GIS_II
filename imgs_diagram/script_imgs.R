
# Raster shannon

prueba <- as(R_shannon, "SpatialPixelsDataFrame")
prueba <- as.data.frame(prueba)
colnames(prueba) <- c('shannon', 'x', 'y')

ggplot(prueba, aes(x=x, y=y, fill = shannon)) +
  geom_raster() +
  scale_fill_gradient2(low = "#8F0404", mid = "white", high = "#020C59", midpoint = 5) +
  theme_void() +
  theme(legend.position = "none") +
  coord_fixed()


# Raster orientaciones
prueba <- orientaciones |> 
  reclassify(rcl = mat) |> 
  mask(yunquera) 

prueba <- as(prueba, "SpatialPixelsDataFrame")
prueba <- as.data.frame(prueba)
colnames(prueba) <- c('Orientacion', 'x', 'y')
prueba$Orientacion <- factor(prueba$Orientacion)

ggplot(prueba, aes(x=x, y=y, fill = Orientacion)) +
  geom_raster() +
  scale_fill_manual(values = c("#3076E1", "#97E0ED","#F7E912","#F3823C","#F11512")) +
  theme_void() +
  theme(legend.position = "none") +
  coord_fixed()


# Raster distancia canales

prueba <- as(R_dist_canales, "SpatialPixelsDataFrame")
prueba <- as.data.frame(prueba)
colnames(prueba) <- c('Distancia', 'x', 'y')

ggplot(prueba, aes(x=x, y=y, fill = Distancia)) +
  geom_raster() +
  scale_fill_gradient2(low = "#8F0404", mid = "white", high = "#020C59", midpoint = 150) +
  theme_void() +
  theme(legend.position = "none") +
  coord_fixed()

# Raster pinsapo

prueba <- as(R_pinsapo, "SpatialPixelsDataFrame")
prueba <- as.data.frame(prueba)
colnames(prueba) <- c('Npies', 'x', 'y')

ggplot(prueba, aes(x=x, y=y, fill = Npies)) +
  geom_raster() +
  scale_fill_gradient(low = "#E7F3E6", high = "#093004") +
  theme_void() +
  theme(legend.position = "none") +
  coord_fixed()
