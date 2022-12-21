mtype = {red, yellow, green};
mtype lightv=red;
mtype lighth=red;

inline change_light(light1, light2){
	if 
		:: light1==red -> 
			atomic {
				light2==red;
				light1=green;
				}
		:: light1==yellow -> light1=red
		:: light1==green -> light1=yellow
		fi
}

active proctype V() {
	do,
	:: cs: change_light(lightv,lighth);
	printf("The light vertical is now %e\n",lightv)
	od
	    	
}



active proctype H() {
	do 
	:: cs: change_light(lighth,lightv);
	printf("The light horizontal is now %e\n",lighth)
	od
}






