import android.graphics.PointF;
import org.json.JSONArray;
import org.json.JSONObject;

public class bes {
  public static float a(Object paramObject) {
    return (paramObject instanceof Float) ? ((Float)paramObject).floatValue() : ((paramObject instanceof Integer) ? ((Integer)paramObject).intValue() : ((paramObject instanceof Double) ? (float)((Double)paramObject).doubleValue() : ((paramObject instanceof JSONArray) ? (float)((JSONArray)paramObject).optDouble(0) : 0.0F)));
  }
  
  public static PointF a(JSONArray paramJSONArray, float paramFloat) {
    if (paramJSONArray.length() < 2)
      throw new IllegalArgumentException("Unable to parse point for " + paramJSONArray); 
    return new PointF((float)paramJSONArray.optDouble(0, 1.0D) * paramFloat, (float)paramJSONArray.optDouble(1, 1.0D) * paramFloat);
  }
  
  public static PointF a(JSONObject paramJSONObject, float paramFloat) {
    return new PointF(a(paramJSONObject.opt("x")) * paramFloat, a(paramJSONObject.opt("y")) * paramFloat);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bes.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */