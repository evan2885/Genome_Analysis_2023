#!/bin/bash -l
#SBATCH -A uppmax2023-2-8
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 2:00:00
#SBATCH -J 3_mapping_bwa_illumina_pacbio
#SBATCH -o 3_mapping_bwa_illumina_pacbio.out
#SBATCH --mail-type=ALL
#SBATCH --mail-user evelina.andersson.2885@student.uu.se

module load bioinfo-tools
module load bwa/0.7.17
module load samtools/1.14

bwa index /home/eveli/genomeanalysis2023/Genome_Analysis_2023/analyses/1_assembly_canu/pb_assembly.contigs.fasta

bwa mem -t 2 /home/eveli/genomeanalysis2023/Genome_Analysis_2023/analyses/1_assembly_canu/pb_assembly.contigs.fasta \
/home/eveli/genomeanalysis2023/4_Tean_Teh_2017/illumina_data/SRR6058604_scaffold_10.1P.fastq.gz \
/home/eveli/genomeanalysis2023/4_Tean_Teh_2017/illumina_data/SRR6058604_scaffold_10.2P.fastq.gz \
> /home/eveli/genomeanalysis2023/Genome_Analysis_2023/analyses/3_mapping_bwa_illumina_pacbio/mapped_bwa_pacbio_illumina.sam

samtools sort -@ 2 /home/eveli/genomeanalysis2023/Genome_Analysis_2023/analyses/3_mapping_bwa_illumina_pacbio/mapped_bwa_pacbio_illumina.sam \
-o /home/eveli/genomeanalysis2023/Genome_Analysis_2023/analyses/3_mapping_bwa_illumina_pacbio/mapped_bwa_pacbio_illumina.bam

samtools index /home/eveli/genomeanalysis2023/Genome_Analysis_2023/analyses/3_mapping_bwa_illumina_pacbio/mapped_bwa_pacbio_illumina.bam \
/home/eveli/genomeanalysis2023/Genome_Analysis_2023/analyses/3_mapping_bwa_illumina_pacbio/mapped_bwa_pacbio_illumina.bai
