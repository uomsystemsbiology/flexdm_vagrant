### Overview

This is the reference environment for the manuscript ['FlexDM: Enabling robust and reliable parallel data mining using WEKA'](https://arxiv.org/abs/1412.5720](https://arxiv.org/abs/1412.5720).  It executes code to reproduce specific results described in the manuscript.   

To find other versions of this reference environment, see Other Links below.  To learn more about reference environments, [see the detailed description here](https://uomsystemsbiology.github.io/reference-environments/).    

### Instructions for use

This version of the reference environment is a Docker container.  To use it, install [Docker](https://www.docker.com/), then do:

```
$ docker pull uomsystemsbiology/flexdm
$ docker run uomsystemsbiology/flexdm /sbin/my_init -- ./run_experiments.sh
```


This will start the container and execute a script to reproduce the results described in the manuscript.  

### Other links

[Manuscript link](ttp://arxiv.org/abs/1412.5720)

[Vagrant-managed virtual machine](https://github.com/uomsystemsbiology/flexdm_vagrant)

[Bootable ISO](https://dx.doi.org/10.5281/zenodo.22415)

