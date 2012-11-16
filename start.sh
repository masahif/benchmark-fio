#!/bin/bash

HOSTNAME=`hostname -s`
BENCHMARKS=`ls jobs/`

mkdir tmp_fio_benchmark/

for b in $BENCHMARKS
do
  name=`basename $b .fio`
  fio --output=result/$name-$HOSTNAME.txt jobs/$b
done

rm -rf tmp_fio_benchmark/

