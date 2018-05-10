package service;

import domain.BMIDetails;
import repository.BMIDetailsRepository;

import javax.ejb.Stateless;
import javax.inject.Inject;

@Stateless
public class BMIService implements BMISeviceLocal {

    @Inject
    BMIDetailsRepository bmiDetailsRepository;

    @Override
    public void addBMIDetails(BMIDetails bmiDetails){
        bmiDetailsRepository.addBMIDetails(bmiDetails);
    }
    @Override
    public double calculateBMI(double weight, double height){
        return weight/Math.pow(height/100,2);
    }
}
