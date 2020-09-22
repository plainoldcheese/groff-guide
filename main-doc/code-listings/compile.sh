#!/bin/sh
groff test.ms -ms -s -e -p -t  -R -Tps > test.ps;
ps2pdf test.ps test.pdf;
rm test.ps;
