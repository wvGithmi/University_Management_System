package universitymanagementsystem;

import java.util.Scanner;

public class Student {
    public void sRegistration(){
        Scanner input = new Scanner(System.in);
        
        System.out.println("Student Registration Form\n");
        
        System.out.println("Name : ");
        String name = input.next();
        
        System.out.println("Username : ");
        char[] username;
        username = input.next().toCharArray();
        
        System.out.println("Password : ");
        char[] password;
        password = input.next().toCharArray();
        
        System.out.println("Age : ");
        int age = input.nextInt();
        
        System.out.println("Select the courses : ");
        System.out.println("[1] SENG 11111 - Object Oriented Programming");
        System.out.println("[2] SENG 11112 - Introduction to Database");
        System.out.println("[3] SENG 11113 - Project Management\n");
        char[] num = new char[3];
        for(int i=0 ; i<3 ; i++){
            while(num[i] != ' '){
                int courses = input.nextInt();
                num[i] = (char) courses;
            }
        }
        
        System.out.println("You have successfully registered for following courses : ");
        for(int j=0 ; j<3 ; j++){
            switch(num[j]){
                case '1' : 
                    System.out.println("SENG 11111 - Object Oriented Programming");
                    break;
                case '2' :
                    System.out.println("SENG 11112 - Introduction to Database");
                    break;
                case '3' : 
                    System.out.println("SENG 11113 - Project Management");
                    break;
                default :
                    break;
            }
        }
        
        System.out.println("Thank you!");
    }
}
