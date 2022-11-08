# {{cookiecutter.project_name}}
{{cookiecutter.project_short_description}}

# Getting started
Create first a virtual envrionment from the `environment.yml` file:
```
conda env create -f environment.yml
```
Then activate the virtual environment using 
`conda activate {{cookiecutter.project_name}}` and deactivate with 
`conda deactivate`.

To remove the created environment call
```
conda remove -n {{cookiecutter.project_name}} --all
conda env list
```
When the environment is activated, adding new packages happens using 
`conda install package-name=2.3.4` after which you should also update the 
`environment.yml` file. This happens calling `conda env export > environment.yml`.


# Folder structure
- `config` configuration files that can be sourced before running a specific 
    experiment.
- `data` data related to the experiments. Should contain the raw data and 
  possible derivates of the raw data. (note that if data is large, it might 
  make sense to store it, e.g., in remote disk.)
- `experiments` contains the script(s) to run the actual experiments.
- `out` logs from the sbatch jobs go here
- `R` source/utility code the experiments use is stored here
- `results` results from the experiments.
- `shell` scripts to launch Slurm jobs

# How to run?
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