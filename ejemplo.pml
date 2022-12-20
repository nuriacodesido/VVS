mtype = {red, yellow, green};
mtype lightv=red;
mtype lighth=red;


	active proctype V() {
	//critical -> lock1
	atomic{
		do
		:: if
			:: lightv==red-> lightv=green
			:: lightv==yellow -> lightv=red
			:: lightv==green -> lightv=yellow
			fi;
		//critical

		printf("The light vertical is now %e\n",lightv)
		od;
	}
	}


inline wait(sem) {
	atomic {
		sem;
		sem=false
	}
}

inline signal(sem) {
	sem=true
}




active proctype H() {
//critical -> lock2
do
:: if
	:: lighth==red-> lighth=green
	:: lighth==yellow -> lighth=red
	:: lighth==green -> lighth=yellow
	fi;
//critical
printf("The light horizontal is now %e\n",lighth)
od;
}





