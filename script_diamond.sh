for f in *_metagenome;
        do SAMPLE=`basename ${f%%_metagenome}`;
        echo "$SAMPLE";
	grep "^>" "$SAMPLE"_metagenome > "$SAMPLE"_list.txt;
	sed -i 's/>//g' "$SAMPLE"_list.txt;
	./faSomeRecords "$SAMPLE"_metagenome "$SAMPLE"_list.txt "$SAMPLE"_reads.fasta;
	sed -i 's/# end nucleotide sequence//g' "$SAMPLE"_reads.fasta;
	diamond blastx --max-target-seqs 1 --threads 40 -q "$SAMPLE"_reads.fasta -d /home/drissi/Metat_complete/raw/repaired_illumina_utils/fastq_corrected/squeeze_spades_spades/results/nr.dmnd -o "$SAMPLE"_diamond.tab --max-target-seqs 1 -f 6 qseqid qstart qend sseqid slen sstart send bitscore pident evalue;
	awk '{if ($9>=50) print }' "$SAMPLE"_diamond.tab | sort -nrk 9,9 | wc -l;
	awk '{if ($9>=50) print }' "$SAMPLE"_diamond.tab  | cut -f1,4 | sort -k 2 > "$SAMPLE"_diamond-matches.tmp;
	cut -f2 "$SAMPLE"_diamond-matches.tmp > "$SAMPLE"_diamond_gene-matches.tmp;
	grep -f "$SAMPLE"_diamond_gene-matches.tmp /home/drissi/Metat_complete/raw/repaired_illumina_utils/fastq_corrected/squeeze_spades_spades/results/nr.fasta| sed 's/>//' | sort > "$SAMPLE"_diamond_gene-matches-descriptions.tmp;
	paste "$SAMPLE"_diamond-matches.tmp "$SAMPLE"_diamond_gene-matches-descriptions.tmp| sort > "$SAMPLE"_diamond-matches.tsv;
	rm *.tmp;
done;


for f in *_metagenome;
        do SAMPLE=`basename ${f%%_metagenome}`;
        echo "$SAMPLE";
	awk '{print $4}' "$SAMPLE"_diamond.tab > "$SAMPLE"_diamond_matches_list.txt;
	./faSomeRecords ~/nr.fasta "$SAMPLE"_diamond_matches_list.txt "$SAMPLE"_diamond_matches.fasta;
done;
