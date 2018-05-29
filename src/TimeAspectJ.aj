public aspect TimeAspectJ {
	long startTime = System.nanoTime();
    // Define a Pointcut is
    // collection of JoinPoint call sayHello of class HelloAspectJDemo.
    
	// 1) Cambiar el nombre del Pointcut a "time()"
	// 2) Hacer que se ejecute en la funcion "greeting()" en lugar de la funcion "hello()"
	// 3) Eliminar el "Before" puesto que la orden pide que se ejecute despues y no antes.
	// 4) Colocar lo que se va a ejecutar despues del llamado de la funcion en la parte del "After" o llamado "Advice"
	pointcut time(): call(* HelloAspectJDemo.greeting());  
    after() : time()  {
    	long estimatedTime = System.nanoTime() - startTime;
    	System.out.print("\nTiempo de uso del sistema en segundos:    "+estimatedTime+" Nanosegundos");
    }  
}  

