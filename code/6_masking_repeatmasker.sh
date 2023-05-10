#!/bin/bash -l
#SBATCH -A uppmax2023-2-8
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 1:00:00
#SBATCH -J 6_masking_repeatmasker
#SBATCH -o 6_masking_repeatmasker.out
#SBATCH --mail-type=ALL
#SBATCH --mail-user evelina.andersson.2885@student.uu.se

module load bioinfo-tools
module load RepeatMasker/4.1.2-p1

RepeatMasker -pa 2 -species malvaceae -dir /home/eveli/genomeanalysis2023/Genome_Analysis_2023/analyses/6_masking_repeatmasker \
/home/eveli/genomeanalysis2023/Genome_Analysis_2023/analyses/4_improve_assembly_pilon/improved_assembly_pilon.fasta
