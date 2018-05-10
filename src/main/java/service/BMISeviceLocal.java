package service;

import domain.BMIDetails;

import javax.ejb.Local;

@Local
public interface BMISeviceLocal {
    void addBMIDetails(BMIDetails bmiDetails);
    double calculateBMI(double weight, double height);
}
