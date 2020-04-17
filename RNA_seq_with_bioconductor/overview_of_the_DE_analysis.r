'''
Exercise
Creating the DE object
NOTE: It may take a bit longer to load this exercise.

Using our smoc2 overexpression samples, create the DESeq2 object such that the design formula specifies 
the comparison of the expression differences between the fibrosis and normal samples. The metadata for
the experiment is displayed below. We have the data read in with the samples in the same order for the smoc2 raw counts,
reordered_smoc2_rawcounts, and the metadata, smoc2_metadata.

smoc2 metadata

Instructions
100 XP
Create a DESeq2 object called dds_smoc2 using the DESeqDataSetFromMatrix() function by specifying the arguments: 
countData, colData, and design.

Run the DESeq() function to estimate the size factors, calculate the dispersions, and perform the model fitting and testing.
'''

'''SOLN:
Exercise
Creating the DE object
NOTE: It may take a bit longer to load this exercise.

Using our smoc2 overexpression samples, create the DESeq2 object such that the design formula specifies 
the comparison of the expression differences between the fibrosis and normal samples. The metadata for the experiment 
is displayed below. We have the data read in with the samples in the same order for the smoc2 raw counts, 
reordered_smoc2_rawcounts, and the metadata, smoc2_metadata.

smoc2 metadata

Instructions
100 XP
Create a DESeq2 object called dds_smoc2 using the DESeqDataSetFromMatrix() function by specifying the arguments: 
countData, colData, and design.

Run the DESeq() function to estimate the size factors, calculate the dispersions, and perform the model fitting and testing.
'''
