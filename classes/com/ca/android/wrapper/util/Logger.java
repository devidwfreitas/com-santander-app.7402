package com.ca.android.wrapper.util;

public class Logger {
  public static Logger instance = null;
  
  private boolean debug = false;
  
  private boolean info = false;
  
  public static Logger getLogger() {
    if (instance == null)
      instance = new Logger(); 
    return instance;
  }
  
  public void debug(String paramString) {
    if (this.debug)
      System.out.println("DEBUG: " + paramString); 
  }
  
  public void enableDebug() {
    this.debug = true;
  }
  
  public void enableInfo() {
    this.info = true;
  }
  
  public void info(String paramString) {
    if (this.info)
      System.out.println("INFO: " + paramString); 
  }
  
  public void severe(String paramString) {
    System.out.println("ERROR: " + paramString);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\ca\android\wrappe\\util\Logger.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */