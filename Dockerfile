FROM staphb/checkm2:1.1.0

# May want to wrap checmk2 in a script to optionally cause a failure if not all input files
# are present in the output. CheckM2 silently ignores bad input files otherwise

# In the CTS command, need to set the refdata mount point to /ref_data, assuming the database
# is gzipped in the data plane. If it's in a directory in tar this won't work
ENV CHECKM2DB /ref_data/uniref100.KO.1.dmnd

# CTS requires an entrypoint
ENTRYPOINT ["checkm2", "predict"]
