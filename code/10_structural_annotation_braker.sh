#!/bin/bash -l
#SBATCH -A uppmax2023-2-8
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 16
#SBATCH -t 5:00:00
#SBATCH -J 10_structural_annotation_braker
#SBATCH -o 10_structural_annotation_braker.out
#SBATCH --mail-type=ALL
#SBATCH --mail-user evelina.andersson.2885@student.uu.se

# Note! This script caused errors that could not be resolved

module load bioinfo-tools
module load samtools/1.8
module load braker/2.1.1_Perl5.24.1
module load augustus/3.2.3_Perl5.24.1
module load bamtools/2.5.1
module load blast/2.9.0+
module load GenomeThreader/1.7.0
module load GeneMark/4.33-es_Perl5.24.1

#cd /home/eveli/genomeanalysis2023/Genome_Analysis_2023/analyses/10_structural_annotation_braker
source $AUGUSTUS_CONFIG_COPY
chmod a+w -R /home/eveli/genomeanalysis2023/Genome_Analysis_2023/analyses/10_structural_annotation_braker/augustus_config/species
cp -vf /sw/bioinfo/GeneMark/4.33-es/snowy/gm_key $HOME/.gm_key

/sw/bioinfo/braker/2.1.1/snowy/braker.pl --species=Durio_zibethinus \
--AUGUSTUS_CONFIG_PATH=/home/eveli/genomeanalysis2023/Genome_Analysis_2023/analyses/10_structural_annotation_braker/augustus_config \
--AUGUSTUS_BIN_PATH=/sw/bioinfo/augustus/3.4.0/snowy/bin \
--AUGUSTUS_SCRIPTS_PATH=/sw/bioinfo/augustus/3.4.0/snowy/scripts \
--GENEMARK_PATH=/sw/bioinfo/GeneMark/4.33-es/snowy \
--gff3 \
--softmasking \
--cores=16 \
--useexisting \
--genome=/home/eveli/genomeanalysis2023/Genome_Analysis_2023/analyses/6_masking_repeatmasker/improved_assembly_pilon.fasta.masked \
--bam=/proj/genomeanalysis2023/nobackup/work/evelinaa/9_mapping_RNA_DNA_star/SRR6040095_scaffold_10_P_mappedAligned.sortedByCoord.out.bam \
/proj/genomeanalysis2023/nobackup/work/evelinaa/9_mapping_RNA_DNA_star/SRR6040095_scaffold_10_U_mappedAligned.sortedByCoord.out.bam, \
/proj/genomeanalysis2023/nobackup/work/evelinaa/9_mapping_RNA_DNA_star/SRR6040092_scaffold_10_mappedAligned.sortedByCoord.out.bam, \
/proj/genomeanalysis2023/nobackup/work/evelinaa/9_mapping_RNA_DNA_star/SRR6040093_scaffold_10_mappedAligned.sortedByCoord.out.bam, \
/proj/genomeanalysis2023/nobackup/work/evelinaa/9_mapping_RNA_DNA_star/SRR6040094_scaffold_10_mappedAligned.sortedByCoord.out.bam, \
/proj/genomeanalysis2023/nobackup/work/evelinaa/9_mapping_RNA_DNA_star/SRR6040096_scaffold_10_mappedAligned.sortedByCoord.out.bam, \
/proj/genomeanalysis2023/nobackup/work/evelinaa/9_mapping_RNA_DNA_star/SRR6040097_scaffold_10_mappedAligned.sortedByCoord.out.bam, \
/proj/genomeanalysis2023/nobackup/work/evelinaa/9_mapping_RNA_DNA_star/SRR6156066_scaffold_10_mappedAligned.sortedByCoord.out.bam, \
/proj/genomeanalysis2023/nobackup/work/evelinaa/9_mapping_RNA_DNA_star/SRR6156067_scaffold_10_mappedAligned.sortedByCoord.out.bam, \
/proj/genomeanalysis2023/nobackup/work/evelinaa/9_mapping_RNA_DNA_star/SRR6156069_scaffold_10_mappedAligned.sortedByCoord.out.bam \

