import android.util.Log;

class hsw extends hsz {
  hsw(hsp paramhsp, hso paramhso1, boolean paramBoolean, hso paramhso2) {
    super(paramhso1);
  }
  
  public void a() {
    if (hsp.c(this.c) == null) {
      Log.e("CPConsigRepositoryImpl", "simularEmprestimo", new hou());
      d();
      return;
    } 
    hsp.c(this.c).setSeguro(this.a);
    hsp.a(this.c).a(hsp.c(this.c), new hsx(this));
  }
  
  public void b() {
    if (hsp.d(this.c) == null) {
      Log.e("CPConsigRepositoryImpl", "simularEmprestimo", new hou());
      d();
      return;
    } 
    hsp.d(this.c).setSecureFlag(this.a);
    hsp.b(this.c).a(hsp.d(this.c), new hsy(this));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hsw.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */