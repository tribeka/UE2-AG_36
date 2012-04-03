package model;

import java.beans.*;
import java.io.Serializable;

import model.Spieler;

public class Feld implements Serializable {
    
    public Feld() {
        
    }
    
    public void setContent(Spieler player) {}
    public Spieler getContent() { return new Spieler(); }
    public Boolean isFirstField() { return false; }
    public Boolean isLastField() { return false; }
    public void setOwner(Spieler player) {}
    public Spieler getOwner() { return new Spieler(); }
}
