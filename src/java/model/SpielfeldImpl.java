/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.util.Iterator;

/**
 *
 * @author Bruno Bajtela
 */
class SpielfeldImpl implements Spielfeld {

    public SpielfeldImpl() {
    }

    public Feld getNewField(Spieler player, Integer distance) {
        throw new UnsupportedOperationException("Not supported yet.");
    }

    public void setPlayerToField(Spieler player, Feld field) {
        throw new UnsupportedOperationException("Not supported yet.");
    }

    public void resetPlayer(Spieler player) {
        throw new UnsupportedOperationException("Not supported yet.");
    }

    public Integer distanceToFinish(Spieler player) {
        throw new UnsupportedOperationException("Not supported yet.");
    }

    public Boolean isPlayerInStart(Spieler player) {
        throw new UnsupportedOperationException("Not supported yet.");
    }

    public Boolean isPlayerFinished(Spieler player) {
        throw new UnsupportedOperationException("Not supported yet.");
    }

    public Iterator<Feld> getFieldIter() {
        throw new UnsupportedOperationException("Not supported yet.");
    }

    public Iterator<Feld> getStartIter(Spieler player) {
        throw new UnsupportedOperationException("Not supported yet.");
    }

    public Iterator<Feld> getFinishIter(Spieler player) {
        throw new UnsupportedOperationException("Not supported yet.");
    }

    
    
}
