package com.spring.ex01;

import org.springframework.beans.factory.BeanFactory;
import org.springframework.beans.factory.xml.XmlBeanFactory;
import org.springframework.core.io.FileSystemResource;

public class PersonTest {

	public static void main(String[] args) {
	  //실행시 person.xml을 읽어 들여 빈을 생성
	  BeanFactory factory=new XmlBeanFactory(new FileSystemResource("person.xml"));
	  PersonService person=(PersonService) factory.getBean("personService");
	  person.sayHello();
	
	}

}
