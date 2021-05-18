package com.datami.smi;

public class Analytics {
  private long cellularSessionTime = 0L;
  
  private long sdDataUsage = 0L;
  
  private long wifiSessionTime = 0L;
  
  public long getCellularSessionTime() {
    return this.cellularSessionTime;
  }
  
  public long getSdDataUsage() {
    return this.sdDataUsage;
  }
  
  public long getWifiSessionTime() {
    return this.wifiSessionTime;
  }
  
  public void setCellularSessionTime(long paramLong) {
    this.cellularSessionTime = paramLong;
  }
  
  public void setSdDataUsage(long paramLong) {
    this.sdDataUsage = paramLong;
  }
  
  public void setWifiSessionTime(long paramLong) {
    this.wifiSessionTime = paramLong;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\datami\smi\Analytics.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */