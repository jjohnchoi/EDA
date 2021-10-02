#Actual only comparison
barchart_compare <- function(dataTrain, depVar, indVar, dir, save) {
  chart1 <- ggplot(data = dataTrain) +
    geom_bar(mapping = aes_string(x = depVar, fill = indVar))
  chart2 <- ggplot(data = train_data) +
    geom_bar(mapping = aes_string(x = depVar, fill = indVar), position = "fill")
  arrange <- grid.arrange(chart1, chart2, ncol=2, nrow=1)
  if (save) ggsave(paste0(dir, depVar, ".png"), arrange)
}

histogram_compare <- function(dataTrain, depVar, indVar, dir, save) {
  chart1 <- ggplot(data = dataTrain) +
    geom_histogram(mapping = aes_string(x = depVar, fill = indVar), bins = 30)
  chart2 <- ggplot(data = train_data) +
    geom_histogram(mapping = aes_string(x = depVar, fill = indVar), bins = 30, position = "fill")
  arrange <- grid.arrange(chart1, chart2, ncol=2, nrow=1)
  if (save) ggsave(paste0(dir, depVar, ".png"), arrange)
}

#W/ Prediction comparison
barchartPred_compare <- function(dataTrain, depVar, indVar, pred, dir, save) {
  chart1 <- ggplot(data = dataTrain) +
    geom_bar(mapping = aes_string(x = depVar, fill = indVar))
  chart2 <- ggplot(data = train_data) +
    geom_bar(mapping = aes_string(x = depVar, fill = indVar), position = "fill")
  chart3 <- ggplot(data = dataTrain) +
    geom_bar(mapping = aes_string(x = depVar, fill = pred))
  chart4 <- ggplot(data = train_data) +
    geom_bar(mapping = aes_string(x = depVar, fill = pred), position = "fill")

  arrange <- grid.arrange(chart1, chart2, chart3, chart4, ncol=2, nrow=2)
  if (save) ggsave(paste0(dir, depVar, ".png"), arrange)
}

histogramPred_compare <- function(dataTrain, depVar, indVar, pred, dir, save) {
  chart1 <- ggplot(data = dataTrain) +
    geom_histogram(mapping = aes_string(x = depVar, fill = indVar), bins = 30)
  chart2 <- ggplot(data = train_data) +
    geom_histogram(mapping = aes_string(x = depVar, fill = indVar), bins = 30, position = "fill")
  chart3 <- ggplot(data = dataTrain) +
    geom_histogram(mapping = aes_string(x = depVar, fill = pred), bins = 30)
  chart4 <- ggplot(data = train_data) +
    geom_histogram(mapping = aes_string(x = depVar, fill = pred), bins = 30, position = "fill")

  arrange <- grid.arrange(chart1, chart2, chart3, chart4, ncol=2, nrow=2)
  if (save) ggsave(paste0(dir, depVar, ".png"), arrange)
}
