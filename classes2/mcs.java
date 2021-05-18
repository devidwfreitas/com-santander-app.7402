import android.text.style.CharacterStyle;

public class mcs {
  private CharacterStyle[] a;
  
  private int b;
  
  private int c;
  
  private boolean d = false;
  
  private int e;
  
  private int f;
  
  public mcs(CharacterStyle[] paramArrayOfCharacterStyle, int paramInt1, int paramInt2, int paramInt3) {
    a(paramArrayOfCharacterStyle);
    b(paramInt1);
    c(paramInt2);
    d(paramInt3);
  }
  
  public static mcs a(CharacterStyle[] paramArrayOfCharacterStyle, int paramInt1, int paramInt2, int paramInt3) {
    return new mcs(paramArrayOfCharacterStyle, paramInt1, paramInt2, paramInt3);
  }
  
  public void a(int paramInt) {
    this.e = paramInt;
  }
  
  public void a(boolean paramBoolean) {
    this.d = paramBoolean;
  }
  
  public void a(CharacterStyle[] paramArrayOfCharacterStyle) {
    this.a = paramArrayOfCharacterStyle;
  }
  
  public boolean a() {
    return this.d;
  }
  
  public int b() {
    return this.e;
  }
  
  public void b(int paramInt) {
    this.b = paramInt;
  }
  
  public void c(int paramInt) {
    this.c = paramInt;
  }
  
  public CharacterStyle[] c() {
    return this.a;
  }
  
  public int d() {
    return this.b;
  }
  
  public void d(int paramInt) {
    this.f = paramInt;
  }
  
  public int e() {
    return this.c;
  }
  
  public int f() {
    return this.f;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mcs.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */