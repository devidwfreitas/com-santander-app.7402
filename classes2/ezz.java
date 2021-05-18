final class ezz extends ezq {
  private ezz() {
    super(null);
  }
  
  boolean a(int paramInt1, int paramInt2) {
    return (((paramInt1 + paramInt2 & 0x1) + paramInt1 * paramInt2 % 3 & 0x1) == 0);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ezz.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */