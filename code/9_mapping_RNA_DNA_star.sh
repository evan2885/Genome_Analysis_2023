#!/bin/bash -l
#SBATCH -A uppmax2023-2-8
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 15
#SBATCH -t 01:00:00
#SBATCH -J 9_mapping_RNA_DNA_star
#SBATCH -o 9_mapping_RNA_DNA_star.out
#SBATCH --mail-type=ALL
#SBATCH --mail-user evelina.andersson.2885@student.uu.se

module load bioinfo-tools
module load star/2.7.9a
module load samtools/1.14


STAR --runThreadN 15 --runMode genomeGenerate \
--genomeDir /proj/genomeanalysis2023/nobackup/work/evelinaa/9_mapping_RNA_DNA_star \
--genomeFastaFiles /home/eveli/genomeanalysis2023/Genome_Analysis_2023/analyses/6_masking_repeatmasker/improved_assembly_pilon.fasta.masked \
--genomeSAindexNbases 11


STAR --runThreadN 15 --genomeDir /proj/genomeanalysis2023/nobackup/work/evelinaa/9_mapping_RNA_DNA_star \
--readFilesIn /home/eveli/genomeanalysis2023/Genome_Analysis_2023/analyses/8_trimming_transcriptome_trimmomatic/8_trimmed_transcriptomes_1P \
/home/eveli/genomeanalysis2023/Genome_Analysis_2023/analyses/8_trimming_transcriptome_trimmomatic/8_trimmed_transcriptomes_2P \
--outFileNamePrefix /proj/genomeanalysis2023/nobackup/work/evelinaa/9_mapping_RNA_DNA_star/SRR6040095_scaffold_10_P_mapped \
--outSAMtype BAM SortedByCoordinate --genomeSAindexNbases 11 --limitBAMsortRAM 2069342127


STAR --runThreadN 15 --genomeDir /proj/genomeanalysis2023/nobackup/work/evelinaa/9_mapping_RNA_DNA_star \
--readFilesIn /home/eveli/genomeanalysis2023/Genome_Analysis_2023/analyses/8_trimming_transcriptome_trimmomatic/8_trimmed_transcriptomes_1U \
/home/eveli/genomeanalysis2023/Genome_Analysis_2023/analyses/8_trimming_transcriptome_trimmomatic/8_trimmed_transcriptomes_2U \
--outFileNamePrefix /proj/genomeanalysis2023/nobackup/work/evelinaa/9_mapping_RNA_DNA_star/SRR6040095_scaffold_10_U_mapped \
--outSAMtype BAM SortedByCoordinate --genomeSAindexNbases 11


STAR --runThreadN 15 --genomeDir /proj/genomeanalysis2023/nobackup/work/evelinaa/9_mapping_RNA_DNA_star \
--readFilesIn /home/eveli/genomeanalysis2023/4_Tean_Teh_2017/transcriptome/trimmed/SRR6040092_scaffold_10.1.fastq.gz \
/home/eveli/genomeanalysis2023/4_Tean_Teh_2017/transcriptome/trimmed/SRR6040092_scaffold_10.2.fastq.gz \
--readFilesCommand zcat \
--outFileNamePrefix /proj/genomeanalysis2023/nobackup/work/evelinaa/9_mapping_RNA_DNA_star/SRR6040092_scaffold_10_mapped \
--outSAMtype BAM SortedByCoordinate --genomeSAindexNbases 11


STAR --runThreadN 15 --genomeDir /proj/genomeanalysis2023/nobackup/work/evelinaa/9_mapping_RNA_DNA_star \
--readFilesIn /home/eveli/genomeanalysis2023/4_Tean_Teh_2017/transcriptome/trimmed/SRR6040093_scaffold_10.1.fastq.gz \
/home/eveli/genomeanalysis2023/4_Tean_Teh_2017/transcriptome/trimmed/SRR6040093_scaffold_10.2.fastq.gz \
--readFilesCommand zcat \
--outFileNamePrefix /proj/genomeanalysis2023/nobackup/work/evelinaa/9_mapping_RNA_DNA_star/SRR6040093_scaffold_10_mapped \
--outSAMtype BAM SortedByCoordinate --genomeSAindexNbases 11


