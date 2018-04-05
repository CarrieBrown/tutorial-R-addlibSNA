#!/bin/bash
 module load libgfortran
 module load R/3.2.0
 tar -xzf $1
 rlocal_lib="$PWD/sna_R.3.2.0"
 export R_LIBS=$rlocal_lib
 Rscript -e ".libPaths(c(.libPaths(), '$rlocal_lib')); source('$2')"
