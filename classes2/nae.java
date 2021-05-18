import android.util.Log;

class nae implements ih {
  nae(nad paramnad, ih paramih) {}
  
  public void onFailure(is paramis) {
    Log.e("ERROR_CREATE_DLCRYPTO", paramis.b());
    this.a.onFailure(paramis);
  }
  
  public void onSuccess(is paramis) {
    naa naa = mys.a().<naa>a(paramis.c().toString(), naa.class);
    nad.a(this.b, naa.a());
    this.b.a(naa.a());
    this.a.onSuccess(paramis);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\nae.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */