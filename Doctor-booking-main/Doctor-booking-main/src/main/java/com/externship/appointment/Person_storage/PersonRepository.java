package com.externship.appointment.Person_storage;

import org.springframework.data.jpa.repository.JpaRepository;


public interface PersonRepository extends JpaRepository<Person,String> {

    Person findPersonByEmail(String username);
	
}
