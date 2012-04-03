package model;

import java.beans.*;
import java.io.Serializable;
import java.util.Date;
import java.util.List;

import model.Spieler;
import model.Spielfeld;

public class Spiel implements Serializable {
    public List<Spieler> Player;
    public Spielfeld Playarea;
    
    private Integer Round;
    private long Starttime;
    private Boolean Over;
    
    public Spiel() {
        Player.clear();
        for(int i=0;i<4;i++) {
            Player.add(new Spieler());
        }
        
        Playarea = new Spielfeld();
        
        Round = 0;
        Over = false;
        Starttime = new Date().getTime();
    }
    
    public Boolean isOver() { return Over; }
    public void gameOver() { Over = true; }
    
    public Spieler getLeader() { /* TODO */
        return Player.get(0);
    }
    
    public int getPlayerCnt() { return Player.size(); }
    
    public String getTime() {
        long time = new Date().getTime();
        time = time - Starttime;
        return (time/(1000 * 60)) + " min " + (time/1000) + " sec";
    }
    
    public void newRound() { Round++; }
}
