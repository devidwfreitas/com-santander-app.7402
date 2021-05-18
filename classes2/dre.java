import java.io.IOException;

public abstract class dre {
  protected volatile int ah = -1;
  
  public static final <T extends dre> T a(T paramT, byte[] paramArrayOfbyte) {
    return b(paramT, paramArrayOfbyte, 0, paramArrayOfbyte.length);
  }
  
  public static final void a(dre paramdre, byte[] paramArrayOfbyte, int paramInt1, int paramInt2) {
    try {
      dqw dqw = dqw.a(paramArrayOfbyte, paramInt1, paramInt2);
      paramdre.a(dqw);
      dqw.b();
      return;
    } catch (IOException iOException) {
      throw new RuntimeException("Serializing to a byte array threw an IOException (should never happen).", iOException);
    } 
  }
  
  public static final byte[] a(dre paramdre) {
    byte[] arrayOfByte = new byte[paramdre.g()];
    a(paramdre, arrayOfByte, 0, arrayOfByte.length);
    return arrayOfByte;
  }
  
  public static final <T extends dre> T b(T paramT, byte[] paramArrayOfbyte, int paramInt1, int paramInt2) {
    try {
      dqv dqv = dqv.a(paramArrayOfbyte, paramInt1, paramInt2);
      paramT.b(dqv);
      dqv.a(0);
      return paramT;
    } catch (drd drd) {
      throw drd;
    } catch (IOException iOException) {
      throw new RuntimeException("Reading from a byte array threw an IOException (should never happen).");
    } 
  }
  
  protected int a() {
    return 0;
  }
  
  public void a(dqw paramdqw) {}
  
  public abstract dre b(dqv paramdqv);
  
  public dre e() {
    return (dre)super.clone();
  }
  
  public int f() {
    if (this.ah < 0)
      g(); 
    return this.ah;
  }
  
  public int g() {
    int i = a();
    this.ah = i;
    return i;
  }
  
  public String toString() {
    return drf.a(this);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dre.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */