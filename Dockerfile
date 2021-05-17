FROM registry.codeocean.com/codeocean/r-base:4.0.0-ubuntu18.04

ARG DEBIAN_FRONTEND=noninteractive

RUN Rscript -e 'remotes::install_github("bhklab/Xeva")'
RUN Rscript -e 'options(warn=2); install.packages("BiocManager")' 
RUN Rscript -e 'options(warn=2); BiocManager::install(c("Biobase"))'
RUN Rscript -e 'options(warn=2); install.packages("biocompute")' 
