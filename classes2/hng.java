import android.util.Log;

class hng implements gkv<hla> {
  hng(hnc paramhnc, hxl paramhxl, hmz paramhmz) {}
  
  public void a(hla paramhla) {
    try {
      if (paramhla.a()) {
        this.a.a((hlh)paramhla);
        hnc.a(this.c, this.b);
        hnc.b(this.c).h();
        return;
      } 
      this.b.b();
      return;
    } catch (Exception exception) {
      Log.e("CancelamentoRepository", "cancelarCP", exception);
      this.b.b();
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hng.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */