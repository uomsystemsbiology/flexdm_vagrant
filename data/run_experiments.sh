#!/bin/sh

# Change to project directory
cd /home/sbl/flexdm

# Set up logfile
log=/home/sbl/flexdm/run_experiments.log

echo;echo;echo
echo "### Overview
This shell script is part of the reference environment for the anuscript ['FlexDM: Enabling robust and reliable parallel data mining using WEKA'](http://arxiv.org/abs/1412.5720](http://arxiv.org/abs/1412.5720).  It executes code to reproduce specific results described in the manuscript.  

To find other versions of this reference environment, see Other Links below.  
To learn more about reference environments, [see the detailed description here](http://uomsystemsbiology.github.io/reference-environments/).  

### Instructions for use

This shell script reproduces results described in the manuscript and writes 
output to /home/sbl/flexdm/Results.

### Other links

[Manuscript link](ttp://arxiv.org/abs/1412.5720)

[Vagrant-managed virtual machine](https://github.com/uomsystemsbiology/flexdm_vagrant)

[Bootable ISO](https://dx.doi.org/10.5281/zenodo.22415)

[Docker container][Docker container](https://hub.docker.com/r/uomsystemsbiology/flexdm/)"
echo

# Execute FlexDM Test 1
java -jar FlexDM.jar flexdm_test1.xml

# Execute FlexDM Test 2
java -jar FlexDM.jar flexdm_test2.xml

echo Completed analysis | tee -a $log
echo;echo

/bin/sh
