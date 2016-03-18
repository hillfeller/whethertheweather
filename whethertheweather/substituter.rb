require 'digest'

	stringy = 'TfbWx*JQvd1nE5Z*X5)kRp[&<V.M0r>L3,Zq?}AQ$n`mU_bRdDV,Ux6B~ut=.a_xf{wR0q<ly>yQy?A$V%ll%avU3[k01W1nFRzvm$~1U:8H]Rf=NRaIDHb)j{h]3u]2c:[RXVDQ1MR0!oR,mbT%EuW&,nTf^.?&+&.7Act$e=*[CqGNf*V`,jF*wdb/37nq4cHqyM->h(/-0;;Vk8PSXv_60tPGgnQpTfQ%*G4mtikL.:X.R-MoFR1}>yu|pU8iB89X11=-9w;.EEb)jN-pdP-KEQf,l%:ru9HR/QniH&`7{uf+A`;-R}y:mxA1-S6Zi;j(j~vXNk~:C*e{M)_y7[={r-n|KCQGwaNLvSoIV4mUFVW)nP1ctv$fMDx5-dzdB{h_U3wq(*_aw/(C;/~E.qYu1cywE0oSu4Xnf7H%}8[L-dK&DUqo^gc$2E=AqpE1:n_X&,zYU8C~SpG+Z67-W^72$Z<`wj=[j^&)-j5qKYfeok)%3F]`DNWG;!!O=}pDE^6lk5_Z.|geB`d{lgQ:jm3jRKjIr:DJ9Gk>>s|/^Xzm<)^VtOj.&;dMqy<c+~-r2LVU<s_<-qVi]d|a1dXLIjSj[xUc[Aanl|aX2Ga^!p}<}~ra4J*B$&K}E,;)iWK-TaBN|jpB_nw)pH-owt^oS,n%g~9Z(pnup;{U8^kJ</4<OIoy8H({~yJ*RoXx{vmXDy:b!8BLP?7<B!|arI.Bm4=+Rh.q-G3?xW/ZN?QOrH1]*VRhj1^VjDK%Ai|cUt-{3pT4uDwQZGjLo<oui!Hv8kwWHQN(Sz+Pw{dnx]!oyn2^s-)S9}]K,w3/{LR%TS9d/PyC1Qf>+kQ^]_ZGlYqX$h!^~b&l/VS4[9k82XAW:Oz`[*yX,b.Z0P$W(`e995EgYC:>?eyFr%rTiRYH85`$qNOnQ9sgQ-e)&FKNt(xb/Pu4CEJkAcTD7=l,AQ;reOi6M03w1Fa$Rdr?3T_i2G.lk}0|~K:v/z9`T:lY,vZy'
	puts "*****\nThe string we are processing is:\n%s" % stringy
	
	thingy = stringy.tr(".?\/!@+=|[]:;_\#{}$%^&*()``~, <>-", "") #
	puts "*****\nSpecial characters have been removed from original string:"
	puts thingy #should print a new string-  fXtG4fhrfEh95GPwu3Hswr3v0USCb3qXaZJFDyCvW6lQO0RJcrJ2OUUIjVHJ1Z4OEWbGZ7IsiwOVMtrlbDWrqQZ8jnnjLdAlh32zOgHvTPYxdOLasXpe4Xq6j8ehQbmqAO1z9cxQk0DTJ8EzjDe6EIBKFQgxXDHFQ4Q8d9RxkAUylGY8yO5G2iEO1j7TRLTftJqTeqdyq79veyDQ5CnwoIdtaUclJHPpxZAk7DJgMWgjecmrOaaFGkPwpVnlMgikALdPy6PSfhy7fQCHRu4brKWg5gU8HlJPpCIol7kiPknJnaS02Q7QRDRLWYs6Ifj2xx74SM3YMUEmboG3PFRTc4MXEyHLbuNkVQwYWJeeJXlMhiy0eU98tpIiSHIKW0kExVyC8swFQyHPbq48pipt28msFgijLbGmOCWniPPVlTYZGi7SOVo83piopVMxJjrOkTqvjPw3PAkVpFRXuY4N95iTEVjZIq1N47F3NMRSeQpsdx1TRecS3DL9Dov0zLj66b8fPRpgKVkR1C73Wvcjige2OEyiQZDVWgfAvKHOG8HrDzux8IdwVU9NI6DtpJMfyYkmUVmnIuDnhtzacSsI0spUjetGyBedB4qs7SjnGXorpCGAx0lHOi8kizxjvOZomrlD0hMQu5VjGrY18xTvcdp47dy9f6aJPJhhasgA0XSa6ZmiXYINh3BM7HwCAywvnvihT
	
 	makemeanarray = thingy.scan(/\d|./)
 	puts "*****\nRegex used to separate clusters of numbers from other characters."
 	
 	print makemeanarray 
 	
 	#makemeanarray = newstringy.split #convert string to an array
 	puts "*****\nmakemeanarray is %s\n" % ((makemeanarray.class).to_s)
 	
 	puts "****\nLoops through array to first find j = absolute value of i converted to integer - 3; convert back to string"
 	puts "If i is not a digit, i remains i."
 	makemeanarray.map!{|i|
		if i =~ (/\d/)
			j = (((i.to_i)-3).abs).to_s
		# 	puts i
		else
			i = i
		end

 	

} 			
puts "Minus three stuff:"
  			puts makemeanarray.join("")

	numofcaps = 0
	exclPoints = ""
	
	makemeanarray.map{|i|
		if i =~ /[A-Z]/
			numofcaps += 1
	# 	puts i
		else
			i = i
		end

} 
stringWithExclam = makemeanarray.join("") + "!" * numofcaps
puts "\nWith exclama:"
puts stringWithExclam
puts "\n"
md5 = Digest::MD5.new
md5.update stringWithExclam

hash = md5.hexdigest 

print hash
puts "\n"

#puts stringWithExclam