STAR --runThreadN 15 --genomeDir /proj/genomeanalysis2023/nobackup/work/evelinaa/9_mapping_RNA_DNA_star \
--readFilesIn /home/eveli/genomeanalysis2023/4_Tean_Teh_2017/transcriptome/trimmed/SRR6040094_scaffold_10.1.fastq.gz \
/home/eveli/genomeanalysis2023/4_Tean_Teh_2017/transcriptome/trimmed/SRR6040094_scaffold_10.2.fastq.gz \
--readFilesCommand zcat \
--outFileNamePrefix /proj/genomeanalysis2023/nobackup/work/evelinaa/9_mapping_RNA_DNA_star/SRR6040094_scaffold_10_mapped \
--outSAMtype BAM SortedByCoordinate --genomeSAindexNbases 11 --limitBAMsortRAM 2299179937


STAR --runThreadN 15 --genomeDir /proj/genomeanalysis2023/nobackup/work/evelinaa/9_mapping_RNA_DNA_star \
--readFilesIn /home/eveli/genomeanalysis2023/4_Tean_Teh_2017/transcriptome/trimmed/SRR6040096_scaffold_10.1.fastq.gz \
/home/eveli/genomeanalysis2023/4_Tean_Teh_2017/transcriptome/trimmed/SRR6040096_scaffold_10.2.fastq.gz \
--readFilesCommand zcat \
--outFileNamePrefix /proj/genomeanalysis2023/nobackup/work/evelinaa/9_mapping_RNA_DNA_star/SRR6040096_scaffold_10_mapped \
--outSAMtype BAM SortedByCoordinate --genomeSAindexNbases 11


STAR --runThreadN 15 --genomeDir /proj/genomeanalysis2023/nobackup/work/evelinaa/9_mapping_RNA_DNA_star \
--readFilesIn /home/eveli/genomeanalysis2023/4_Tean_Teh_2017/transcriptome/trimmed/SRR6040097_scaffold_10.1.fastq.gz \
/home/eveli/genomeanalysis2023/4_Tean_Teh_2017/transcriptome/trimmed/SRR6040097_scaffold_10.2.fastq.gz \
--readFilesCommand zcat \
--outFileNamePrefix /proj/genomeanalysis2023/nobackup/work/evelinaa/9_mapping_RNA_DNA_star/SRR6040097_scaffold_10_mapped \
--outSAMtype BAM SortedByCoordinate --genomeSAindexNbases 11


STAR --runThreadN 15 --genomeDir /proj/genomeanalysis2023/nobackup/work/evelinaa/9_mapping_RNA_DNA_star \
--readFilesIn /home/eveli/genomeanalysis2023/4_Tean_Teh_2017/transcriptome/trimmed/SRR6156066_scaffold_10.1.fastq.gz \
/home/eveli/genomeanalysis2023/4_Tean_Teh_2017/transcriptome/trimmed/SRR6156066_scaffold_10.2.fastq.gz \
--readFilesCommand zcat \
--outFileNamePrefix /proj/genomeanalysis2023/nobackup/work/evelinaa/9_mapping_RNA_DNA_star/SRR6156066_scaffold_10_mapped \
--outSAMtype BAM SortedByCoordinate --genomeSAindexNbases 11


STAR --runThreadN 15 --genomeDir /proj/genomeanalysis2023/nobackup/work/evelinaa/9_mapping_RNA_DNA_star \
--readFilesIn /home/eveli/genomeanalysis2023/4_Tean_Teh_2017/transcriptome/trimmed/SRR6156067_scaffold_10.1.fastq.gz \
/home/eveli/genomeanalysis2023/4_Tean_Teh_2017/transcriptome/trimmed/SRR6156067_scaffold_10.2.fastq.gz \
--readFilesCommand zcat \
--outFileNamePrefix /proj/genomeanalysis2023/nobackup/work/evelinaa/9_mapping_RNA_DNA_star/SRR6156067_scaffold_10_mapped \
--outSAMtype BAM SortedByCoordinate --genomeSAindexNbases 11


STAR --runThreadN 15 --genomeDir /proj/genomeanalysis2023/nobackup/work/evelinaa/9_mapping_RNA_DNA_star \
--readFilesIn /home/eveli/genomeanalysis2023/4_Tean_Teh_2017/transcriptome/trimmed/SRR6156069_scaffold_10.1.fastq.gz \
/home/eveli/genomeanalysis2023/4_Tean_Teh_2017/transcriptome/trimmed/SRR6156069_scaffold_10.2.fastq.gz \
--readFilesCommand zcat \
--outFileNamePrefix /proj/genomeanalysis2023/nobackup/work/evelinaa/9_mapping_RNA_DNA_star/SRR6156069_scaffold_10_mapped \
--outSAMtype BAM SortedByCoordinate --genomeSAindexNbases 11
