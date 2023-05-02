#!/bin/bash -l
#SBATCH -A uppmax2023-2-8
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 1:00:00
#SBATCH -J 4_improve_assembly_pilon
#SBATCH -o 4_improve_assembly.out
#SBATCH --mail-type=ALL
#SBATCH --mail-user evelina.andersson.2885@student.uu.se

module load bioinfo-tools
module load Pilon/1.24

java -jar $PILON_HOME/pilon.jar --genome /home/eveli/genomeanalysis2023/Genome_Analysis_2023/analyses/1_assembly_canu/pb_assembly.contigs.fasta \
--frags /home/eveli/genomeanalysis2023/Genome_Analysis_2023/analyses/3_mapping_bwa_illumina_pacbio/mapped_bwa_pacbio_illumina.bam \
--threads 2 \
--outdir /home/eveli/genomeanalysis2023/Genome_Analysis_2023/analyses/4_improve_assembly_pilon --output improved_assembly_pilon

