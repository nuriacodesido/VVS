# VVS
Práctica 3 
    
    
    1.-Ausencia de interbloqueos (deadlock):
    
	    	#spin -a ejemplo.pml
		#gcc -o pan pan.c
		#./pan 
		#spin -t -p ejemplo.pml 
		
			State-vector 28 byte, depth reached 26, errors: 0
			45 states, stored
			34 states, matched
			79 transitions (= stored+matched)
			0 atomic steps
			hash conflicts:         0 (resolved)
		
		No se encuentra ningún contraejemplo, por lo tanto, no existen interbloqueos. ??????


    
    2.-Safety:
    
    3.-Liveness:
    
    		#spin -a -f '!<>(V@cs && H@cs)' ejemplo.pml
		#gcc -o pan pan.c
		#pan -a -f
    
    Deadlock: check that your encoding does not generate a deadlock
    Safety: check that a situation in which both traffic lights are not red is not reachable. Explain the obtained result.
    Liveness: check whether both traffic lights can reach each color infinitely often. Explain the obtained result.
