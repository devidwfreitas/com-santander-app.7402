import com.google.android.gms.location.LocationSettingsResult;

final class djk extends diz {
  private dao<LocationSettingsResult> a;
  
  public djk(dao<LocationSettingsResult> paramdao) {
    boolean bool;
    if (paramdao != null) {
      bool = true;
    } else {
      bool = false;
    } 
    csp.b(bool, "listener can't be null.");
    this.a = paramdao;
  }
  
  public void a(LocationSettingsResult paramLocationSettingsResult) {
    this.a.a(paramLocationSettingsResult);
    this.a = null;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\djk.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */