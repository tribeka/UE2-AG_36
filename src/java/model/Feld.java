package model;

import java.beans.*;
import java.io.Serializable;

public interface Feld extends Serializable {
    
    public void setContent(Spieler player);
    
    public Spieler getContent();
    
    public Boolean isFirstField();
    
    public Boolean isLastField();
    
    //Owner ändert sich nach erstellen des Spielfelds nie, muss nicht public sein
   // public void setOwner(Spieler player);
    
    public Spieler getOwner();
}
