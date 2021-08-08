# get shiny serves plus tidyverse packages image
FROM rocker/shiny:4.0.5
# system libraries of general use
RUN apt-get update && apt-get install -y \
    make \
    zlib1g-dev\
    libcurl4-openssl-dev \
    libssl-dev 
    
# install R packages required 
# (change it dependeing on the packages you need)
RUN R -e "install.packages('shiny', repos='http://cran.rstudio.com/')"
RUN R -e "install.packages('shinydashboard', repos='http://cran.rstudio.com/')"
RUN R -e "install.packages('DT', repos='http://cran.rstudio.com/')"
RUN R -e "install.packages('plotly', repos='http://cran.rstudio.com/')"
# copy the app to the image
COPY ui.R /srv/shiny-server/
COPY server.R /srv/shiny-server/

# run app
CMD ["/usr/bin/shiny-server"]