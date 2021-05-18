public class chj implements chm {
  public float a(cip paramcip, cii paramcii) {
    float f1 = paramcii.N();
    float f2 = paramcii.O();
    cgt cgt = paramcii.aL();
    if (paramcip.M() > 0.0F && paramcip.L() < 0.0F)
      return 0.0F; 
    if (cgt.f() > 0.0F)
      f1 = 0.0F; 
    if (cgt.e() < 0.0F)
      f2 = 0.0F; 
    if (paramcip.L() < 0.0F)
      f2 = f1; 
    return f2;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\chj.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */