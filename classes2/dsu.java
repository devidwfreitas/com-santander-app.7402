import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Map;

class dsu {
  public long a;
  
  public String b;
  
  public String c;
  
  public long d;
  
  public long e;
  
  public long f;
  
  public long g;
  
  public Map<String, String> h;
  
  private dsu() {}
  
  public dsu(String paramString, dps paramdps) {
    this.b = paramString;
    this.a = paramdps.a.length;
    this.c = paramdps.b;
    this.d = paramdps.c;
    this.e = paramdps.d;
    this.f = paramdps.e;
    this.g = paramdps.f;
    this.h = paramdps.g;
  }
  
  public static dsu a(InputStream paramInputStream) {
    dsu dsu1 = new dsu();
    if (dss.a(paramInputStream) != 538247942)
      throw new IOException(); 
    dsu1.b = dss.c(paramInputStream);
    dsu1.c = dss.c(paramInputStream);
    if (dsu1.c.equals(""))
      dsu1.c = null; 
    dsu1.d = dss.b(paramInputStream);
    dsu1.e = dss.b(paramInputStream);
    dsu1.f = dss.b(paramInputStream);
    dsu1.g = dss.b(paramInputStream);
    dsu1.h = dss.d(paramInputStream);
    return dsu1;
  }
  
  public dps a(byte[] paramArrayOfbyte) {
    dps dps = new dps();
    dps.a = paramArrayOfbyte;
    dps.b = this.c;
    dps.c = this.d;
    dps.d = this.e;
    dps.e = this.f;
    dps.f = this.g;
    dps.g = this.h;
    return dps;
  }
  
  public boolean a(OutputStream paramOutputStream) {
    try {
      dss.a(paramOutputStream, 538247942);
      dss.a(paramOutputStream, this.b);
      if (this.c == null) {
        String str1 = "";
        dss.a(paramOutputStream, str1);
        dss.a(paramOutputStream, this.d);
        dss.a(paramOutputStream, this.e);
        dss.a(paramOutputStream, this.f);
        dss.a(paramOutputStream, this.g);
        dss.a(this.h, paramOutputStream);
        paramOutputStream.flush();
        return true;
      } 
      String str = this.c;
      dss.a(paramOutputStream, str);
      dss.a(paramOutputStream, this.d);
      dss.a(paramOutputStream, this.e);
      dss.a(paramOutputStream, this.f);
      dss.a(paramOutputStream, this.g);
      dss.a(this.h, paramOutputStream);
      paramOutputStream.flush();
      return true;
    } catch (IOException iOException) {
      dsm.b("%s", new Object[] { iOException.toString() });
      return false;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dsu.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */