import android.content.Context;

class hcf extends hbt {
  private jos b = new jos();
  
  hcf(hbv paramhbv) {
    super(paramhbv);
  }
  
  private void b() {
    frq.d("DeepLink_LojaOnline", "Elegivel");
  }
  
  private void c() {
    frq.d("DeepLink_LojaOnline", "NaoElegivel");
  }
  
  private void c(Context paramContext) {
    this.b.a(new hcg(this, paramContext));
  }
  
  public void a(Context paramContext, hbp paramhbp) {
    String str = paramhbp.a();
    byte b = -1;
    switch (str.hashCode()) {
      default:
        switch (b) {
          default:
            return;
          case 0:
            break;
        } 
        break;
      case -198146835:
        if (str.equals("lojaOnline"))
          b = 0; 
    } 
    c(paramContext);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hcf.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */