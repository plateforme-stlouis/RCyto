args <- commandArgs()
args
dir_name <- args[6]
file_name <- args[7]
dir_analysis <- args[8]
threshold <- args[9]
row <- args[10]
pg <- args[11]
fm <- args[12]
fp <- args[13]
dp <- args[14]
tpg <- args[15]
tfm <- args[16]
tfp <- args[17] 
tdp <- args[18]
tcx <- args[19]
upg <- args[20]
ufm <- args[21]
ufp <- args[22]
udp <- args[23]
ucx <- args[24]
out <- args[25]
norm <- args[26]

# run clustering algorithms (other than FlowSOM)
rmarkdown::render(
  file.path(dir_name, file_name, dir_analysis, "05_bench_03.Rmd"),
  params = list(
    threshold = threshold,
    row = row,
    pg = pg,
    fm = fm,
    fp = fp,
    dp = dp,
    tpg = tpg,
    tfm = tfm,
    tfp = tfp,
    tdp = tdp,
    tcx = tcx,
    upg = upg,
    ufm = ufm,
    ufp = ufp,
    udp = udp,
    ucx = ucx,
    out = out,
    norm = norm,
    id = file_name
  ),
  output_file = file.path(dir_name, file_name, dir_analysis, "05_bench_03.html"),
  intermediates_dir = file.path(dir_name, file_name, dir_analysis),
  output_dir = file.path(dir_name, file_name, dir_analysis)
)