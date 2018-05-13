package domain;

import javax.persistence.*;
import java.time.LocalDate;

@Entity
public class BMIDetails {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(nullable = false, unique = true)
    private int bmiDetailsId;
    @ManyToOne
    Patient patient;
    @Column(nullable = false)
    private double weight;
    @Column(nullable = false)
    private double height;
    private double bmi;
    private LocalDate date;

    public BMIDetails(){}

    public BMIDetails(Patient patient, Double weight, Double height, Double bmi) {
        this.patient = patient;
        this.weight = weight;
        this.height = height;
        this.bmi = bmi;
    }

    public int getBmiDetailsId() {
        return bmiDetailsId;
    }

    public void setBmiDetailsId(int bmiDetailsId) {
        this.bmiDetailsId = bmiDetailsId;
    }

    public Patient getPatient() {
        return patient;
    }

    public void setPatient(Patient patient) {
        this.patient = patient;
    }

    public double getWeight() {
        return weight;
    }

    public void setWeight(double weight) {
        this.weight = weight;
    }

    public double getHeight() {
        return height;
    }

    public void setHeight(double height) {
        this.height = height;
    }

    public double getBmi() {
        return bmi;
    }

    public void setBmi(double bmi) {
        this.bmi = bmi;
    }



}
