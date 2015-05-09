#! /bin/bash

drush make main.make $1
prefix=$1/sites
git clone git@github.com:mortenson/site1.git $prefix/site1
git clone git@github.com:mortenson/site2.git $prefix/site2
drush make $prefix/site1/site1.make $prefix/site1 --no-core --contrib-destination=.
drush make $prefix/site2/site2.make $prefix/site2 --no-core --contrib-destination=.
