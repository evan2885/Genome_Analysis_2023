#!/bin/bash -l

#SBATCH -A uppmax2023-2-8
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 8
#SBATCH -t 17:00:00
#SBATCH -J eveli_assembly
#SBATCH --mail-type=ALL
#SBATCH --mail-user evelina.andersson.2885@student.uu.se

# Load modules
module load bioinfo-tools
module load canu/2.2

# The commands    
canu -d /home/eveli/genomeanalysis2023/Genome_Analysis_2023/analyses/1_assembly_canu -p pb_assembly genomeSize=24162007  useGrid=False corThreads=8 -pacbio /home/eveli/genomeanalysis2023/4_Tean_Teh_2017/pacbio_data/SRR6037732_scaffold_10.fq.gz 

