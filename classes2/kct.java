import android.os.AsyncTask;
import android.util.Log;
import java.util.HashSet;

public class kct extends AsyncTask<kcc, Void, kcb> {
  private gkv a;
  
  public kct(gkv paramgkv) {
    this.a = paramgkv;
  }
  
  private String b(String paramString) {
    naf naf = new naf();
    if (miq.C().h() == null)
      return ""; 
    try {
      return naf.b(naf.a(paramString).getBytes("UTF-8"));
    } catch (Exception exception) {
      return "";
    } 
  }
  
  public String a(String paramString) {
    HashSet<String> hashSet = new HashSet();
    hashSet.add("dataHash");
    return b(mxj.a(paramString, "//soapenv:Body", hashSet).toString());
  }
  
  protected kcb a(kcc... paramVarArgs) {
    kcc kcc1 = paramVarArgs[0];
    String str = (new mzd()).a(kcc1, "notificarPhishing");
    str = str.replace("</texto>", "</texto><dataHash>" + a(str) + "</dataHash>");
    str = jcd.a(has.ao(), str, "", false);
    if (str != null)
      try {
        return (new mzd<kcb>()).a(kcb.class, str);
      } catch (Exception exception) {
        Log.e("ERROR_LOG_SMS)", exception.getMessage());
      }  
    return null;
  }
  
  protected void a(kcb paramkcb) {
    this.a.a(paramkcb);
  }
  
  protected void onPreExecute() {
    super.onPreExecute();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\kct.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */