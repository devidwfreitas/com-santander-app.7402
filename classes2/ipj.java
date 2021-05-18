import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONObject;

public class ipj {
  public static JSONObject a() {
    ArrayList<ipd> arrayList = new ArrayList();
    int j = miq.C().f().q().a().size();
    for (int i = 0; i < j; i++)
      arrayList.add(new ipd(i)); 
    JSONObject jSONObject = new JSONObject();
    jSONObject.put("Contracts", (new JSONObject()).put("Contract", new JSONArray(mys.a().b(arrayList))));
    return jSONObject;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ipj.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */