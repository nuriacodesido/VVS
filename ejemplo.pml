mtype = {red, yellow, green};
mtype lightv=red;
mtype lighth=red;

bool mutex = true;

inline change_light(light1, light2){
	if 
		:: light1==red -> 
			atomic {
				light2==red;
				mutex = false;
				light1=green;
				mutex = true;
				}
		:: light1==yellow -> light1=red
		:: light1==green -> light1=yellow
		fi;
	assert(light1 == red || light1 == yellow || light1 == green);
	assert(light2 == red || light2 == yellow || light2 == green);
	assert(light1 == red || light2 == red);
}

active proctype V() {
	do
	:: if
		::mutex -> change_light(lightv,lighth);
			printf("The light vertical is now %e\n",lightv)
		:: else -> skip
		fi
	od
	    	
}



active proctype H() {
	do 
	:: if
		::mutex -> change_light(lighth,lightv);
			printf("The light horizontal is now %e\n",lighth)
		:: else -> skip
		fi
	od
}
