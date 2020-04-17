'''
Practice with the DESeq2 vignette
In the videos, we are exploring gene expression differences between the normal and fibrosis samples of wild-type mice. 
In these exercises, we will be exploring gene expression between the normal and fibrosis samples from mice over-expressing 
the smoc2 gene.

When performing differential expression analyses on your own, the DESeq2 vignette will be the first place to search for
answers to any questions. In this exercise, explore the DESeq2 vignette and use it to pick the best answer below for the question:

Why do we use unnormalized counts as input for DESeq2?

NOTE: Unnormalized means that the counts were not adjusted for the library size, which is the total number of reads counted 
per sample.

SOLN:  DESeq2 assumes the input is raw counts and will internally correct for the library size when performing the analysis.
'''

'''Exercise
Matching metadata and counts data
To perform any analysis with DESeq2, we need to create a DESeq2 object by providing the raw counts, metadata, 
and design formula. To do this, we need to read in the raw counts data and associated metadata we created previously, 
make sure the sample names are in the same order in both datasets, then create a DESeq2 object to use for differential 
expression analysis. We will use the design formula ~ condition to test for differential expression between conditions 
(normal and fibrosis).

The DESeq2 and dplyr libraries have been loaded for you, and the smoc2_rawcounts and smoc2_metadata files have been read in.

Instructions
100 XP
Instructions
100 XP
Use the match() function to return the indices for how to reorder the columns of the counts data to match the order of the 
row names of the metadata. Assign the result to reorder_idx.

Reorder the columns of the count data with reorder_idx such that the column names match the order of the row names in the 
metadata.

Create a DESeq2 object, dds_smoc2 using the DESeqDataSetFromMatrix() function using the metadata and reordered counts.
'''

'''
Question:
# Use the match() function to reorder the columns of the raw counts
reorder_idx <- match(___(___), ___(___))

# Reorder the columns of the count data
reordered_smoc2_rawcounts <- smoc2_rawcounts[ , ___]

# Create a DESeq2 object
dds_smoc2 <- DESeqDataSetFromMatrix(countData =  ___,
                              colData =  ___,
                              design = ~ condition)
                              
SOLN:
> # Use the match() function to reorder the columns of the raw counts
> reorder_idx <- match(rownames(smoc2_metadata), colnames(smoc2_rawcounts))
> 
> # Reorder the columns of the count data
> reordered_smoc2_rawcounts <- smoc2_rawcounts[ , reorder_idx]
> 
> # Create a DESeq2 object
> dds_smoc2 <- DESeqDataSetFromMatrix(countData = reordered_smoc2_rawcounts,
                                colData =  smoc2_metadata,
                                design = ~ condition)
'''

'''
Exercise
Normalizing counts with DESeq2
We have created the DESeq2 object and now wish to perform quality control on our samples. 
Therefore, we need to generate the normalized counts (normalized for library size, which is the total 
number of gene counts per sample, while accounting for library composition). To obtain the normalized counts, 
use the DESeq2 object and generate the normalized counts matrix.

Instructions
100 XP
Estimate the size factors for the smoc2 count data using the estimateSizeFactors() function and save back to the 
dds_smoc2 object

Extract the normalized count values from dds_smoc2 and save as smoc2_normalized_counts using the counts() function.
'''

'''SOLN
Exercise
Normalizing counts with DESeq2
We have created the DESeq2 object and now wish to perform quality control on our samples. 
Therefore, we need to generate the normalized counts (normalized for library size, which is the total number of gene 
counts per sample, while accounting for library composition). To obtain the normalized counts, use the DESeq2 object and 
generate the normalized counts matrix.

Instructions
100 XP
Estimate the size factors for the smoc2 count data using the estimateSizeFactors() function and save back to the dds_smoc2 
object

Extract the normalized count values from dds_smoc2 and save as smoc2_normalized_counts using the counts() function.
We will be using the normalized counts to explore similarities in gene expression between each of our samples, 
with the expection that our biological replicates are more similar to each other and the different conditions 
(wild type and fibrosis) are more different.
'''

''
Exercise
Hierarchical heatmap by condition
When performing quality assessment of our count data, we need to transform the normalized counts for better visualization of the variance for unsupervised clustering analyses. To assess the similarity of the smoc2 samples using hierarchical heatmaps, transform the normalized counts and perform hierarchical clustering analysis. Assume all libraries have been loaded, the DESeq2 object created, and the size factors have been stored in the DESeq2 object, dds_smoc2.

Instructions
100 XP
Instructions
100 XP
Transform the normalized counts from the dds_smoc2 object using the vst() function with the blind argument 
and save to vsd_smoc2.
Extract the matrix of transformed normalized counts from the vsd_smoc2 object using the assay() function 
and save as vsd_mat_smoc2.
Calculate the correlation values between samples and save to vsd_cor_smoc2.
Create a heatmap of the correlation values using pheatmap() with an annotation bar designating condition 
from the smoc2_metadata data frame.
'''

'''SOLN:
# Transform the normalized counts 
vsd_smoc2 <- vst(dds_smoc2, blind = TRUE)

# Extract the matrix of transformed counts
vsd_mat_smoc2 <- assay(vsd_smoc2)

# Compute the correlation values between samples
vsd_cor_smoc2 <- cor(vsd_mat_smoc2) 

# Plot the heatmap
pheatmap(vsd_cor_smoc2, annotation = select(smoc2_metadata, condition))

Well done, now let's assess the heatmap to determine whether our samples cluster as expected and if we have any outliers. 
If we had additional metadata for possible sources of variation, then we would want to include these factors as annotation 
bars as well.
'''

'''
Exercise
PCA analysis
To continue with the quality assessment of our samples, in the first part of this exercise, 
we will perform PCA to look how our samples cluster and whether our condition of interest corresponds 
with the principal components explaining the most variation in the data. In the second part, we will answer 
questions about the PCA plot.

To assess the similarity of the smoc2 samples using PCA, we need to transform the normalized counts then 
perform the PCA analysis. Assume all libraries have been loaded, the DESeq2 object created, and the size factors 
have been stored in the DESeq2 object, dds_smoc2.

Instructions 1/2
50 XP
1
2
Run the code to transform the normalized counts.
Perform PCA by plotting PC1 vs PC2 using the DESeq2 plotPCA() function on the DESeq2 transformed counts object, 
vsd_smoc2 and specify the intgroup argument as the factor to color the plot.
'''
'''
> # Transform the normalized counts
> vsd_smoc2 <- vst(dds_smoc2, blind = TRUE)
> 
> # Plot the PCA of PC1 and PC2
> plotPCA(vsd_smoc2, intgroup="condition")

QUESTION
For the PCA plot generated in the previous part (displayed on the right), 
describe the output regarding the quality of the samples.

ANS: The biological replicates tend to cluster together. The samples separate by condition on PC1.

Well done! If there is an outlier on the heatmap, then we would want to see it with PCA as well. 
We similarly hope our biological replicates cluster together and conditions separate by PC1 and/or PC2. 
If we don't see this, there may be sources of variation present in our data and if these sources are present in our metadata, 
then we can explore these sources of variation by coloring the PCA by these factors.
Alternatively, we might not see sample groups separate if the condition of interest does not cause a big change 
in gene expression.
'''
