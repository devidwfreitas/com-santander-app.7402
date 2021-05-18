import com.facebook.share.model.ShareOpenGraphObject;
import java.util.Iterator;
import org.json.JSONException;
import org.json.JSONObject;

class bwl implements bnp<String> {
  bwl(bvy parambvy, ShareOpenGraphObject paramShareOpenGraphObject, JSONObject paramJSONObject) {}
  
  public Object a(String paramString) {
    return this.a.a(paramString);
  }
  
  public Iterator<String> a() {
    return this.a.c().iterator();
  }
  
  public void a(String paramString, Object paramObject, bnq parambnq) {
    try {
      this.b.put(paramString, paramObject);
      return;
    } catch (JSONException jSONException) {
      paramObject = jSONException.getLocalizedMessage();
      Object object = paramObject;
      if (paramObject == null)
        object = "Error staging object."; 
      parambnq.a(new bhp((String)object));
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bwl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */