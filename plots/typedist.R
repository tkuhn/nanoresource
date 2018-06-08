#!/usr/bin/r

typerankdata = read.csv("../types/type-ranks.csv", header=TRUE)

pdf("typedist.pdf", width=5, height=4)
par(mar=c(4,4,0.5,0.5))
plot( count ~ rank, data = typerankdata, log = "xy" )

