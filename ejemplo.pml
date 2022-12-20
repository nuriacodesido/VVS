#define i 2

mtype = {red, yellow, green};
mtype light[i]=red;
bool mutex=1;


inline change_light(i){
	wait(mutex);
	if 
	:: light[i]==red -> light[i]=green
	:: light[i]==yellow -> ligh[i]t=red
	:: light[i]==green -> light[i]=yellow
	fi;
	signal(mutex);
}


active proctype V() {
	atomic{
		do
			change_light(0);
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
	atomic{
		do
			change_light(1);
			printf("The light horizontal is now %e\n",lighth)
		od;	
	}
}






