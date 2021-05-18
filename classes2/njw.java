import java.util.Locale;
import org.json.JSONObject;

final class njw extends njr {
  njw(String paramString1, String paramString2, JSONObject paramJSONObject, nhp paramnhp) {
    super(paramString1, paramString2, paramJSONObject);
  }
  
  public void g() {
    super.g();
    if (b() != null) {
      String str;
      if (f() == null) {
        str = String.format(Locale.ROOT, "try {\tutag.mobile.remote_api.response[\"%s\"][\"%s\"](%d);} catch(err) {\tconsole.error(err);};", new Object[] { a(), b(), Integer.valueOf(e()) });
      } else {
        str = String.format(Locale.ROOT, "try {\tutag.mobile.remote_api.response[\"%s\"][\"%s\"](%d, %s);} catch(err) {\tconsole.error(err);};", new Object[] { a(), b(), Integer.valueOf(e()), JSONObject.quote(f()) });
      } 
      this.c.a(new nia(str));
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\njw.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */