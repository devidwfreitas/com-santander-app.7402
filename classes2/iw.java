import java.util.List;
import java.util.Map;
import org.json.JSONObject;

public class iw {
  protected Integer a = null;
  
  protected String b = null;
  
  protected JSONObject c = null;
  
  protected Map<String, List<String>> d = null;
  
  public iw() {}
  
  public iw(Integer paramInteger) {
    a(paramInteger);
  }
  
  public iw(Integer paramInteger, String paramString) {
    a(paramInteger);
    a(paramString);
  }
  
  public Integer a() {
    return this.a;
  }
  
  public void a(Integer paramInteger) {
    this.a = paramInteger;
  }
  
  public void a(String paramString) {
    this.b = paramString;
  }
  
  public void a(Map<String, List<String>> paramMap) {
    this.d = paramMap;
  }
  
  public void a(JSONObject paramJSONObject) {
    this.c = paramJSONObject;
  }
  
  public String b() {
    return this.b;
  }
  
  public JSONObject c() {
    return this.c;
  }
  
  public Map<String, List<String>> d() {
    return this.d;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\iw.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */