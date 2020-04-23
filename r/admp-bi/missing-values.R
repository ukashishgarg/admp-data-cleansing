MissingValues = which(is.na(street), arr.ind = TRUE)
MissingValues
x = rownames(street)[MissingValues[,1]]
y = colnames(street)[MissingValues[,2]]
LocatedMissingValues = paste(x, y, sep = " ")
LocatedMissingValues

View(summary(street))
