#!/bin/bash
fname=(pgb20010102_wk01.zip  pgb20010109_wk02.zip  pgb20010116_wk03.zip  pgb20010123_wk04.zip  pgb20010130_wk05.zip  pgb20010206_wk06.zip  pgb20010213_wk07.zip  pgb20010220_wk08.zip  pgb20010227_wk09.zip  pgb20010306_wk10.zip  pgb20010313_wk11.zip  pgb20010320_wk12.zip  pgb20010327_wk13.zip  pgb20010403_wk14.zip  pgb20010410_wk15.zip  pgb20010417_wk16.zip  pgb20010424_wk17.zip  pgb20010501_wk18.zip  pgb20010508_wk19.zip  pgb20010515_wk20.zip  pgb20010522_wk21.zip  pgb20010529_wk22.zip  pgb20010605_wk23.zip  pgb20010612_wk24.zip  pgb20010619_wk25.zip  pgb20010626_wk26.zip  pgb20010703_wk27.zip  pgb20010710_wk28.zip  pgb20010717_wk29.zip  pgb20010724_wk30.zip  pgb20010731_wk31.zip  pgb20010807_wk32.zip  pgb20010814_wk33.zip  pgb20010821_wk34.zip  pgb20010828_wk35.zip  pgb20010904_wk36.zip  pgb20010911_wk37.zip  pgb20010918_wk38.zip  pgb20010925_wk39.zip  pgb20011002_wk40.zip  pgb20011009_wk41.zip  pgb20011016_wk42.zip  pgb20011023_wk43.zip  pgb20011030_wk44.zip  pgb20011106_wk45.zip  pgb20011113_wk46.zip  pgb20011120_wk47.zip  pgb20011127_wk48.zip  pgb20011204_wk49.zip  pgb20011211_wk50.zip  pgb20011218_wk51.zip  pgb20011225_wk52.zip)

year=2001
mkdir $year
for i in "${fname[@]}"
do 
    #echo $i
    wget http://storage.googleapis.com/patents/grantbib/$year/$i 
    unzip $i -d $HOME/Documents/USPTO/$year
done
rm *.zip
cd $year
rm *rpt*
