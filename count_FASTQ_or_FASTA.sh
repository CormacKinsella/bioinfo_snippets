# FASTA
for i in *.fasta; do grep ">" $i | wc -l; done

# Or
for i in *.fasta; do grep ">" -c $i; done

# FASTQ
for i in *.fastq.gz; do echo $(zcat $i | wc -l)/4|bc; done
