#!/usr/bin/env nextflow

params.in = "$HOME/Downloads/Python_Learning/Nextflow/data/input.fa"
/*
 * split a fasta file into multiple files
 */
process splitSequences{
                  input:
                  path 'input.fa' from params.in

                  output:
                  path 'ENA|*' into records

                  """
                  awk '/^>/{f="ENA|"++d} {print > f}' < input.fa
                  """
}

/*
 *Simple reverse the sequence
 */
process reverse{
                  input: path x from records

                  output:
                  stdout into result

                  """
                  cat $x | rev
                  """
}
/*
 * print the channel contents 
 */
result.subscribe { println it }