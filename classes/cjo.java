public class cjo {
  public int a;
  
  public int b;
  
  public int c;
  
  protected cjo(cjn paramcjn) {}
  
  public void a(cid paramcid, cil<cid> paramcil) {
    int i;
    boolean bool = false;
    float f1 = Math.max(0.0F, Math.min(1.0F, this.d.g.b()));
    float f2 = paramcid.C();
    float f3 = paramcid.D();
    paramcid = paramcil.a(f2, Float.NaN, cgr.DOWN);
    cid cid1 = (cid)paramcil.a(f3, Float.NaN, cgr.UP);
    if (paramcid == null) {
      i = 0;
    } else {
      i = paramcil.h(paramcid);
    } 
    this.a = i;
    if (cid1 == null) {
      i = bool;
    } else {
      i = paramcil.h(cid1);
    } 
    this.b = i;
    this.c = (int)((this.b - this.a) * f1);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\cjo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */