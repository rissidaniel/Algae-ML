grep -i "beta-galactosidase"  iceland_genes.tsv > beta-galactosidase.txt
grep -i "alpha-Amylase"  iceland_genes.tsv > alpha-Amylase.txt
grep -i "Xylanase"  iceland_genes.tsv > Xylanase.txt
grep -i "Serine protease"  iceland_genes.tsv > Serine_protease.txt
grep -i "Subtilisin"  iceland_genes.tsv > Subtilisin.txt
grep -i "Serine alkaline protease"  iceland_genes.tsv > Serine_alkaline_protease.txt
grep -i "Acid protease"  iceland_genes.tsv > Acid_protease.txt
grep -i "Subtilisin-like serine protease"  iceland_genes.tsv > Subtilisin-like_serine_protease.txt
grep -i "Protease"  iceland_genes.tsv > Protease.txt
grep -i "Subtilisin-like Serine proteinase"  iceland_genes.tsv > Subtilisin-like_Serine_proteinase.txt
grep -i "Aminopeptidase"  iceland_genes.tsv > Aminopeptidase.txt
grep -i "Serine peptidase"  iceland_genes.tsv > Serine_peptidase.txt
grep -i "Metalloprotease"  iceland_genes.tsv > Metalloprotease.txt
grep -i "Endopeptidase"  iceland_genes.tsv > Endopeptidase.txt
grep -i "Lipase"  iceland_genes.tsv > Lipase.txt
grep -i "Phytase"  iceland_genes.tsv > Phytase.txt
grep -i "Esterase"  iceland_genes.tsv > Esterase.txt
grep -i "Epoxide hydrolase"  iceland_genes.tsv > Epoxide_hydrolase.txt
grep -i "formylglutathione hydrolase"  iceland_genes.tsv > formylglutathione_hydrolase.txt
grep -i "Polygalacturonase"  iceland_genes.tsv > Polygalacturonase.txt
grep -i "Pullulanase"  iceland_genes.tsv > Pullulanase.txt
grep -i "Invertase"  iceland_genes.tsv > Invertase.txt
grep -i "alpha-glucosidase"  iceland_genes.tsv > alpha-glucosidase.txt
grep -i "Cellulase"  iceland_genes.tsv > Cellulase.txt
grep -i "Chitobiase"  iceland_genes.tsv > Chitobiase.txt
grep -i "Alkaline phosphatase Alkaline"  iceland_genes.tsv > Alkaline_phosphatase_Alkaline.txt
grep -i "Pyrophosphatase"  iceland_genes.tsv > Pyrophosphatase.txt
grep -i "Glycerophosphodiesterase"  iceland_genes.tsv > Glycerophosphodiesterase.txt
grep -i "Cryonase"  iceland_genes.tsv > Cryonase.txt
grep -i "Exonuclease"  iceland_genes.tsv > Exonuclease.txt
grep -i "Uracil-DNA glycosylase"  iceland_genes.tsv > Uracil-DNA_glycosylase.txt
grep -i "Phenylalanine hydroxylase"  iceland_genes.tsv > Phenylalanine_hydroxylase.txt
grep -i "Alcohol dehydrogenase"  iceland_genes.tsv > Alcohol_dehydrogenase.txt
grep -i "Alanine dehydrogenase"  iceland_genes.tsv > Alanine_dehydrogenase.txt
grep -i "Leucine dehydrogenase"  iceland_genes.tsv > Leucine_dehydrogenase.txt
grep -i "Malate dehydrogenase"  iceland_genes.tsv > Malate_dehydrogenase.txt
grep -i "Isocitrate dehydrogenase"  iceland_genes.tsv > Isocitrate_dehydrogenase.txt
grep -i "L-threonine dehydrogenase"  iceland_genes.tsv > L-threonine_dehydrogenase.txt
grep -i "Superoxide dismutase"  iceland_genes.tsv > Superoxide_dismutase.txt
grep -i "Catalase"  iceland_genes.tsv > Catalase.txt
grep -i "Glutathione reductase"  iceland_genes.tsv > Glutathione_reductase.txt
grep -i "Glutathione peroxidase"  iceland_genes.tsv > Glutathione_peroxidase.txt
grep -i "Thioredoxin reductase"  iceland_genes.tsv > Thioredoxin_reductase.txt
grep -i "Glutaredoxin"  iceland_genes.tsv > Glutaredoxin.txt
grep -i "Peroxiredoxin"  iceland_genes.tsv > Peroxiredoxin.txt
grep -i "Dihydroorotate oxidase"  iceland_genes.tsv > Dihydroorotate_oxidase.txt
grep -i "Aspartate aminotransferase"  iceland_genes.tsv > Aspartate_aminotransferase.txt
grep -i "Glutathione S-transferase"  iceland_genes.tsv > Glutathione_S-transferase.txt
grep -i "Hydroxymethyl-transferase"  iceland_genes.tsv > Hydroxymethyl-transferase.txt
grep -i "Glutathione synthetase"  iceland_genes.tsv > Glutathione_synthetase.txt
grep -i "DNA ligase"  iceland_genes.tsv > DNA_ligase.txt
grep -i "carbonic anhydrase"  iceland_genes.tsv > carbonic_anhydrase.txt
grep -i "Pectate lyase"  iceland_genes.tsv > Pectate_lyase.txt
grep -i "Acid decarboxylase"  iceland_genes.tsv > Acid_decarboxylase.txt
grep -i "sedoheptulose 7-phosphate isomerase"  iceland_genes.tsv > sedoheptulose_7-phosphate_isomerase.txt
grep -i "Triosephosphate isomerase"  iceland_genes.tsv > Triosephosphate_isomerase.txt

	echo "generating final file"
wc - l *.txt > biotech_applications.txt
