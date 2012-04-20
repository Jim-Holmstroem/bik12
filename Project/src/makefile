
URL = www.csc.kth.se/utbildning/kth/kurser/DD2427/bik12/DownloadMaterial/FaceLab
TMP = /tmp

wget_images:
	cd $(TMP)
	pwd
	wget $(URL)/DebugInfo.tar.gz
	tar -xf $(TMP)/DebugInfo.tar.gz
	cd -
	ln -s $(TMP)/DebugInfo debug
	cd $(TMP) 
	wget $(URL)/TestImages.tar.gz 
	tar -xf $(TMP)/TestImages.tar.gz
	ln -s $(TMP)/TestImages test
	cd -

