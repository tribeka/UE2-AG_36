package model;

import java.beans.*;
import java.io.Serializable;
import java.util.Date;

public class Spielfeld implements Serializable {

    public Spieler[] Player;
    private int cntPlayer;
    private String Leader;
    private int Round;
    private long Starttime;
    private int currentPlayer;
    
    /* Felder: int
     *  0: nicht besetzt
     *  1: Spieler 1
     *  2: Spieler 2
     *  ...
     * 
     * Playarea: 
     * Feld (array-index):
     *  0: Startfeld gelb
     *  10: Startfeld grün
     *  20: Startfeld rot
     *  30: Startfeld blau
     * 
     *  9: letztes Feld grün
     *  19: letztes Feld rot
     *  29: letztes Feld blau
     *  39: letztes Feld gelb
     */
    
    private int[] Playarea;
    private int[][] Startarea;
    private int[][] Finisharea;
            
    public Spielfeld() {
        
        Playarea = new int[40];
        Startarea = new int[4][4];
        Finisharea = new int[4][4];
        
        Player = new Spieler[4];
        cntPlayer = 0;
        Round = 0;
        Starttime = new Date().getTime();
    }
    
    public String getLeader() {
        return Leader;
    }
    
    public void setLeader(String value) {
        Leader = value;
    }
    
    public int getRound() { return Round; }
    
    public int getcntPlayer() { return cntPlayer; }
    
    public String getTime() {
        long time = new Date().getTime();
        time = time - Starttime;
        return (time/(1000 * 60)) + " min " + (time/1000) + " sec";
    }
    
    public int getPlayarea(int index) {
        return Playarea[index];
    }
    
    public String getPlayareaImage(int index) {
        if(Playarea[index] == 0)
            return "";
        else
            return "_player" + Playarea[index];
    }
    
    public String getPlayareaText(int index) {
        if(Playarea[index] == 0)
            return "";
        else
            return ": Spieler " + Playarea[index];
    }
    
    /**
     * sets Playfield
     * @param index between 0 and 39
     * @param value hast to be between 0 and 4 (max. players)
     * @return true if successful
     */
    public boolean setPlayarea(int index, int value) {
        if((value > 4) || (value < 0) ||
                (index > 39) || (index < 0 ))
            return false;
        Playarea[index] = value;
        return true;
    }
    
    public int getStartarea(int player, int  index) {
        return Startarea[player][index];
    }
    
    public String getStartareaImage(int player, int index) {
        if(Startarea[player][index] == 0)
            return "";
        else
            return "_player" + Startarea[player][index];
    }
    
    public String getStartareaText(int player, int index) {
        if(Startarea[player][index] == 0)
            return "";
        else
            return ": Spieler " + Startarea[player][index];
    }
    
    public boolean setStartarea(int player, int index, int value) {
        if((player > 3) || (player < 0) || (index > 3) || (index < 0) ||
                (value < 0 ) || (value > 4))
            return false;
        Startarea[player][index] = value;
        return true;
    }
    
    public int getFinisharea(int player, int  index) {
        return Finisharea[player][index];
    }
    
    public String getFinishareaImage(int player, int index) {
        if(Finisharea[player][index] == 0)
            return "";
        else
            return "_player" + Finisharea[player][index];
    }
    
    public String getFinishareaText(int player, int index) {
        if(Finisharea[player][index] == 0)
            return "";
        else
            return ": Spieler " + Finisharea[player][index];
    }
    
    public boolean setFinisharea(int player, int index, int value) {
        if((player > 3) || (player < 0) || (index > 3) || (index < 0) ||
                (value < 0 ) || (value > 4))
            return false;
        Finisharea[player][index] = value;
        return true;
    }
}
