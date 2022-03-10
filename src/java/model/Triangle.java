package model;

public class Triangle {
    private int base;
    private int heigth;
    
    public Triangle(int base, int heigth) {
        this.base = base;
        this.heigth = heigth;
    }
    
    public double area() {
        return base * heigth / 2.0;
    }
    
    public int perimeter() {
        return base * 3;
    }
}
