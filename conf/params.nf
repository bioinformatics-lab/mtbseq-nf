// If a module was chosen with the --step OPTION, the --continue OPTION ensures that the pipeline will continue the analysis with downstream modules. This is automatically set if the --step OPTION is set to the VALUE TBfull.
// continue

// This OPTION requires a user supplied file specifying a set of datasets (e.g. samples.txt) as VALUE. The file must be a two-column, tab-separated file. Column 1 has to be your [SampleID]. Column 2 has to be your [LibID]. TBjoin requires this OPTION to be set.
samples = "samples.tsv"

// This OPTION allows the user to set a project name for the steps TBjoin, TBamend and TBgroups. If you do not support a project name, [NONE] is used as a default value.
project

// This OPTION sets the reference genome for the read mapping. By default, the genome of Mycobacterium tuberculosis H37Rv (NC_000962.3) is set as reference. User supplied FASTA files for other reference genomes should be placed in the directory /MTBseq_source/var/ref/, and the respective name given without .fasta extension. Please be aware that for other reference genomes, you need to provide the respective annotation files as well or annotations will be skipped.
ref

// This OPTION sets a list of known variant positions associated to drug resistance for resistance prediction. Give the full path to the file. The required structure of the file can be seen here: /MTBseq_source/var/res/MTB_Resistance_Mediating.txt
resilist

// This OPTION sets a list of interesting regions to be used for annotation of detected variants. Give the full path to the file. The required structure of the file can be seen here: /MTBseq_source/var/res/MTB_Extended_Resistance_Mediating.txt
intregions

// This OPTION specifies a gene categories file to annotate essential and non-essential genes as well as repetitive regions. SNPs in repetitive regions will be excluded for phylogenetic analysis. Give the full path to the file. The required structure of the file can be seen here: /MTBseq_source/var/cat/MTB_Gene_Categories.txt
categories

// This OPTION specifies a file for base quality recalibration. The list must be in VCF format and should contain known SNPs. Give the full path to the file. The required structure of the file can be seen here: /MTBseq_source/var/res/MTB_Base_Calibration_List.vcf
basecalib

// This OPTION is used in the modules TBvariants, TBstats, TBjoin, and TBstrains. By default, the OPTION is not active. Setting this OPTION will skip all filtering steps and report the calculated information for all positions in the input file.
all_vars = false

// This OPTION is used in TBvariants, TBstats, TBjoin, and TBstrains. By default, the OPTION is not active. Setting this OPTION will add an additional filter that excludes all variants except SNPs.
snp_vars = false

// This OPTION is used in TBvariants, TBstats, TBjoin, and TBstrains. By default, the OPTION is not active. Setting this OPTION has major implications on how the mapping data for each position is processed. By default, the majority allele is called and taken for further calculations. If the --lowfreq_vars OPTION is set, MTBseq will consider the majority allele distinct from wild type, if such an allele is present. This means that only in this detection mode, MTBseq will report variants present only in subpopulations, i.e. low frequency mutations. Of course, OPTIONS --mincovf, --mincovr, --minphred20, and --minfreq need to be set accordingly. Please be aware that output generated in this detection mode should not be used for phylogenetic analysis.
lowfreq_vars = false

// This OPTION is used in TBlist. By default, the OPTION is set to 13. The OPTION sets a threshold for the sequence data quality to be used for the mpileup creation.
minbqual = false

// This OPTION is used in TBvariants, TBjoin, TBamend, and TBstrains. By default, the OPTION is set to 4. The OPTION sets a minimum forward read coverage threshold. Alleles must have a forward coverage of this VALUE or higher to be considered.
mincovf = 4

// This OPTION is used in TBvariants, TBjoin, TBamend, and TBstrains. By default, the OPTION is set to 4. The OPTION sets a minimum reverse read coverage threshold. Alleles must have a reverse coverage of this VALUE or higher to be considered.
mincovr = 4

// This OPTION is used in TBvariants, TBjoin, TBamend, and TBstrains. By default, the OPTION is set to 4. The OPTION sets a minimum number of reads indicating an allele with a phred score of at least 20.
minphred = 4

// This OPTION is used in TBvariants, TBjoin, TBamend, and TBstrains. By default, the OPTION is set to 75. The OPTION sets a minimum frequency for an allele.
minfreq

// This OPTION is used in TBamend. By default, the OPTION is set to 95. The option sets a minimum percentage of samples with unambiguous information for position.
unambig

// This OPTION is used in TBamend. By default, the OPTION is set to 12. The OPTION sets a window size in which the algorithm scans for the occurrence of multiple variants within the same sample. If more than one variant occurs within this window in the same sample, the positions will be excluded.
window

// This OPTION is used in TBgroups. By default, the OPTION is set to 12. The OPTION sets a SNP distance that is used to classify samples into groups of samples, using agglomerative clustering. If SNP distances between samples are less or equal this VALUE, they are grouped together.
distance

// This OPTION turns off the display logging function and will report the logging only in a file, called "MTBseq_[DATE]_[USER].log".
quiet

// This OPTION is used in TBbwa, TBmerge, TBrefine, TBpile and TBlist. By default, the OPTION is set to 1. The OPTION sets the maximum number of CPUs to use within the pipeline. You can use more than one core in order to execute the pipeline faster. 8 is the current maximum.
threads

// This OPTION will show you all available OPTIONs and corresponding VALUEs used by MTBseq.
help

// This OPTION will show you the current version of MTBseq.
version

// This OPTION will check the dependencies of MTBseq.
check

