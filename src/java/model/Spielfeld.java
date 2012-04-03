package model;

import java.beans.*;
import java.io.Serializable;
import java.util.Iterator;

import model.Spieler;
import model.Feld;

public class Spielfeld implements Serializable {
    
    public Spielfeld() {
        
    }
    
    public Feld getNewField(Spieler player, Integer distance) { return new Feld(); }
    public void setPlayerToField(Spieler player, Feld field) {}
    public void resetPlayer(Spieler player) {}
    public Integer distanceToFinish(Spieler player) { return 0; }
    public Boolean isPlyrInStart(Spieler player) { return false; }
    public Boolean isPlyrFinished(Spieler player) { return false; }
    public Iterator<Feld> getFieldIter() {  }
    public Iterator<Feld> getStartIter() { }
    public Iterator<Feld> getFinishIter() {}
}
