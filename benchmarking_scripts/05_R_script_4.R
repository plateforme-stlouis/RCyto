args <- commandArgs()
args
dir_name <- args[6]
file_name <- args[7]
dir_analysis <- args[8]
out <- args[9]
norm <- args[10]
tsne <- args[11]
umap <- args[12]

rmarkdown::render(
  file.path(dir_name, file_name, dir_analysis, "05_bench_04.Rmd"),
  params = list(
    file = "../ff.fcs",
    outliers = out,
    id = file_name,
    norm = norm,
    tsne = tsne,
    umap = umap
  ),
  output_file = file.path(dir_name, file_name, dir_analysis, "00_FINAL_REPORT.html"),
  intermediates_dir = file.path(dir_name, file_name, dir_analysis),
  output_dir = file.path(dir_name, file_name, dir_analysis)
)

