package service;

public class CalculatorService {
    public static double calculate(double firstOperand, double secondOperand,String operator){
        String str;
        switch (operator){
            case "+":
                return firstOperand+secondOperand;
            case "-":
              return firstOperand-secondOperand;
            case "*":
                return firstOperand*secondOperand;
            case "/":
                if (secondOperand==0){
                    return firstOperand/secondOperand;
                }else {
                    throw new ArithmeticException("cant divison for 0");
                }
            default: throw new ArithmeticException("wrong input");


        }
    }
}
