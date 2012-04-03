package model;

import java.beans.*;
import java.io.Serializable;
import java.util.Iterator;


public interface Spielfeld extends Serializable {
    
    public Feld getNewField(Spieler player, Integer distance);
    
    public void setPlayerToField(Spieler player, Feld field);
    
    public void resetPlayer(Spieler player);
    
    public Integer distanceToFinish(Spieler player);
    
    public Boolean isPlayerInStart(Spieler player);
    
    public Boolean isPlayerFinished(Spieler player);
    
    public Iterator<Feld> getFieldIter();
    public Iterator<Feld> getStartIter(Spieler player);
    public Iterator<Feld> getFinishIter(Spieler player);
}
