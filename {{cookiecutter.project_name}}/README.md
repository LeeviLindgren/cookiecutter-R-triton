# {{cookiecutter.project_name}}
{{cookiecutter.project_short_description}}

# Folder structure
- `config` configuration files that can be sourced before running a specific 
    experiment.
- `data` data related to the experiments. Should contain the raw data and 
  possible derivates of the raw data. (note that if data is large, it might 
  make sense to store it, e.g., in remote disk.)
- `experiments` contains the script(s) for to run the actual experiments
- `R` any source/utility code the experiments use can be stored here
- `results` results from the experiments.
- `out` logs from the Triton's sbatch jobs go here
- `shell` scripts to launch Triton jobs

# How to run an 
First activate you virtual environment.

Folder `experiments` collects all executable scripts. One can simply run the 
scripts from command line using 
```
Rscript experiments/experiment.R config/experiment.R
```
If you are working in Triton (or other cluster using Slurm workload manager), 
you can utilize the scripts in `shell`-folder. 
```
sh shell/experiment.sh config/experiment.R
```

# TODO
- [ ] Todo item 1
- [x] Todo item 2