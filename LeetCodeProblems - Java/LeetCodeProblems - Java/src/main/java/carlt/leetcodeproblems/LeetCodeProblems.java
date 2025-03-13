/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 */
package carlt.leetcodeproblems;

import java.util.Scanner;

/**
 *
 * @author Carlt
 */
public class LeetCodeProblems {

    static Scanner in = new Scanner(System.in);

    public static void main(String[] args) {
        // A number of integer type is set to the return value of the menu function.
        // This calls the menu function which requires an option user input.
        
        while(true){
            int number = menu();

            switch (number) {
                case 1:
                    // the number n will be passed into the problem function call.
                    int n = 5;
                    // Smallest Even Multiple LeetCode problem function call
                    System.out.println(smallestEvenMultiple(n));
                    break;
                case 2:
                    // the numbers will be passed into the problem function call.
                    int num1 = 12;
                    int num2 = 5;
                    // Add Two Integers LeetCode problem function call
                    System.out.println(addTwoIntegers(num1, num2));
                    break;
                default:
                    // User did not enter a valid number.
                    System.out.println("You did not enter a number which corresponds to a LeetCode problem.");
                    continue;
            }
            
            // Ask user if they want to continue
            if (!chooseAnotherProblem()){
                // Exit loop.
                break;
            }
        }
    }
    
    // Menu function
    public static int menu() {
        System.out.println("LeetCode Problems:");
        System.out.println("Enter a number which corresponds to a LeetCode problem: \n1. Smallest Even Multiple\n2. Add Two Integers");
        return in.nextInt();
    }
    
    // Choose another problem sub-menu function.
    public static boolean chooseAnotherProblem() {
        System.out.println("\nDo you want to see other LeetCode solutions in action?: ");
        in.nextLine();
        String selectAgain = in.nextLine().trim().toLowerCase();
        
        return selectAgain.equals("yes") || selectAgain.equals("y");
    }
    
    // LeetCode problem functions
    public static String smallestEvenMultiple(int n) {
        // Given a positive integer n, return the smallest positive integer that is a multiple of both 2 and n.
        if (n % 2 == 0) {
            return "The smallest even multiple is: " + n;
        }
        return "The smallest even multiple is: " + n * 2;
    }

    public static int addTwoIntegers(int num1, int num2) {
        // Given two integers, return the sum.
        return num1 + num2;
    }
    

}
