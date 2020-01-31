package universitymanagementsystem;

import java.util.Scanner;

public class Register {
    public void registration(){
        Scanner input = new Scanner(System.in);
        
        System.out.println("\n...\nStudent Registration\n");
        System.out.println("Please submit following inforations,");
        
        System.out.println("1.  Name :");
        String name = input.next();
        System.out.println("2.  Age  :");
        int age = input.nextInt();
        System.out.println("3.  Select course number from following list,");
        System.out.println("    [1] SENG 11111 - Introduction to Programming\n");
        System.out.println("    [2] SENG 11112 - Fundamentals of Engineering\n");
        System.out.println("    [3] SENG 11113 - Data Structures & Algorithms\n");
        int course = input.nextInt();
        
        System.out.println("\n...\nStudent Registration Completed,");
        System.out.println("Name    : " + name);
        System.out.println("Age     : " + age);
        switch(course){
            case 1 : 
                System.out.println("Subject : SENG 11111 - Introduction to Programming");
                break;
            case 2 :
                System.out.println("Subject : SENG 11112 - Fundamentals of Engineering");
                break;
            case 3 : 
                System.out.println("Subject : SENG 11113 - Data Structures & Algorithms");
                break;
            default : 
                System.out.println("Wrong option");
                break;
        }
    }
}
