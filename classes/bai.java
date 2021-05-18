import android.graphics.PointF;
import org.json.JSONArray;
import org.json.JSONObject;

public class bai implements bbv<PointF> {
  public static final bai a = new bai();
  
  public PointF a(Object paramObject, float paramFloat) {
    if (paramObject instanceof JSONArray)
      return bes.a((JSONArray)paramObject, paramFloat); 
    if (paramObject instanceof JSONObject)
      return bes.a((JSONObject)paramObject, paramFloat); 
    throw new IllegalArgumentException("Unable to parse point from " + paramObject);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bai.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */