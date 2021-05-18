import android.graphics.PointF;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

public class bdf implements bbv<bdd> {
  public static final bdf a = new bdf();
  
  private static PointF a(int paramInt, JSONArray paramJSONArray) {
    float f1;
    if (paramInt >= paramJSONArray.length())
      throw new IllegalArgumentException("Invalid index " + paramInt + ". There are only " + paramJSONArray.length() + " points."); 
    JSONArray jSONArray = paramJSONArray.optJSONArray(paramInt);
    Object object1 = jSONArray.opt(0);
    Object object2 = jSONArray.opt(1);
    if (object1 instanceof Double) {
      f1 = (new Float(((Double)object1).doubleValue())).floatValue();
    } else {
      f1 = ((Integer)object1).intValue();
    } 
    if (object2 instanceof Double) {
      float f = (new Float(((Double)object2).doubleValue())).floatValue();
      return new PointF(f1, f);
    } 
    float f2 = ((Integer)object2).intValue();
    return new PointF(f1, f2);
  }
  
  public bdd a(Object paramObject, float paramFloat) {
    JSONObject jSONObject = null;
    if (paramObject instanceof JSONArray) {
      paramObject = ((JSONArray)paramObject).opt(0);
      if (paramObject instanceof JSONObject && ((JSONObject)paramObject).has("v")) {
        paramObject = paramObject;
      } else {
        paramObject = null;
      } 
      object = paramObject;
    } else {
      object = jSONObject;
      if (paramObject instanceof JSONObject) {
        object = jSONObject;
        if (((JSONObject)paramObject).has("v"))
          object = paramObject; 
      } 
    } 
    if (object == null)
      return null; 
    JSONArray jSONArray3 = object.optJSONArray("v");
    JSONArray jSONArray1 = object.optJSONArray("i");
    JSONArray jSONArray2 = object.optJSONArray("o");
    boolean bool = object.optBoolean("c", false);
    if (jSONArray3 == null || jSONArray1 == null || jSONArray2 == null || jSONArray3.length() != jSONArray1.length() || jSONArray3.length() != jSONArray2.length())
      throw new IllegalStateException("Unable to process points array or tangents. " + object); 
    if (jSONArray3.length() == 0)
      return new bdd(new PointF(), false, Collections.emptyList(), null); 
    int j = jSONArray3.length();
    paramObject = a(0, jSONArray3);
    ((PointF)paramObject).x *= paramFloat;
    ((PointF)paramObject).y *= paramFloat;
    Object object = new ArrayList(j);
    for (int i = 1; i < j; i++) {
      PointF pointF1 = a(i, jSONArray3);
      PointF pointF3 = a(i - 1, jSONArray3);
      PointF pointF4 = a(i - 1, jSONArray2);
      PointF pointF2 = a(i, jSONArray1);
      pointF3 = bex.a(pointF3, pointF4);
      pointF2 = bex.a(pointF1, pointF2);
      pointF3.x *= paramFloat;
      pointF3.y *= paramFloat;
      pointF2.x *= paramFloat;
      pointF2.y *= paramFloat;
      pointF1.x *= paramFloat;
      pointF1.y *= paramFloat;
      object.add(new azy(pointF3, pointF2, pointF1));
    } 
    if (bool) {
      PointF pointF4 = a(0, jSONArray3);
      PointF pointF3 = a(j - 1, jSONArray3);
      PointF pointF2 = a(j - 1, jSONArray2);
      PointF pointF1 = a(0, jSONArray1);
      pointF2 = bex.a(pointF3, pointF2);
      pointF1 = bex.a(pointF4, pointF1);
      if (paramFloat != 1.0F) {
        pointF2.x *= paramFloat;
        pointF2.y *= paramFloat;
        pointF1.x *= paramFloat;
        pointF1.y *= paramFloat;
        pointF4.x *= paramFloat;
        pointF4.y *= paramFloat;
      } 
      object.add(new azy(pointF2, pointF1, pointF4));
    } 
    return new bdd((PointF)paramObject, bool, (List)object, null);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bdf.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */