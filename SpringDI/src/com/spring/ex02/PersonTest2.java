package com.spring.ex02;

import org.springframework.beans.factory.BeanFactory;
import org.springframework.beans.factory.xml.XmlBeanFactory;
import org.springframework.core.io.FileSystemResource;

public class PersonTest2 {

	public static void main(String[] args) {
	  //실행시 person.xml을 읽어 들여 빈을 생성
	  BeanFactory factory=new XmlBeanFactory(new FileSystemResource("person.xml"));
	  PersonService person1=(PersonService) factory.getBean("personService1");
	  person1.sayHello();
	  PersonService person2=(PersonService) factory.getBean("personService2");
	  person2.sayHello();
	}

}
