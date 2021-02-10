# conda activate genemarker

alias python='/usr/bin/python3'
export PERL5LIB=/home/drissi/miniconda3/envs/genemarker/lib/site_perl/5.26.2/ 

for f in ~/algas/proteomes/*.faa;
        do SAMPLE=`basename ${f%%_protein_uniprot.faa}`;
        echo "$SAMPLE";
	gmes_petap.pl --sequence ~/algas/genomes/"$SAMPLE"_genomic_genbank.fna --ES --dbep ~/algas/proteomes/"$SAMPLE"_protein_uniprot.faa --verbose --cores=16 --max_intergenic 10000;
	mv gmhmm.mod "$SAMPLE"_proteome.mod;
	gmhmme3 ~/Metat_complete/raw/repaired_illumina_utils/fastq_corrected/squeeze_spades_spades/results/01.squeeze_spades_spades.fasta -m "$SAMPLE"_proteome.mod -n -o "$SAMPLE"_metagenome;
done;

echo "the end"
