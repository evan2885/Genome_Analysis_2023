#!/bin/bash -l
#SBATCH -A uppmax2023-2-8
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 4
#SBATCH -t 2:00:00
#SBATCH -J 8_trimming_transcriptome_trimmomatic
#SBATCH -o 8_trimming_transcriptome_trimmomatic.out
#SBATCH --mail-type=ALL
#SBATCH --mail-user evelina.andersson.2885@student.uu.se

module load bioinfo-tools
module load trimmomatic/0.39

trimmomatic PE -threads 4 \
/home/eveli/genomeanalysis2023/4_Tean_Teh_2017/transcriptome/untrimmed/SRR6040095_scaffold_10.1.fastq.gz \
/home/eveli/genomeanalysis2023/4_Tean_Teh_2017/transcriptome/untrimmed/SRR6040095_scaffold_10.2.fastq.gz \
-baseout /home/eveli/genomeanalysis2023/Genome_Analysis_2023/analyses/8_trimming_transcriptome_trimmomatic/8_trimmed_transcriptomes \
ILLUMINACLIP:/sw/bioinfo/trimmomatic/0.39/snowy/adapters/TruSeq3-PE.fa:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36
