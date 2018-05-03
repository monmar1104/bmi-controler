package service;

import javax.ejb.Stateless;

@Stateless
public class BMIService implements BMISeviceLocal {
    @Override
    public double calculateBMI(double weight, double height){
        return weight/Math.pow(height/100,2);
    }
}
