# Set a reasonable CPU count for the current system to use (in this case at least 1, but otherwise 1/3 of available)

cpu_count=\$(awk -v total_cpu=\$(nproc) 'BEGIN {printf "%.0f\n", (total_cpu > 1) ? total_cpu / 3 : 1}')
