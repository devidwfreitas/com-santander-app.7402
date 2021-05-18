public abstract class eqd {
  private final int a;
  
  private final int b;
  
  protected eqd(int paramInt1, int paramInt2) {
    this.a = paramInt1;
    this.b = paramInt2;
  }
  
  public eqd a(int paramInt1, int paramInt2, int paramInt3, int paramInt4) {
    throw new UnsupportedOperationException("This luminance source does not support cropping.");
  }
  
  public abstract byte[] a();
  
  public abstract byte[] a(int paramInt, byte[] paramArrayOfbyte);
  
  public boolean b() {
    return false;
  }
  
  public boolean c() {
    return false;
  }
  
  public eqd d() {
    return new eqc(this);
  }
  
  public eqd e() {
    throw new UnsupportedOperationException("This luminance source does not support rotation by 90 degrees.");
  }
  
  public eqd f() {
    throw new UnsupportedOperationException("This luminance source does not support rotation by 45 degrees.");
  }
  
  public final int g() {
    return this.a;
  }
  
  public final int h() {
    return this.b;
  }
  
  public final String toString() {
    byte[] arrayOfByte = new byte[this.a];
    StringBuilder stringBuilder = new StringBuilder(this.b * (this.a + 1));
    for (int i = 0; i < this.b; i++) {
      arrayOfByte = a(i, arrayOfByte);
      for (int j = 0; j < this.a; j++) {
        byte b;
        int k = arrayOfByte[j] & 0xFF;
        if (k < 64) {
          b = 35;
        } else if (k < 128) {
          b = 43;
        } else if (k < 192) {
          b = 46;
        } else {
          b = 32;
        } 
        stringBuilder.append(b);
      } 
      stringBuilder.append('\n');
    } 
    return stringBuilder.toString();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\eqd.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */