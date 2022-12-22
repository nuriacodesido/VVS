# VVS
Práctica 3 

Elena Sánchez González 
Nuria Codesido Iglesias
    
    
    1.-Ausencia de interbloqueos (deadlock): check that your encoding does not generate a deadlock
    
    		#spin -search ejemplo.pml
    
	    	#spin -a ejemplo.pml
		#gcc -o pan pan.c
		#./pan  
		
			State-vector 28 byte, depth reached 26, errors: 0
			45 states, stored
			34 states, matched
			79 transitions (= stored+matched)
			0 atomic steps
			hash conflicts:         0 (resolved)
		
		No se encuentra ningún contraejemplo, por lo tanto, no existen interbloqueos. 



    
    2.-Safety: check that a situation in which both traffic lights are not red is not reachable. Explain the obtained result.
    
    		#spin -a -f '[]!(lightv!=red && lighth!=red)' ejemplo.pml
    		#gcc -o pan -DSAFETY pan.c
    		#./pan -E
    
    		Con esta condición nos aseguramos de que para siempre, alguno de los dos semáforos deben estar en rojo.
    
    
    
    3.-Liveness: check whether both traffic lights can reach each color infinitely often. Explain the obtained result.

    		spin -a -f '![]<>lightv' ejemplo.pml
		#gcc -o pan pan.c
		#pan -a -f
		
		Con esta condición comprobamos que siempre las luces de los dos semáforos pueden alcanzar cada color infinitivamente.
    
    
