#!/bin/bash
sbatch <<EOT
#!/bin/bash
#SBATCH --time=00:01:00
#SBATCH --cpus-per-task=1
#SBATCH --mem-per-cpu=100M
#SBATCH --output=./out/experiment_%A_%a.out
#SBATCH --array=0-1

module load r

srun Rscript experiments/experiment.R $1
EOT