import android.graphics.PointF;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

public class bba implements bbu<PointF, PointF> {
  private final List<azg> a = new ArrayList<azg>();
  
  private PointF b;
  
  bba() {
    this.b = new PointF(0.0F, 0.0F);
  }
  
  bba(Object paramObject, awr paramawr) {
    if (a(paramObject)) {
      paramObject = paramObject;
      int j = paramObject.length();
      for (int i = 0; i < j; i++) {
        azg azg = azi.a(paramObject.optJSONObject(i), paramawr, bbb.a());
        this.a.add(azg);
      } 
      axz.a((List)this.a);
      return;
    } 
    this.b = bes.a((JSONArray)paramObject, paramawr.p());
  }
  
  public static bbu<PointF, PointF> a(JSONObject paramJSONObject, awr paramawr) {
    return (bbu<PointF, PointF>)(paramJSONObject.has("k") ? new bba(paramJSONObject.opt("k"), paramawr) : new bbl(baq.a(paramJSONObject.optJSONObject("x"), paramawr), baq.a(paramJSONObject.optJSONObject("y"), paramawr)));
  }
  
  private boolean a(Object paramObject) {
    if (!(paramObject instanceof JSONArray))
      return false; 
    paramObject = ((JSONArray)paramObject).opt(0);
    return (paramObject instanceof JSONObject && ((JSONObject)paramObject).has("t"));
  }
  
  public ayy<PointF, PointF> a() {
    return (ayy<PointF, PointF>)(!a_() ? new azo<PointF, PointF>(this.b) : new azj((List)this.a));
  }
  
  public boolean a_() {
    return !this.a.isEmpty();
  }
  
  public String toString() {
    return "initialPoint=" + this.b;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bba.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */