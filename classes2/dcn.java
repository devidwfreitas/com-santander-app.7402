abstract class dcn {
  private final dcl a;
  
  protected dcn(dcl paramdcl) {
    this.a = paramdcl;
  }
  
  protected abstract void a();
  
  public final void a(dcm paramdcm) {
    dcm.a(paramdcm).lock();
    try {
      dcl dcl1 = dcm.b(paramdcm);
      dcl dcl2 = this.a;
      if (dcl1 != dcl2)
        return; 
      a();
      return;
    } finally {
      dcm.a(paramdcm).unlock();
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dcn.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */