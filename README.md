# Hands-on Tutorials on JWST Data Analysis for the [International Virtual Course on Astronomy Institut Teknologi Bandung 2022](https://www.as.itb.ac.id/ivcas2022/)  

This repository contains materials for a tutorial on the JWST NIRCam imaging data analysis. The tutorial will be given as part of the [IVC Astronomy ITB 2022](https://www.as.itb.ac.id/ivcas2022/) on August 16, 2022. In this tutorial, we will learn basic anlysis on JWST data, both simulated and the real one.

## What we will learn
In this tutorial, we will learn the following skills
* Point Spread Function matching of imaging data across multiple bands
* Creating color RGB images
* Detection and source extraction of astronomical objects in an image
* Aperture photometry and extracting spectral energy distributions (SEDs) of the galaxies
* Photometric redshift measurement
* SED fitting for measuring the stellar population properties of galaxies
* **Optional**: Dissecting spatially resolved properties of galaxies

## Data Resources
* Simulated JWST NIRCam imaging data from the [Cosmic Evolution Early Release Science (CEERS)](https://ceers.github.io/) survey. The data that we will analyze are available in the CEERS's webiste [here](https://ceers.github.io/sdr3.html#nircam-imaging-one)
* First data from the JWST Early Release Observations (ERO) on [SMACS 0723 cluster](https://www.nasa.gov/webbfirstimages). For this tutorial, we will be using the JWST and HST processed data product on SMACS 0723 cluster that are produced using [grizli](https://github.com/gbrammer/grizli) and publicly available on https://s3.amazonaws.com/grizli-v2/SMACS0723/Test/image_index.html

You can download the data from the above links or alternatively, you can follow the instructions below and download the required data from the google drive links that are listed there.   

## Preparations
### Software Dependencies and Installation
The tutorials are all written in Python and can be conveniently run on the jupyter notebook platform. Before running the codes, you need to install the following softwares
* Python 3.5 or later
* [jupyter notebook](https://jupyter.org/)
* Basic Python packages for astronomy: [NumPy](https://numpy.org/), [Astropy](https://www.astropy.org/), [matplotlib](https://matplotlib.org/), [SciPy](https://scipy.org/)

### Download the Data


## Some References
