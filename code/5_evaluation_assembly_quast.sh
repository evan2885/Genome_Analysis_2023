#!/bin/bash -l
#SBATCH -A uppmax2023-2-8
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 1:00:00
#SBATCH -J 5_evaluation_assembly_quast
#SBATCH -o 5_evaluation_assembly_quast.out
#SBATCH --mail-type=ALL
#SBATCH --mail-user evelina.andersson.2885@student.uu.se

module load bioinfo-tools
module load quast/5.0.2

python /sw/bioinfo/quast/5.0.2/snowy/bin/quast.py \
--threads 2 --eukaryote -o /home/eveli/genomeanalysis2023/Genome_Analysis_2023/analyses/5_evaluation_assembly_quast/ \
/home/eveli/genomeanalysis2023/Genome_Analysis_2023/analyses/4_improve_assembly_pilon/improved_assembly_pilon.fasta
