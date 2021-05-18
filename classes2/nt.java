import android.content.Context;
import android.util.Log;

class nt implements ih {
  nt(ns paramns, nu paramnu, Context paramContext) {}
  
  public void onFailure(is paramis) {
    this.a.a(new aby(paramis.a().intValue(), paramis.b()));
  }
  
  public void onSuccess(is paramis) {
    try {
      Log.e("URL GET RETORNO", paramis.c().toString());
      this.a.a((abv)(new eju()).j().a(paramis.c().toString(), nr.class));
      return;
    } catch (Exception exception) {
      Log.e("Erro de parse", exception.toString());
      this.a.a(new aby(paramis.a().intValue(), this.b.getResources().getString(lg.error_generic)));
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\nt.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */