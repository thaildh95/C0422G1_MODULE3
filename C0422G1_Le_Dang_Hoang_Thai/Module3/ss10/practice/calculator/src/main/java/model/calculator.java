package model;


public class calculator {
    public static double calculate(double firstOperand, double secondOperand ,char operator){
        switch (operator){
            case '+':  return firstOperand + secondOperand;

            case '-': return firstOperand - secondOperand;

            case '*':
                return  firstOperand * secondOperand;

            case '/':
                if (secondOperand != 0)
                return firstOperand/secondOperand;
                else throw new ArithmeticException("second Operand must # 0");

            default:
                throw new ArithmeticException("wrong operator!");
        }
    }

}