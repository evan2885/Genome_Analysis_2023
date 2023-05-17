#!/bin/bash -l
#SBATCH -A uppmax2023-2-8
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 16
#SBATCH -t 6:00:00
#SBATCH -J 11_count_features_htseq
#SBATCH -o 11_count_features_htseq.out
#SBATCH --mail-type=ALL
#SBATCH --mail-user evelina.andersson.2885@student.uu.se

module load bioinfo-tools
module load htseq/0.12.4

/sw/bioinfo/htseq/0.12.4/snowy/bin/htseq-count \
--format=bam --order pos --nprocesses 16 --samout=Read_counting \
/proj/genomeanalysis2023/nobackup/work/evelinaa/9_mapping_RNA_DNA_star/SRR6040092_scaffold_10_mappedAligned.sortedByCoord.out.bam \
/proj/genomeanalysis2023/nobackup/work/jusu/jusu_braker/sc10/braker/Sp_4/GeneMark-ET/genemark.gtf \
--counts_output /home/eveli/genomeanalysis2023/Genome_Analysis_2023/analyses/11_count_features_htseq/SRR6040092_counted

/sw/bioinfo/htseq/0.12.4/snowy/bin/htseq-count \
--format=bam --order pos --nprocesses 16 --samout=Read_counting \
/proj/genomeanalysis2023/nobackup/work/evelinaa/9_mapping_RNA_DNA_star/SRR6040093_scaffold_10_mappedAligned.sortedByCoord.out.bam \
/proj/genomeanalysis2023/nobackup/work/jusu/jusu_braker/sc10/braker/Sp_4/GeneMark-ET/genemark.gtf \
--counts_output /home/eveli/genomeanalysis2023/Genome_Analysis_2023/analyses/11_count_features_htseq/SRR6040093_counted

/sw/bioinfo/htseq/0.12.4/snowy/bin/htseq-count \
--format=bam --order pos --nprocesses 16 --samout=Read_counting \
/proj/genomeanalysis2023/nobackup/work/evelinaa/9_mapping_RNA_DNA_star/SRR6040094_scaffold_10_mappedAligned.sortedByCoord.out.bam \
/proj/genomeanalysis2023/nobackup/work/jusu/jusu_braker/sc10/braker/Sp_4/GeneMark-ET/genemark.gtf \
--counts_output /home/eveli/genomeanalysis2023/Genome_Analysis_2023/analyses/11_count_features_htseq/SRR6040094_counted

/sw/bioinfo/htseq/0.12.4/snowy/bin/htseq-count \
--format=bam --order pos --nprocesses 16 --samout=Read_counting \
/proj/genomeanalysis2023/nobackup/work/evelinaa/9_mapping_RNA_DNA_star/SRR6040095_scaffold_10_P_mappedAligned.sortedByCoord.out.bam \
/proj/genomeanalysis2023/nobackup/work/jusu/jusu_braker/sc10/braker/Sp_4/GeneMark-ET/genemark.gtf \
--counts_output /home/eveli/genomeanalysis2023/Genome_Analysis_2023/analyses/11_count_features_htseq/SRR6040095_P_counted


/sw/bioinfo/htseq/0.12.4/snowy/bin/htseq-count \
--format=bam --order pos --nprocesses 16 --samout=Read_counting \
/proj/genomeanalysis2023/nobackup/work/evelinaa/9_mapping_RNA_DNA_star/SRR6040095_scaffold_10_U_mappedAligned.sortedByCoord.out.bam \
/proj/genomeanalysis2023/nobackup/work/jusu/jusu_braker/sc10/braker/Sp_4/GeneMark-ET/genemark.gtf \
--counts_output /home/eveli/genomeanalysis2023/Genome_Analysis_2023/analyses/11_count_features_htseq/SRR6040095_U_counted


/sw/bioinfo/htseq/0.12.4/snowy/bin/htseq-count \
--format=bam --order pos --nprocesses 16 --samout=Read_counting \
/proj/genomeanalysis2023/nobackup/work/evelinaa/9_mapping_RNA_DNA_star/SRR6040096_scaffold_10_mappedAligned.sortedByCoord.out.bam \
/proj/genomeanalysis2023/nobackup/work/jusu/jusu_braker/sc10/braker/Sp_4/GeneMark-ET/genemark.gtf \
--counts_output /home/eveli/genomeanalysis2023/Genome_Analysis_2023/analyses/11_count_features_htseq/SRR6040096_counted


/sw/bioinfo/htseq/0.12.4/snowy/bin/htseq-count \
--format=bam --order pos --nprocesses 16 --samout=Read_counting \
/proj/genomeanalysis2023/nobackup/work/evelinaa/9_mapping_RNA_DNA_star/SRR6040097_scaffold_10_mappedAligned.sortedByCoord.out.bam \
/proj/genomeanalysis2023/nobackup/work/jusu/jusu_braker/sc10/braker/Sp_4/GeneMark-ET/genemark.gtf \
--counts_output /home/eveli/genomeanalysis2023/Genome_Analysis_2023/analyses/11_count_features_htseq/SRR6040097_counted


/sw/bioinfo/htseq/0.12.4/snowy/bin/htseq-count \
--format=bam --order pos --nprocesses 16 --samout=Read_counting \
/proj/genomeanalysis2023/nobackup/work/evelinaa/9_mapping_RNA_DNA_star/SRR6156066_scaffold_10_mappedAligned.sortedByCoord.out.bam \
/proj/genomeanalysis2023/nobackup/work/jusu/jusu_braker/sc10/braker/Sp_4/GeneMark-ET/genemark.gtf \
--counts_output /home/eveli/genomeanalysis2023/Genome_Analysis_2023/analyses/11_count_features_htseq/SRR6156066_counted


/sw/bioinfo/htseq/0.12.4/snowy/bin/htseq-count \
--format=bam --order pos --nprocesses 16 --samout=Read_counting \
/proj/genomeanalysis2023/nobackup/work/evelinaa/9_mapping_RNA_DNA_star/SRR6156067_scaffold_10_mappedAligned.sortedByCoord.out.bam \
/proj/genomeanalysis2023/nobackup/work/jusu/jusu_braker/sc10/braker/Sp_4/GeneMark-ET/genemark.gtf \
--counts_output /home/eveli/genomeanalysis2023/Genome_Analysis_2023/analyses/11_count_features_htseq/SRR6156067_counted


/sw/bioinfo/htseq/0.12.4/snowy/bin/htseq-count \
--format=bam --order pos --nprocesses 16 --samout=Read_counting \
/proj/genomeanalysis2023/nobackup/work/evelinaa/9_mapping_RNA_DNA_star/SRR6156069_scaffold_10_mappedAligned.sortedByCoord.out.bam \
/proj/genomeanalysis2023/nobackup/work/jusu/jusu_braker/sc10/braker/Sp_4/GeneMark-ET/genemark.gtf \
--counts_output /home/eveli/genomeanalysis2023/Genome_Analysis_2023/analyses/11_count_features_htseq/SRR6156069_counted
