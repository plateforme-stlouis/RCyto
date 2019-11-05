args <- commandArgs()
args
dir_name <- args[6]
file_name <- args[7]
dir_analysis <- args[8]
out <- args[9]
norm <- args[10]

# Import data
rmarkdown::render(
  file.path(dir_name, file_name, dir_analysis, "05_bench_01.Rmd"),
  params = list(
    file = "../ff.fcs",
    outliers = out,
    id = file_name,
    norm = norm
  ),
  output_file = file.path(dir_name, file_name, dir_analysis, "05_bench_01.html"),
  intermediates_dir = file.path(dir_name, file_name, dir_analysis),
  output_dir = file.path(dir_name, file_name, dir_analysis)
)




