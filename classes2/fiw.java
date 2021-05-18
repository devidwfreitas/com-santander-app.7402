import android.util.Log;

class fiw implements ih {
  fiw(fiu paramfiu) {}
  
  public void onFailure(is paramis) {
    String str;
    if (paramis.c() == null) {
      str = "Error";
    } else {
      str = str.c().toString();
    } 
    Log.v("Failure", str);
  }
  
  public void onSuccess(is paramis) {
    Log.v("SUCCESS", paramis.c().toString());
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fiw.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */