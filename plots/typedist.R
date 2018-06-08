#!/usr/bin/r

typerankdata = read.csv("../types/type-ranks.csv", header=TRUE)

pdf("typedist.pdf", width=5, height=5)

plot( count ~ rank, data = typerankdata, log = "xy", main = "Frequency distribution of types" )
c
