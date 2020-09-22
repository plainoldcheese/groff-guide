#!/bin/sh
refer test.ms | groff -ms -e -p -t > test.ps;
ps2pdf test.ps test.pdf;
rm test.ps;
