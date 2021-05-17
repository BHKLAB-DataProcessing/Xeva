FROM bioconductor/bioconductor_docker:devel

USER root

RUN apt-get update && apt-get install -y openssl libssl-dev curl libcurl4-openssl-dev libxml2-dev git tcl tk

RUN Rscript -e 'remotes::install_github("bhklab/Xeva")'
RUN Rscript -e 'install.packages("BiocManager")' 
RUN Rscript -e 'BiocManager::install(c("Biobase"))'
RUN Rscript -e 'install.packages("biocompute")' 
