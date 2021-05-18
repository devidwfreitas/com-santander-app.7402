import android.os.AsyncTask;
import android.util.Log;
import org.json.JSONObject;

class aqv extends AsyncTask<String, Void, JSONObject> {
  private aqv() {}
  
  protected JSONObject a(String... paramVarArgs) {
    try {
      ary.b().a(aqt.b(), aqt.a(aqt.c().x(), aqt.b()));
      ary.b().a(aqt.c());
    } catch (aqd aqd) {
      Log.e("[ChatComponent]", "==>Ocorreu um erro ChatServiceException: ".concat(aqd.getMessage()), aqd);
    } catch (Exception exception) {
      Log.e("[ChatComponent]", "==>Ocorreu um erro Exception: ".concat(exception.getMessage()), exception);
    } 
    return null;
  }
  
  protected void a(JSONObject paramJSONObject) {
    super.onPostExecute(paramJSONObject);
    aqt.a(ard.a());
    if (aqt.c().q() != null) {
      switch (aqu.a[aqt.c().q().ordinal()]) {
        default:
          if (aqt.d() != null)
            aqt.d().a(false); 
          return;
        case 1:
        case 2:
        case 3:
          break;
      } 
      if (aqt.d() != null) {
        aqt.d().a(true);
        return;
      } 
      return;
    } 
    if (aqt.c().k() != 0) {
      arh arh = new arh();
      arh.a(aqt.c().l());
      arh.b(aqt.c().z());
      if (aqt.d() != null)
        aqt.d().a(arh); 
    } 
    if (aqt.d() != null) {
      aqt.d().a(false);
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\aqv.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */