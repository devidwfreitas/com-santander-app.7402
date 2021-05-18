import android.util.Log;

class hnh implements ih {
  hnh(hnc paramhnc, hxl paramhxl, hmz paramhmz) {}
  
  public void onFailure(is paramis) {
    hnc.a(this.c).l();
    hle hle = mys.a().<hle>a(paramis.b(), hle.class);
    this.a.a((hlh)hle);
    Log.e("CancelamentoRepository", "cancelarConsig", new Exception("StatusCode: " + paramis.a() + "\nResponse: " + paramis.b()));
    this.b.b();
  }
  
  public void onSuccess(is paramis) {
    try {
      hnc.a(this.c).l();
      hle hle = mys.a().<hle>a(paramis.c().toString(), hle.class);
      this.a.a((hlh)hle);
      hnc.a(this.c, this.b);
      hnc.b(this.c).h();
      return;
    } catch (Exception exception) {
      Log.e("CancelamentoRepository", "cancelarConsig", exception);
      onFailure(paramis);
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hnh.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */