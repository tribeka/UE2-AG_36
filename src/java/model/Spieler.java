package model;

import java.beans.*;
import java.io.Serializable;

public class Spieler implements Serializable {
    
    private String Name;
    private int LastDie;
    private int ID;
    
    public Spieler() {
        Name = "unset";
        ID = -1;
        LastDie = 0;
    }
    
    
    public Spieler(String nm, int id) {
        Name = nm;
        ID = id;
        LastDie = 0;
    }
    
    public String getName() {
        return Name;
    }
    
    /*public void setName(String value) {
        Name = value;
    } */
    
    public int getID() {
        return ID;
    }
    
    public int getLastDie() {
        return LastDie;
    }
    
    public void setLastDie(int die) {
        LastDie = die;
    }
}