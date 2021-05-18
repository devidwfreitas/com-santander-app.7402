final class ezg {
  private final byte[] a;
  
  private int b;
  
  ezg(int paramInt) {
    this.a = new byte[paramInt];
    this.b = 0;
  }
  
  void a(int paramInt, byte paramByte) {
    this.a[paramInt] = paramByte;
  }
  
  void a(int paramInt, boolean paramBoolean) {
    boolean bool;
    byte[] arrayOfByte = this.a;
    if (paramBoolean) {
      bool = true;
    } else {
      bool = false;
    } 
    arrayOfByte[paramInt] = (byte)bool;
  }
  
  void a(boolean paramBoolean, int paramInt) {
    for (int i = 0; i < paramInt; i++) {
      int j = this.b;
      this.b = j + 1;
      a(j, paramBoolean);
    } 
  }
  
  byte[] a(int paramInt) {
    byte[] arrayOfByte = new byte[this.a.length * paramInt];
    for (int i = 0; i < arrayOfByte.length; i++)
      arrayOfByte[i] = this.a[i / paramInt]; 
    return arrayOfByte;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ezg.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */