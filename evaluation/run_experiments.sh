#!/bin/bash
for file in ./input/*_gold.txt
do
    name=${file:8}
    prefix=${name%_gold.txt}
    python3 evaluation.py --gold ./input/${prefix}_gold.txt --pred ./input/${prefix}_predict.txt --db database --table tables.json --etype all --output ${prefix}
done