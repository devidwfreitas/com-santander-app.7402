import android.util.Log;

public class frj {
  public frb a(frf paramfrf) {
    mzd<frb> mzd = new mzd();
    try {
      String str = mzd.a(paramfrf, "detalhar");
      str = jcd.a(has.L(), str, "", false);
      if (str != null)
        return mzd.a(frb.class, mzd.a(str, "return", Boolean.valueOf(false))); 
    } catch (Exception exception) {
      Log.e("Error", exception.toString());
    } 
    return null;
  }
  
  public frb b(frf paramfrf) {
    mzd<frb> mzd = new mzd();
    try {
      String str = mzd.a(paramfrf, "cancelar");
      str = jcd.a(has.L(), str, "", false);
      if (str != null)
        return mzd.a(frb.class, mzd.a(str, "return", Boolean.valueOf(false))); 
    } catch (Exception exception) {
      Log.e("Error", exception.getMessage());
    } 
    return null;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\frj.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */