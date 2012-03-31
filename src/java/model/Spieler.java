package model;

import java.beans.*;
import java.io.Serializable;

public class Spieler implements Serializable {
    
    private String Name;
    private int LastDie;
    
    public Spieler() {
        Name = " ";
        LastDie = 0;
    }
    
    
    public Spieler(String nm) {
        Name = nm;
        LastDie = 0;
    }
    
    public String getName() {
        return Name;
    }
    
    public void setName(String value) {
        Name = value;
    }
    
    public int getLastDie() {
        return LastDie;
    }
    
    public void setLastDie(int die) {
        LastDie = die;
    }
}