import android.util.Log;

final class aio implements ih {
  aio(aim paramaim) {}
  
  public final void onFailure(is paramis) {
    aim.a(this.a).b(paramis);
  }
  
  public final void onSuccess(is paramis) {
    try {
      aim.a(this.a).a(paramis);
      return;
    } catch (Exception exception) {
      paramis.a(Log.getStackTraceString(exception));
      aim.a(this.a).b(paramis);
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\aio.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */