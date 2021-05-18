class dkj {
  final String a;
  
  final String b;
  
  final long c;
  
  final long d;
  
  final long e;
  
  dkj(String paramString1, String paramString2, long paramLong1, long paramLong2, long paramLong3) {
    boolean bool1;
    csp.a(paramString1);
    csp.a(paramString2);
    if (paramLong1 >= 0L) {
      bool1 = true;
    } else {
      bool1 = false;
    } 
    csp.b(bool1);
    if (paramLong2 >= 0L) {
      bool1 = bool2;
    } else {
      bool1 = false;
    } 
    csp.b(bool1);
    this.a = paramString1;
    this.b = paramString2;
    this.c = paramLong1;
    this.d = paramLong2;
    this.e = paramLong3;
  }
  
  dkj a() {
    return new dkj(this.a, this.b, this.c + 1L, this.d + 1L, this.e);
  }
  
  dkj a(long paramLong) {
    return new dkj(this.a, this.b, this.c, this.d, paramLong);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dkj.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */