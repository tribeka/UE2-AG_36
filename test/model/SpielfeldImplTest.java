/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.junit.*;
import static org.junit.Assert.*;

/**
 *
 * @author Bruno Bajtela
 */
public class SpielfeldImplTest {
    
    public SpielfeldImplTest() {
    }

    @BeforeClass
    public static void setUpClass() throws Exception {
    }

    @AfterClass
    public static void tearDownClass() throws Exception {
    }
    
    @Before
    public void setUp() {
    }
    
    @After
    public void tearDown() {
    }
    
    @Test
    public void CreateNewTest()
    {
        List<Spieler> players = new ArrayList<Spieler>();
        
        
        players.add(new Spieler("Test1"));
        players.add(new Spieler("Test2"));
        
        Spielfeld f = new SpielfeldImpl(players);
        
        Iterator<Feld> i = f.getStartIter(PlayerColor.Yellow);
        
        assertTrue(i.hasNext());
        Feld fld = i.next();
        //Erster spieler sollte am ersten startfeld sein
        assertNotNull(fld.getContent());
        assertTrue(i.hasNext());
        fld = i.next();
        //Feld sollte leer sein
        assertNull(fld.getContent());
        assertTrue(i.hasNext());
        i.next();
        assertTrue(i.hasNext());
        i.next();
        assertFalse(i.hasNext());
        
        i = f.getFieldIter();
        
        int count = 0;
        while(i.hasNext())
        {
            count++;
            i.next();
        }
        assertEquals(40, count); //40 felder insgesamt  
        
    }
    @Test
    public void SetFromStartTest()
    {
        List<Spieler> players = new ArrayList<Spieler>();
        
        
        players.add(new Spieler("Test1"));
        players.add(new Spieler("Test2"));
        
        Spielfeld f = new SpielfeldImpl(players);
        
        f.setPlayerToField(players.get(0), f.getNewField(players.get(0), 1));
        
        Iterator<Feld> it = f.getFieldIter();
        Feld feld = it.next();
        assertEquals(players.get(0), feld.getContent());
    }
    @Test
    public void DistanceAndFinishTest()
    {
        List<Spieler> players = new ArrayList<Spieler>();
        
        Spieler s1 = new Spieler("Test1");
        
        players.add(s1);
        players.add(new Spieler("Test2"));
        
        Spielfeld f = new SpielfeldImpl(players);
        
        f.setPlayerToField(s1, f.getNewField(s1, 1));
        
        assertEquals(new Integer(40), f.distanceToFinish(s1));
        
        Feld fe = f.getNewField(s1, 39);
        
        assertTrue(fe.isLastField());
        f.setPlayerToField(s1, fe);
        assertFalse(f.isPlayerFinished(s1));
        
        f.setPlayerToField(s1, f.getNewField(s1, 1));
        
        assertTrue(f.isPlayerFinished(s1));
    }
    @Test
    public void DistanceAndFinishTest_Green()
    {
        List<Spieler> players = new ArrayList<Spieler>();
        
        Spieler s1 = new Spieler("Test1");
        
        players.add(new Spieler("Test2"));
        players.add(s1);
        
        Spielfeld f = new SpielfeldImpl(players);
        
        f.setPlayerToField(s1, f.getNewField(s1, 1));
        
        assertEquals(new Integer(40), f.distanceToFinish(s1));
        
        Feld fe = f.getNewField(s1, 39);
        
        assertTrue(fe.isLastField());
        f.setPlayerToField(s1, fe);
        assertFalse(f.isPlayerFinished(s1));
        
        f.setPlayerToField(s1, f.getNewField(s1, 1));
        
        assertTrue(f.isPlayerFinished(s1));
    }
    

}
