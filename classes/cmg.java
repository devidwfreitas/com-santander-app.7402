public class cmg {
  public final boolean a;
  
  public final boolean b;
  
  public final int c;
  
  public final long d;
  
  public final String e;
  
  public final String f;
  
  public final String g;
  
  public long h;
  
  public cmg(long paramLong1, String paramString1, String paramString2, boolean paramBoolean1, boolean paramBoolean2, String paramString3, long paramLong2, int paramInt) {
    this.h = paramLong1;
    this.g = paramString1;
    this.f = paramString2;
    this.b = paramBoolean1;
    this.a = paramBoolean2;
    this.e = paramString3;
    this.d = paramLong2;
    this.c = paramInt;
  }
  
  public cmg(String paramString, cms paramcms, boolean paramBoolean1, boolean paramBoolean2) {
    this.g = paramString;
    this.b = paramBoolean2;
    this.a = paramBoolean1;
    this.h = 0L;
    this.d = cmn.a();
    this.c = 0;
    if (!paramBoolean2 && paramBoolean1) {
      this.f = cmn.b(paramcms);
      this.e = cmn.a(paramcms);
      return;
    } 
    this.f = null;
    this.e = null;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\cmg.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */