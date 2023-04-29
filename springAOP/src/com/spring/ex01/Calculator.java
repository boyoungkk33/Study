package com.spring.ex01;
//target 클래스
public class Calculator {
  public void add(int a, int b) {
	  int result=a+b;
	  System.out.println("두수의 합= " + result);
  
  }
  public void subtract(int a, int b) {
	  int result=a-b;
	  System.out.println("두수의 차= " + result);
  
  }
  public void multiply(int a, int b) {
	  int result=a*b;
	  System.out.println("두수의 곱= " + result);
  
  }
  public void divide(int a, int b) {
	  int result=a/b;
	  System.out.println("두수의 몫= " + result);
  
  }
  
}
