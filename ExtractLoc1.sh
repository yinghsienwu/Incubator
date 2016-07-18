#extract locations of inventors                                               
grep /city -A 3 ipgb2010* > temp1
#remove <\address>                                                         
sed '/postcode/d' temp1 > temp2
sed '/address/d' temp2 > temp1

#2012only
sed '/othercit/d' temp1 > temp2
sed '/nplcit/d' temp2 > temp1
sed '/category/d' temp1 > temp2
sed '/citation/d' temp2 > temp1
mv temp1 out1.xml


