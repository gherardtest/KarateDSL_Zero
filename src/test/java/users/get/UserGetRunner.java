package users.get;

import com.intuit.karate.junit5.Karate;

public class UserGetRunner {

    @Karate.Test
    Karate userGet(){
        return Karate.run().relativeTo(getClass()); //Correr todos los feature de la carpeta
        // return Karate.run("user-get").relativeTo(getClass()); Correr un feature en específico
    }
}
