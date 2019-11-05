args <- commandArgs()
args
dir_name <- args[6]
file_name <- args[7]
dir_analysis <- args[8]
clusters <- args[9]
threshold <- args[10]
row <- args[11]
norm <- args[12]

# FlowSOM
rmarkdown::render(
  file.path(dir_name, file_name, dir_analysis, paste("05_bench_02_", clusters, ".Rmd", sep = "")),
  params = list(
    clusters = clusters,
    threshold = threshold,
    row = row,
    id = file_name,
    norm = norm
  ),
  output_file = file.path(dir_name, file_name, dir_analysis, paste("05_bench_02_", clusters, ".html", sep = "")),
  intermediates_dir = file.path(dir_name, file_name, dir_analysis),
  output_dir = file.path(dir_name, file_name, dir_analysis)
)
