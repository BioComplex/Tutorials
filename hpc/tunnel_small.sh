#!/bin/bash
#SBATCH --partition eternity
#SBATCH --nodes 1
#SBATCH --mem=20GB
#SBATCH --job-name notebook
#SBATCH --output logs/notebook-log-%J.txt

## get tunneling info
XDG_RUNTIME_DIR=""
ipnport=$(shuf -i8000-9999 -n1)
ipnip=$(hostname -i)

## print tunneling instructions to jupyter-log-{jobid}.txt
echo -e "\n"
echo    "  Paste ssh command in a terminal on local host (i.e., laptop)"
echo    "  ------------------------------------------------------------"
echo -e "  ssh -X -N -L $ipnport:$ipnip:$ipnport $USER@blueshark.fit.edu\n"
echo    "  Open this address in a browser on local host; see token below"
echo    "  ------------------------------------------------------------"
echo -e "  localhost:$ipnport                                      \n\n"

## start an ipcluster instance and launch jupyter server
jupyter-notebook --no-browser --port=$ipnport --ip=$ipnip
