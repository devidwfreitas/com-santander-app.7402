import android.net.wifi.WifiInfo;

public class ffc {
  public String a = null;
  
  public String b = null;
  
  public int c = 0;
  
  public String d = null;
  
  public String e = null;
  
  public ffc(ffa paramffa) {}
  
  public void a() {
    this.a = "-1";
    this.b = "-1";
    this.c = -1;
    this.d = "-1";
    this.e = "-1";
  }
  
  public void a(WifiInfo paramWifiInfo) {
    this.a = null;
    this.b = paramWifiInfo.getBSSID();
    this.c = paramWifiInfo.getRssi();
    this.d = null;
    this.e = paramWifiInfo.getSSID();
    if (this.e != null && (this.e.contains("<") || this.e.contains(">") || this.e.equalsIgnoreCase("0x")))
      this.e = null; 
  }
  
  public void b() {
    this.a = null;
    this.b = null;
    this.c = 0;
    this.d = null;
    this.e = null;
  }
  
  public String toString() {
    StringBuffer stringBuffer = new StringBuffer();
    stringBuffer.append("Station Name: ");
    stringBuffer.append(fgf.a(this.a));
    stringBuffer.append("\n");
    stringBuffer.append("BBSID: ");
    stringBuffer.append(fgf.a(this.b));
    stringBuffer.append("\n");
    stringBuffer.append("Signal Strength: ");
    stringBuffer.append(this.c);
    stringBuffer.append("\n");
    stringBuffer.append("Channel: ");
    stringBuffer.append(fgf.a(this.d));
    stringBuffer.append("\n");
    stringBuffer.append("SSID: ");
    stringBuffer.append(fgf.a(this.e));
    stringBuffer.append("\n");
    return stringBuffer.toString();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ffc.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */