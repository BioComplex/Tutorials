# HPC Overview
Running code on HPC ([High Performance Computing](https://en.wikipedia.org/wiki/HPC)) cluster is a little different than running code on a regular Unix enviroment. In this note, we provide an overview of how HPC works and how you can take advantange of it. Our focus will be on the SLURM ([Simple Linux Utility for Resource Management](https://en.wikipedia.org/wiki/Slurm_Workload_Manager)) which is the tool installed on [Blueshark](https://it.fit.edu/computing/blueshark-supercomputer-hpc/), Florida Tech's supercomputer, but the idea is to give a brief overview of HPC systems.

## Head and Workers Nodes
HPC is a group of interconnected compute nodes providing computational resources. <img src="https://portal.tacc.utexas.edu/documents/10157/1181317/Login+and+compute+nodes/dd6fa98c-1695-4e62-8b7b-66f0c83ceba3">
After logging in to the head node, you can submit a job to the scheduler. Once the job is submitted, the scheduler will match the requirements of resources (memory, #of CPUs, etc) with the availability of nodes, select a node(s), and then run the commands specified on the job on the selected node(s).

### Head Node
The head node is where SLURM runs. Do not run heavy computation on the head node, as its purpose is only to allocate resources to pending jobs. Check the [Submitting jobs](jobs.md), to learn how to run your code on the cluster.

### Workers Nodes
Each of the workers nodes run the same operating system. In the case of Blueshark, CentOS. Workers nodes share the `$HOME` folder with the head node, but not the same enviroment. When a job is submitted to a worker node, SLURM exports the enviroment from the head node to it. In that case, the worker node will have access to all of the `$PATH` variables available to the head node.

## Resources
SLURM allocates memory and CPU in a very simple way, it just checks if what is being asked is available and if yes, it grants it to you. Be aware, that if you say you're going to need 30 GB of RAM and you go over that limit, SLURM will mercilessly kill your process because you overused the amount of memory you said you'd need. If you're too greedy with regards to resources, your job might hang waiting to gain the nodes, if you're too cautious, the resources might not be enough for your task. The general idea is not to request more than you need and balance your processes to use the least possible amount of resources.
