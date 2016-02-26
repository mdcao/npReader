### Introduction

npReader is a tool to facilitate real-time conversion and analysis of Nanopore sequencing 
data. Its source code is part of [Japsa](https://github.com/mdcao/japsa) package.

### Quick installation guide

######Under Linux/Mac

1.Install JHI5 using the packaging tool of your operating system distribution. For example, under Debian/Ubuntu
 
    sudo apt-get install libjhdf5-jni

2.Obtain the source code, compile and install

    git clone https://github.com/mdcao/japsa
    cd japsa
    make install JLP=/usr/lib/jni \
     [INSTALL_DIR=~/.usr/local \] 
     [MXMEM=7000m \] 
     [SERVER=true \] 

Change the JLP directive to point to where JHI5 is installed if needed.

3.Set the environment variable PATH to include the installation directory, eg,

    set PATH=~/.usr/local/bin:$PATH

4.Usage information

    jsa.np.f5reader --help
  
######On any OSs

1.Install JNI from https://www.hdfgroup.org/products/java/JNI/jhi5/index.html 

2.Download pre-compiled Japsa of the latest release from https://github.com/mdcao/japsa/releases

3.Unzip the  package, and run install.sh (for Linux/Mac) or install.bat (for Windows) and follow the prompt.


### Documentation

Detailed usage of npReader including setting up streaming analysis of nanopore sequencing in
genuine real-time can be found from http://japsa.readthedocs.org/en/latest/tools/jsa.np.f5reader.html
