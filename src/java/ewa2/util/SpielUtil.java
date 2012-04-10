/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package ewa2.util;

/**
 *
 * @author bernhard
 */
public class SpielUtil {
    public static int wuerfle() {
        double zufall;
        zufall = Math.random();
        zufall = zufall * 6 + 0.5;
        return (int) Math.round(zufall);
    }
}
