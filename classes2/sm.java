import android.content.Context;
import android.util.Log;

class sm implements ih {
  sm(sl paramsl, sn paramsn, Context paramContext) {}
  
  public void onFailure(is paramis) {
    Log.d("INVEBR-imperativaErro", paramis.b());
    this.a.a(new aby(paramis.a().intValue(), paramis.b()));
  }
  
  public void onSuccess(is paramis) {
    try {
      lk lk = (new eju()).j().<lk>a(paramis.c().toString(), lk.class);
      lk.g();
      Log.d("INVEBR-imperativa", paramis.c().toString());
      this.a.a((abv)lk);
      return;
    } catch (Exception exception) {
      this.a.a(new aby(paramis.a().intValue(), this.b.getResources().getString(lg.error_generic)));
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\sm.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */