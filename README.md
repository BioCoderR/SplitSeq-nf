# SplitSeq-nf

BASIC PIPELINE designed using [NextFlow](https://www.nextflow.io/index.html) as a test pipeline

# Description
The SplitSeq pipeline is used for multiple sequences into a single FASTA sequence using [NCBI blast+](https://ftp.ncbi.nlm.nih.gov/blast/executables/blast+/LATEST/) software. 

# Workflow
Input : `$basedir/input.fa` <br>
Output : Defines that the process outputs files whose names match the pattern `seq_*`

### Functioning
The pipeline basically starts with input of the FASTA sequence format file{`.faa` or `.fa` or `.fasta`} and running the pipeline using NextFlow to get the output of the split sequences files stored according to their sequence names in the output folder. 
