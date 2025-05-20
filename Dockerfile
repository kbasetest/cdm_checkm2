FROM staphb/checkm2:1.1.0

# May want to wrap checmk2 in a script to optionally cause a failure if not all input files
# are present in the output. CheckM2 silently ignores bad input files otherwise

# CTS requires an entrypoint
ENTRYPOINT ["checkm2", "predict"]
