#All living organism contain instructions for life in Genome(comprised of double stranded DNA divided into chromosomes) located in nuclei of their cells
#E.g.  Humans have 26 chromosomes; varies by organism
#Nucleotides: BUilding blocks of DNA: 4 Types: Guanine, Adenine, Cytosine, Thymine (GACT)
#DNA Structure: Double Helix with phosphate backbone; AT and GC
#DNA Sequence: Order of Nucleotides
#Sequences have genes which provide instructions to make proteins which proform some function in the cell
#to make proteins, the genes are transcribed to messenger RNA or MRNA, translated by ribosome protein
#NonCoding RNA (ncRNA): Does not get translated into proteins; Have functions which may include: RRNA, TRNA< TIRNA
#All RNA's transcribe from genes [transcripts]
#TO undergo transcription

'''
Exercise
RNA-Seq Packages
We will be using DESeq2 for performing the differential expression analysis and additional R packages for data wrangling and plotting. Before we can run any analyses, we need to load the following packages DESeq2, RColorBrewer, pheatmap, and tidyverse.

Instructions
100 XP
Using library(), import the packages DESeq2, RColorBrewer, pheatmap, and tidyverse.
'''
'''SOLN:
# Load library for DESeq2
library(DESeq2)

# Load library for RColorBrewer
library(RColorBrewer)

# Load library for pheatmap
library(pheatmap)

# Load library for tidyverse
library(tidyverse)
'''

'''RNA Seq Workflow:
1. Experimental Design (planning)
  a. Consider: Technical Replicates: Generally low technical variation; so unnecessary
  b. Biological Replicates: Crucial to the success of RNA-Seq differential expression analyses. The more replciates the better,
  minimum of 3
  c. Batch Effects: AVOID as much as possible and note down all experimental variables
  AVOID VARIATIONSS
 2. Sample Preparation:
  a. Samples of Interest
  b. Isolate RNAs
  c. Generate cDNA, fragment, size select, add liners
  d. Sequence ends (Paired reads and bases of seq)
  e. unsequenced RNA, RNA reads, short insert
  f. FASTQ sequence files
 3. Quality Control
 a. explore possibility of contamination
 4. (splicing) Alignment to Genome
  MRNA contains exons -> when aligned to genome containing introns -> some reads split via introns
  RESULT: Gives genome coordinates and quality of alignment
 5. Counting reads associated with genes(Matric of gene counts)
 NOTE: 1-5 are proformed via cmd line
 6. Compare genes within given conditions

QUESTION:
Read Alignments
For the RNA-Seq analysis workflow, we obtain the raw FASTQ sequencing files from the sequencing facility.
We assess the quality of our sequence reads for each sample, then determine from where on the genome the reads 
originated by performing alignment. We will use the information about where the reads align to generate the count matrix, 
which we will be using to start the differential expression analysis. What was quantified to generate the count matrix?

ANSWER:
The number of reads aligning to the exons of each gene

Great job! The introns of the genes are removed to form the mature mRNAs, 
so the reads that are counted correspond to the reads aligning to the exons of the genes.
'''

'''Exercise
Exploring the raw count matrix
Let's explore the contents of the raw count matrix. The dataset smoc2_rawcounts has already been loaded for you using 
the read.csv() function.

Instructions
100 XP
Explore the dataset smoc2_rawcounts using head() and str()
'''

'''SOLN:
> # Explore the first six observations of smoc2_rawcounts
> head(smoc2_rawcounts)
                   smoc2_fibrosis1 smoc2_fibrosis4 smoc2_normal1 smoc2_normal3
ENSMUSG00000102693               0               0             0             0
ENSMUSG00000064842               0               0             0             0
ENSMUSG00000051951              72              30             0             3
ENSMUSG00000102851               0               0             0             0
ENSMUSG00000103377               0               0             1             0
ENSMUSG00000104017               0               0             0             0
                   smoc2_fibrosis3 smoc2_normal4 smoc2_fibrosis2
ENSMUSG00000102693               0             0               0
ENSMUSG00000064842               0             0               0
ENSMUSG00000051951              36             1              51
ENSMUSG00000102851               0             0               0
ENSMUSG00000103377               0             0               0
ENSMUSG00000104017               0             0               0
> 
> # Explore the structure of smoc2_rawcounts
> str(smoc2_rawcounts)
'data.frame':	47729 obs. of  7 variables:
 $ smoc2_fibrosis1: int  0 0 72 0 0 0 0 0 0 1 ...
 $ smoc2_fibrosis4: int  0 0 30 0 0 0 0 0 0 1 ...
 $ smoc2_normal1  : int  0 0 0 0 1 0 0 0 0 1 ...
 $ smoc2_normal3  : int  0 0 3 0 0 0 0 0 0 0 ...
 $ smoc2_fibrosis3: int  0 0 36 0 0 0 0 0 0 1 ...
 $ smoc2_normal4  : int  0 0 1 0 0 0 0 0 0 0 ...
 $ smoc2_fibrosis2: int  0 0 51 0 0 0 0 0 0 1 ...
> 
'''

'''DIFFERNTIAL GENE EXPRESSION OVERVIEW
Notes: Determines whether genes are expressed at significant levels between two or more samaple groups
// look at Notion

QUESTION: DGE Theory
RNA-Seq count data has an expected distribution and specific characteristics. 
Which of the following is NOT a feature of RNA-Seq count data?

Possible Answers
Generally, a large proportion of genes have a low number of counts.
press
1
There is no maximum limit for the expression range.
press
2
There is more variation in the data than can be modeled by the Poisson distribution for small numbers of replicates.
press
3
The count data are not accurately modeled by the negative binomial model.
press

Answer:
Count data not accurately modeled by the negative binomial Model
- Great job! The negative binomial model generally performs well at modeling RNA-Seq data.
'''

'''DGE Theory: Metadata
Use the information below to create a metadata data frame for the fibrosis count data called metadata 
with columns genotype and condition. The sample names (e.g. smoc2_fibrosis1, smoc2_fibrosis2, etc.) 
should be the row names of the data frame:

smoc2 metadata

Instructions
100 XP
Create a character vector called genotype for the above data using c().
Create a character vector called condition for the above data using c().
Create a data frame called smoc2_metadata using data.frame() and the genotype and condition character vectors.
Create a vector of sample names using c() and assign it to the row names of the data frame using rownames().

SOLN:
> # Create genotype vector
> genotype <- c("smoc2_oe", "smoc2_oe","smoc2_oe", "smoc2_oe", "smoc2_oe", "smoc2_oe", "smoc2_oe")
> 
> # Create condition vector
> condition <- c("fibrosis", "fibrosis", "fibrosis", "fibrosis", "normal","normal", "normal")
> 
> # Create data frame
> smoc2_metadata <- data.frame(genotype, condition)
> 
> # Assign the row names of the data frame
> rownames(smoc2_metadata) <- c("smoc2_fibrosis1", "smoc2_fibrosis2",
  "smoc2_fibrosis3", "smoc2_fibrosis4", "smoc2_normal1", "smoc2_normal3", "smoc2_normal4")
'''
