import android.util.Log;

class gnw implements ih {
  gnw(gnv paramgnv) {}
  
  public void onFailure(is paramis) {
    if (gnv.a() == 0) {
      gnv.b();
      gnv.c(this.a);
      return;
    } 
    gnp.a().a(false);
  }
  
  public void onSuccess(is paramis) {
    gnp.a().a(true);
    try {
      gnp.a().b().a(gnv.a(this.a), new gnx(this));
      return;
    } catch (Exception exception) {
      Log.e("ERROR_RECONN_HUB", exception.getMessage());
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\gnw.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */