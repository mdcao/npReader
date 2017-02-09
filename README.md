### Introduction

npReader is a tool to facilitate real-time conversion and analysis of Nanopore sequencing 
data. It was developed as part of [Japsa](https://github.com/mdcao/japsa) package where its source code and documentation reside.

### Quick installation guide

######Under Linux/Mac

1.Install JHI5 using the packaging tool of your operating system distribution. For example, under Debian/Ubuntu
 
    sudo apt-get install libjhdf5-jni

For MacOS, you can download and install hdfviewer from https://support.hdfgroup.org/ftp/HDF5/releases/HDF-JAVA/hdf-java-2.10.1/bin/

2.Obtain the source code, compile and install

    git clone https://github.com/mdcao/japsa
    cd japsa
    make install JLP=/usr/lib/jni \
     [INSTALL_DIR=~/.usr/local \] 
     [MXMEM=7000m \] 
     [SERVER=true \] 

Change the JLP directive to point to where JHI5 is installed if needed. In a standard installation, the directive would be /usr/lib/jni for Linux or XXXX for MacOS.

3.Set the environment variable PATH to include the installation directory, eg,

    set PATH=~/.usr/local/bin:$PATH

4.Usage information

    jsa.np.npreader --help
  
######On any OSs

1.Install hdf from https://support.hdfgroup.org/downloads/. The current version (1.7-02a) was tested with hdf version 2.10.1, which can be downloaded from https://support.hdfgroup.org/ftp/HDF5/releases/HDF-JAVA/hdf-java-2.10.1/bin/. During installation of hdf, please take note of where the library is installed. 

2.Download pre-compiled Japsa of the latest release from https://github.com/mdcao/japsa/releases

3.Unzip the  package, and run install.sh (for Linux/Mac) or install.bat (for Windows) and follow the prompt. Enter the path to hdf library when asked.


### Documentation

Detailed usage of npReader including setting up streaming analysis of nanopore sequencing in
genuine real-time can be found from http://japsa.readthedocs.org/en/latest/tools/jsa.np.npreader.html

General information of Japsa can be found on its [ReadTheDoc](http://japsa.readthedocs.org/en/latest/)

### Reference

If you find npReader useful for your research, please cite its publication:

Cao MD, Ganesamoorthy D, Cooper MA, Coin LJM, (2016). Realtime analysis and visualization of MinION sequencing data
with npReader. Bioinformatics, 32(5):764–766. DOI:[10.1093/bioinformatics/btv658](http://dx.doi.org/10.1093/bioinformatics/btv658)

