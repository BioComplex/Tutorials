# Submitting jobs
Jobs can be submited using a .sh file like the template below:
<pre class="line-numbers"><code class="language-bash">
#!/bin/bash
#SBATCH --job-name GT14
#SBATCH --nodes 1
#SBATCH --ntasks 23
#SBATCH --mem=23GB
#SBATCH --time=24:00:00
#SBATCH --mail-user=<youTRACKSid>@my.fit.edu
#SBATCH --mail-type=END,FAIL
#SBATCH --partition=long
#SBATCH --error=logs/gt14.%J.err 
#SBATCH --output=logs/gt14.%J.out
echo "Using $1 of memory"
echo "Starting at ´date´"
echo "Running on hosts: $SLURM_NODELIST"
echo "Running on $SLURM_NNODES nodes."
echo "Running on $SLURM_NPROCS processors."
python stb.py 1430470800 1431680400
</code>
</pre>
