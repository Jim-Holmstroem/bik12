
URL = www.csc.kth.se/utbildning/kth/kurser/DD2427/bik12/DownloadMaterial/FaceLab
TMP = /tmp

wget_images:
	wget $(URL)/DebugInfo.tar.gz -O $(TMP)/DebugInfo.tar.gz
	tar -xf $(TMP)/DebugInfo.tar.gz -C $(TMP)
	ln -s $(TMP)/DebugInfo debug
	wget $(URL)/TestImages.tar.gz -O $(TMP)/TestImages.tar.gz 
	tar -xf $(TMP)/TestImages.tar.gz -C $(TMP)
	ln -s $(TMP)/TestImages test

