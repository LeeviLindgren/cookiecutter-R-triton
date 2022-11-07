# Source first the configuration file.
# Expected variables:
#   n: integer specifying the number of draws
#   output_dir: string specifying the output directory
args = commandArgs(trailingOnly = TRUE)
if (file.exists(args[1])) {
  source(args[1])
} else {
  stop(paste0('File "', args[1], '" not found'))
}

# Get job details from the environment. Slurm sets these up for you.
job_id = Sys.getenv('SLURM_ARRAY_JOB_ID', 0)
array_id = Sys.getenv('SLURM_ARRAY_TASK_ID', 0)

experiment <- function(n_draws) {
    x = rnorm(n_draws)
    data.frame(x = x, job_id = job_id, array_id = array_id)
}

out = experiment(n)
filename = paste0(job_id, '_', array_id, '.RDS')
saveRDS(out, file.path(output_dir, filename))
