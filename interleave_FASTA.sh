# Header and sequence in separate files (one line per sequence)

paste -d '\n' header sequence > output.fasta

# Header and sequence in separate columns of one file
# Where column 1 contains the header, and column 2 the sequence

awk '{print ">"$1"\n"$2}' input.tbl > output.fasta
