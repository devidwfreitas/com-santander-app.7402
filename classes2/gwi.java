import android.util.Log;

class gwi implements ih {
  gwi(gwe paramgwe, String paramString) {}
  
  public void onFailure(is paramis) {
    Log.d("SaldoRepository", "consultarValoresBloqueados\n" + paramis.b());
  }
  
  public void onSuccess(is paramis) {
    is is1 = new is();
    is1.a(paramis.d());
    is1.a(gwe.a(this.b, this.a, paramis.c().toString()));
    gwe.a(this.b, paramis.c().toString(), false);
    Log.d("SaldoRepository", "consultarValoresBloqueados\n" + paramis.c().toString());
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\gwi.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */