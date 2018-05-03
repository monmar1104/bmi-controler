package service;

import javax.ejb.Local;

@Local
public interface BMISeviceLocal {
    double calculateBMI(double weight, double height);
}
