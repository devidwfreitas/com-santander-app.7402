public final class euu {
  private static final euu[] a = h();
  
  private final int b;
  
  private final int c;
  
  private final int d;
  
  private final int e;
  
  private final int f;
  
  private final eux g;
  
  private final int h;
  
  private euu(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, eux parameux) {
    this.b = paramInt1;
    this.c = paramInt2;
    this.d = paramInt3;
    this.e = paramInt4;
    this.f = paramInt5;
    this.g = parameux;
    paramInt3 = parameux.a();
    euw[] arrayOfEuw = parameux.b();
    paramInt4 = arrayOfEuw.length;
    paramInt2 = 0;
    for (paramInt1 = bool; paramInt1 < paramInt4; paramInt1++) {
      euw euw = arrayOfEuw[paramInt1];
      paramInt5 = euw.a();
      paramInt2 += (euw.b() + paramInt3) * paramInt5;
    } 
    this.h = paramInt2;
  }
  
  public static euu a(int paramInt1, int paramInt2) {
    if ((paramInt1 & 0x1) != 0 || (paramInt2 & 0x1) != 0)
      throw eqb.a(); 
    for (euu euu1 : a) {
      if (euu1.c == paramInt1 && euu1.d == paramInt2)
        return euu1; 
    } 
    throw eqb.a();
  }
  
  private static euu[] h() {
    return new euu[] { 
        new euu(1, 10, 10, 8, 8, new eux(5, new euw(1, 3, null), null)), new euu(2, 12, 12, 10, 10, new eux(7, new euw(1, 5, null), null)), new euu(3, 14, 14, 12, 12, new eux(10, new euw(1, 8, null), null)), new euu(4, 16, 16, 14, 14, new eux(12, new euw(1, 12, null), null)), new euu(5, 18, 18, 16, 16, new eux(14, new euw(1, 18, null), null)), new euu(6, 20, 20, 18, 18, new eux(18, new euw(1, 22, null), null)), new euu(7, 22, 22, 20, 20, new eux(20, new euw(1, 30, null), null)), new euu(8, 24, 24, 22, 22, new eux(24, new euw(1, 36, null), null)), new euu(9, 26, 26, 24, 24, new eux(28, new euw(1, 44, null), null)), new euu(10, 32, 32, 14, 14, new eux(36, new euw(1, 62, null), null)), 
        new euu(11, 36, 36, 16, 16, new eux(42, new euw(1, 86, null), null)), new euu(12, 40, 40, 18, 18, new eux(48, new euw(1, 114, null), null)), new euu(13, 44, 44, 20, 20, new eux(56, new euw(1, 144, null), null)), new euu(14, 48, 48, 22, 22, new eux(68, new euw(1, 174, null), null)), new euu(15, 52, 52, 24, 24, new eux(42, new euw(2, 102, null), null)), new euu(16, 64, 64, 14, 14, new eux(56, new euw(2, 140, null), null)), new euu(17, 72, 72, 16, 16, new eux(36, new euw(4, 92, null), null)), new euu(18, 80, 80, 18, 18, new eux(48, new euw(4, 114, null), null)), new euu(19, 88, 88, 20, 20, new eux(56, new euw(4, 144, null), null)), new euu(20, 96, 96, 22, 22, new eux(68, new euw(4, 174, null), null)), 
        new euu(21, 104, 104, 24, 24, new eux(56, new euw(6, 136, null), null)), new euu(22, 120, 120, 18, 18, new eux(68, new euw(6, 175, null), null)), new euu(23, 132, 132, 20, 20, new eux(62, new euw(8, 163, null), null)), new euu(24, 144, 144, 22, 22, new eux(62, new euw(8, 156, null), new euw(2, 155, null), null)), new euu(25, 8, 18, 6, 16, new eux(7, new euw(1, 5, null), null)), new euu(26, 8, 32, 6, 14, new eux(11, new euw(1, 10, null), null)), new euu(27, 12, 26, 10, 24, new eux(14, new euw(1, 16, null), null)), new euu(28, 12, 36, 10, 16, new eux(18, new euw(1, 22, null), null)), new euu(29, 16, 36, 14, 16, new eux(24, new euw(1, 32, null), null)), new euu(30, 16, 48, 14, 22, new eux(28, new euw(1, 49, null), null)) };
  }
  
  public int a() {
    return this.b;
  }
  
  public int b() {
    return this.c;
  }
  
  public int c() {
    return this.d;
  }
  
  public int d() {
    return this.e;
  }
  
  public int e() {
    return this.f;
  }
  
  public int f() {
    return this.h;
  }
  
  eux g() {
    return this.g;
  }
  
  public String toString() {
    return String.valueOf(this.b);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\euu.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */