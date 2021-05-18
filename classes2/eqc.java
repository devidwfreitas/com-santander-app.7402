public final class eqc extends eqd {
  private final eqd a;
  
  public eqc(eqd parameqd) {
    super(parameqd.g(), parameqd.h());
    this.a = parameqd;
  }
  
  public eqd a(int paramInt1, int paramInt2, int paramInt3, int paramInt4) {
    return new eqc(this.a.a(paramInt1, paramInt2, paramInt3, paramInt4));
  }
  
  public byte[] a() {
    byte[] arrayOfByte1 = this.a.a();
    int i = g();
    int j = h() * i;
    byte[] arrayOfByte2 = new byte[j];
    for (i = 0; i < j; i++)
      arrayOfByte2[i] = (byte)(255 - (arrayOfByte1[i] & 0xFF)); 
    return arrayOfByte2;
  }
  
  public byte[] a(int paramInt, byte[] paramArrayOfbyte) {
    paramArrayOfbyte = this.a.a(paramInt, paramArrayOfbyte);
    int i = g();
    for (paramInt = 0; paramInt < i; paramInt++)
      paramArrayOfbyte[paramInt] = (byte)(255 - (paramArrayOfbyte[paramInt] & 0xFF)); 
    return paramArrayOfbyte;
  }
  
  public boolean b() {
    return this.a.b();
  }
  
  public boolean c() {
    return this.a.c();
  }
  
  public eqd d() {
    return this.a;
  }
  
  public eqd e() {
    return new eqc(this.a.e());
  }
  
  public eqd f() {
    return new eqc(this.a.f());
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\eqc.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */