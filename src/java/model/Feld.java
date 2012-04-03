package model;

import java.beans.*;
import java.io.Serializable;

public interface Feld extends Serializable {
    

    
    public void setContent(Spieler player);
    
    public Spieler getContent();
    
    public Boolean isFirstField();
    
    public Boolean isLastField();
    
    public void setOwner(Spieler player);
    
    public Spieler getOwner();
}
