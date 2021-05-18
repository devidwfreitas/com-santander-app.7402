import android.util.Log;

final class ahb implements ih {
  ahb(agz paramagz) {}
  
  public final void onFailure(is paramis) {
    agz.a(this.a).b(paramis);
  }
  
  public final void onSuccess(is paramis) {
    try {
      agz.a(this.a).a(paramis);
      return;
    } catch (Exception exception) {
      paramis.a(Log.getStackTraceString(exception));
      agz.a(this.a).b(paramis);
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\ahb.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */