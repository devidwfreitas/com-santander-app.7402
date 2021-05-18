import android.graphics.Bitmap;
import android.util.Base64;

public class mio {
  private String a;
  
  private String b;
  
  private byte[] c;
  
  private byte[] d;
  
  private Bitmap e;
  
  private Bitmap f;
  
  private knw g;
  
  private knw h;
  
  public static mio a() {
    return new mio();
  }
  
  public void a(Bitmap paramBitmap) {
    this.e = paramBitmap;
  }
  
  public void a(String paramString) {
    this.b = paramString;
  }
  
  public void a(knw paramknw) {
    this.g = paramknw;
  }
  
  public void a(byte[] paramArrayOfbyte) {
    this.c = paramArrayOfbyte;
  }
  
  public String b() {
    return this.b;
  }
  
  public void b(Bitmap paramBitmap) {
    this.f = paramBitmap;
  }
  
  public void b(String paramString) {
    this.a = paramString;
  }
  
  public void b(knw paramknw) {
    this.h = paramknw;
  }
  
  public void b(byte[] paramArrayOfbyte) {
    this.d = paramArrayOfbyte;
  }
  
  public String c() {
    return this.a;
  }
  
  public knw d() {
    return this.g;
  }
  
  public knw e() {
    return this.h;
  }
  
  public byte[] f() {
    return this.c;
  }
  
  public byte[] g() {
    return this.d;
  }
  
  public Bitmap h() {
    return this.e;
  }
  
  public Bitmap i() {
    return this.f;
  }
  
  public void j() {
    this.d = null;
    this.f = null;
    this.b = null;
  }
  
  public void k() {
    this.c = null;
    this.e = null;
    this.a = null;
  }
  
  public String l() {
    try {
      if (this.c != null)
        return Base64.encodeToString(this.c, 0); 
    } catch (OutOfMemoryError outOfMemoryError) {
      outOfMemoryError.printStackTrace();
    } 
    return null;
  }
  
  public String m() {
    try {
      if (this.d != null)
        return Base64.encodeToString(this.d, 0); 
    } catch (OutOfMemoryError outOfMemoryError) {
      outOfMemoryError.printStackTrace();
    } 
    return null;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mio.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */