package model;

import java.beans.*;
import java.io.Serializable;
import java.util.Stack;

public class Spieler implements Serializable {
    
    private String Name;
    
    public Stack<Integer> LastDies;
    
    public Spieler() {
        Name = "";
        LastDies = new Stack<Integer>();
    }
    
    
    public Spieler(String nm) {
        Name = nm;
        LastDies = new Stack<Integer>();
    }
    
    public String getName() { return Name; }
    
    public void setName(String value) { Name = value; }
}