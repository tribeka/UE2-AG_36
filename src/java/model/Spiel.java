package model;

import java.beans.*;
import java.io.Serializable;
import java.util.Date;
import java.util.List;
import java.util.Iterator;

import model.Spieler;
import model.Spielfeld;

public class Spiel implements Serializable {
    public List<Spieler> Player;
    public Spielfeld Playarea;
    
    private Integer Round;
    private long Starttime;
    private Boolean Over;
    
    public Spiel() {
        Player.clear(); //kann ev. weggelassen werden, wenn Spiel immer neu angelegt wird
        for(int i=0;i<4;i++) {
            Player.add(new Spieler());
        }
        
        Playarea = new SpielfeldImpl();
        
        Round = 0;
        Over = false;
        Starttime = new Date().getTime();
    }
    
    public Boolean isOver() { return Over; }
    public void gameOver() { Over = true; }
    
    public Spieler getLeader() {
        Iterator<Spieler> it = Player.iterator();
        Spieler plyr, tmpplyr;
        Integer dist = 100, temp; //greater than max distance
        do {
            tmpplyr = it.next();
            temp = Playarea.distanceToFinish(tmpplyr);
            if(temp < dist) {
                dist = temp;
                plyr = tmpplyr;
            }
        }while(it.hasNext());
        return plyr;
    }
    
    public int getPlayerCnt() { return Player.size(); }
    
    public String getTime() {
        long time = new Date().getTime();
        time = time - Starttime;
        return (time/(1000 * 60)) + " min " + (time/1000) + " sec";
    }
    
    public void newRound() { Round++; }
}
