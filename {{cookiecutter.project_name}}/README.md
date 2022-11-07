# {{cookiecutter.project_name}}
{{cookiecutter.project_short_description}}

# Default folder structure
- `config` configuration files that can be sourced before running a specific 
    experiment.
- `data` data related to the experiments
- `experiments` contains the script(s) for to run the actual experiments
- `R` any source/utility code the experiments use can be stored here
- `out` logs from the Triton's sbatch jobs go here
- `shell` scripts to launch Triton jobs

# Example
The `cookiecutter`-template automatically sets up a job you can run on Triton. Running
```
sh shell/experiment.sh config/experiment_config.R
```
executes the experiment in `R/experiment.R` as an array job of size 2. Output is stored in `./data/{job_id}_{array number}.RDS`.