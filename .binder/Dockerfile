FROM rocker/binder:3.6.0
LABEL maintainer='Mayank Goel'
USER root
COPY . ${HOME}
RUN chown -R ${NB_USER} ${HOME}
USER ${NB_USER}



RUN wget https://github.com/abolim/Reproducibility-Research-Replication/raw/master/DESCRIPTION && R -e "options(repos = list(CRAN = 'http://mran.revolutionanalytics.com/snapshot/2020-03-12/')); devtools::install_deps()"

RUN rm DESCRIPTION.1; exit 0
