abstract class ezq {
  private static final ezq[] a = new ezq[] { new ezs(null), new ezt(null), new ezu(null), new ezv(null), new ezw(null), new ezx(null), new ezy(null), new ezz(null) };
  
  private ezq() {}
  
  static ezq a(int paramInt) {
    if (paramInt < 0 || paramInt > 7)
      throw new IllegalArgumentException(); 
    return a[paramInt];
  }
  
  final void a(ett paramett, int paramInt) {
    for (int i = 0; i < paramInt; i++) {
      int j;
      for (j = 0; j < paramInt; j++) {
        if (a(i, j))
          paramett.d(j, i); 
      } 
    } 
  }
  
  abstract boolean a(int paramInt1, int paramInt2);
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ezq.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */