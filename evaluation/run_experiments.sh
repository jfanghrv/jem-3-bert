#!/bin/bash
python3 evaluation.py --gold input/spider_test_gold.txt --pred input/spider_test_predict.txt --db database --table tables.json --etype all --output all
python3 evaluation.py --gold input/spider_test_75pct_thresh_gold.txt --pred input/spider_test_75pct_thresh_predict.txt --db database --table tables.json --etype all --output max_75pct
python3 evaluation.py --gold input/spider_test_l2norm_75pct_thresh_gold.txt --pred input/spider_test_l2norm_75pct_thresh_predict.txt --db database --table tables.json --etype all --output l2norm_75pct