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
* **Optional**: Dissecting spatially resolved properties of galaxies with [piXedfit](https://pixedfit.readthedocs.io/en/latest/)

## Data Resources
* Simulated JWST NIRCam imaging data from the [Cosmic Evolution Early Release Science (CEERS)](https://ceers.github.io/) survey. The data that we will analyze are available in the CEERS's webiste [here](https://ceers.github.io/sdr3.html#nircam-imaging-one)
* First data from the JWST Early Release Observations (ERO) on [SMACS 0723 cluster](https://www.nasa.gov/webbfirstimages). For this tutorial, we will be using the JWST and HST processed data product on SMACS 0723 cluster that are produced by [Gabriel Brammer](https://gbrammer.github.io/) using [grizli](https://github.com/gbrammer/grizli) and publicly available on https://s3.amazonaws.com/grizli-v2/SMACS0723/Test/image_index.html

You can download the data from the above links or alternatively, you can follow the instructions below and download the required data from the google drive links that are listed there.   

## Preparations
### Software Dependencies and Installation
The tutorials are all written in Python and can be conveniently run on the jupyter notebook platform. Before running the codes, you need to install the following softwares
* Python 3.5 or later
* [jupyter notebook](https://jupyter.org/)
* Basic Python packages for astronomy: [NumPy](https://numpy.org/), [Astropy](https://www.astropy.org/), [matplotlib](https://matplotlib.org/), [SciPy](https://scipy.org/), [pysao](https://pypi.org/project/pysao/). These packages are easy to be installed using pip or conda. 
* Photometric analysis packages: [Photutils](https://photutils.readthedocs.io/en/stable/) and [SEP](https://sep.readthedocs.io/en/v1.0.x/index.html) Source Extractor ([Bertin & Arnouts 1996](https://ui.adsabs.harvard.edu/abs/1996A%26AS..117..393B/abstract)). These packages are also easy to be installed. Please follow the installation procedure in their webistes.
* Photometric redshift tool [EAZY](https://github.com/gbrammer/eazy-photoz) ([Brammer, van Dokkum & Coppi (2008)](https://ui.adsabs.harvard.edu/abs/2008ApJ...686.1503B/abstract)). Please follow the installation instruction in the EAZY's GitHub page. 
* SED fitting tool [piXedfit](https://pixedfit.readthedocs.io/en/latest/). Please follow the installation procedure at https://pixedfit.readthedocs.io/en/latest/install.html

### Download the Required Data
Please follow the instructions below
* Clone this GitHub repository to your local computer
```
cd <desired_dir>
git clone https://github.com/aabdurrouf/ivcitb2022.git
```
* Download PSF matching **kernels** from https://drive.google.com/file/d/1t3aBZ1tj8DOlLbfZMD85Gd1SuW8KE871/view?usp=sharing and put the files into `ivcitb2022/kernels/` directory
* Download CEERS simulated NIRCam Images from https://drive.google.com/file/d/159tKQlbkaWKH4MRJwrBX2MnBLc_SSiXW/view?usp=sharing and put the files into `ivcitb2022/CEERS/` directory
* Download JWST and HST images of SMACS 0723 from https://drive.google.com/drive/folders/16EkNUrGAEZm4rwGrLUjMQBQOxtmle8w5?usp=sharing and put them into into `ivcitb2022/ERO_SMACS0723/` directory

## Running Through the Tutorials
The tutorials can be conveniently run in the following order
```
cd ivcitb2022
```
### Analysis of simulated CEERS NIRCam Images
```
cd CEERS
```
* Step1_checking_cropping_and_color_images.ipynb
* Step2_sources_detection_and_aperture_photometry_crop1.ipynb
* Step2_sources_detection_and_aperture_photometry_crop2.ipynb
```
cd eazy_photoz
```
* Step3_measuring_photometric_redshifts_crop1.ipynb
* Step3_measuring_photometric_redshifts_crop2.ipynb
```
cd ../piXedfit_sedfit
```

### Analysis of JWST ERO data SMACS 0723
```
cd ../../ERO_SMACS0723
```
* Step1
* Step2
```
cd eazy_photoz
```
* Step3
```
cd ../piXedfit_sedfit
```

# Contributors
* Main contributor: [Abdurro'uf](https://aabdurrouf.github.io/) - For any inquiry, please send email to fabdurr1@jhu.edu 
* [Takahiro Morishita](https://github.com/mtakahiro) - providing empirical PSFs of JWST/NIRCam and HST for SMACS 0723


