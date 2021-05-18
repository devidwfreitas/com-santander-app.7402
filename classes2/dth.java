public final class dth<O extends coy> {
  private final boolean a = true;
  
  private final int b;
  
  private final cox<O> c;
  
  private final O d;
  
  private dth(cox<O> paramcox) {
    this.c = paramcox;
    this.d = null;
    this.b = System.identityHashCode(this);
  }
  
  private dth(cox<O> paramcox, O paramO) {
    this.c = paramcox;
    this.d = paramO;
    this.b = csg.a(new Object[] { this.c, this.d });
  }
  
  public static <O extends coy> dth<O> a(cox<O> paramcox) {
    return new dth<O>(paramcox);
  }
  
  public static <O extends coy> dth<O> a(cox<O> paramcox, O paramO) {
    return new dth<O>(paramcox, paramO);
  }
  
  public String a() {
    return this.c.d();
  }
  
  public boolean equals(Object paramObject) {
    if (paramObject != this) {
      if (!(paramObject instanceof dth))
        return false; 
      paramObject = paramObject;
      if (this.a || ((dth)paramObject).a || !csg.a(this.c, ((dth)paramObject).c) || !csg.a(this.d, ((dth)paramObject).d))
        return false; 
    } 
    return true;
  }
  
  public int hashCode() {
    return this.b;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dth.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */