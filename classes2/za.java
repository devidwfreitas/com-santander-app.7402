import android.content.Context;
import android.util.Log;

class za implements ih {
  za(yz paramyz, zb paramzb, Context paramContext) {}
  
  public void onFailure(is paramis) {
    Log.d("INVEBR-consultivaErro", paramis.b());
    this.a.a(new aby(paramis.a().intValue(), paramis.b()));
  }
  
  public void onSuccess(is paramis) {
    try {
      Log.d("INVEBR-consultiva", paramis.c().toString());
      this.a.a((abv)(new eju()).j().a(paramis.c().toString(), yr.class));
      return;
    } catch (Exception exception) {
      this.a.a(new aby(paramis.a().intValue(), this.b.getResources().getString(lg.error_generic)));
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\za.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */