import android.graphics.PointF;
import android.support.v4.util.SparseArrayCompat;
import android.support.v4.view.animation.PathInterpolatorCompat;
import android.view.animation.Interpolator;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

public class aya {
  private static SparseArrayCompat<WeakReference<Interpolator>> a;
  
  private static SparseArrayCompat<WeakReference<Interpolator>> a() {
    if (a == null)
      a = new SparseArrayCompat(); 
    return a;
  }
  
  public static <T> axz<T> a(JSONObject paramJSONObject, awr paramawr, float paramFloat, bbv<T> parambbv) {
    Interpolator interpolator;
    Object object;
    float f = 0.0F;
    if (paramJSONObject.has("t")) {
      int i;
      f = (float)paramJSONObject.optDouble("t", 0.0D);
      Object object1 = paramJSONObject.opt("s");
      if (object1 != null) {
        object1 = parambbv.b(object1, paramFloat);
      } else {
        object1 = null;
      } 
      Object object2 = paramJSONObject.opt("e");
      if (object2 != null) {
        parambbv = (bbv<T>)parambbv.b(object2, paramFloat);
      } else {
        parambbv = null;
      } 
      JSONObject jSONObject = paramJSONObject.optJSONObject("o");
      object2 = paramJSONObject.optJSONObject("i");
      if (jSONObject != null && object2 != null) {
        PointF pointF = bes.a(jSONObject, paramFloat);
        object2 = bes.a((JSONObject)object2, paramFloat);
      } else {
        object2 = null;
        jSONObject = null;
      } 
      if (paramJSONObject.optInt("h", 0) == 1) {
        i = 1;
      } else {
        i = 0;
      } 
      if (i) {
        interpolator = axz.d();
        object = object1;
      } else if (jSONObject != null) {
        ((PointF)jSONObject).x = bex.b(((PointF)jSONObject).x, -paramFloat, paramFloat);
        ((PointF)jSONObject).y = bex.b(((PointF)jSONObject).y, -100.0F, 100.0F);
        ((PointF)object2).x = bex.b(((PointF)object2).x, -paramFloat, paramFloat);
        ((PointF)object2).y = bex.b(((PointF)object2).y, -100.0F, 100.0F);
        i = bey.a(((PointF)jSONObject).x, ((PointF)jSONObject).y, ((PointF)object2).x, ((PointF)object2).y);
        WeakReference<Interpolator> weakReference = (WeakReference)a().get(i);
        if (weakReference != null) {
          interpolator = weakReference.get();
        } else {
          paramJSONObject = null;
        } 
        if (weakReference == null || paramJSONObject == null) {
          interpolator = PathInterpolatorCompat.create(((PointF)jSONObject).x / paramFloat, ((PointF)jSONObject).y / paramFloat, ((PointF)object2).x / paramFloat, ((PointF)object2).y / paramFloat);
          try {
            a().put(i, new WeakReference<Interpolator>(interpolator));
            paramFloat = f;
          } catch (ArrayIndexOutOfBoundsException arrayIndexOutOfBoundsException) {
            paramFloat = f;
          } 
          return new axz<T>(paramawr, (T)object1, (T)object, interpolator, paramFloat, null);
        } 
      } else {
        interpolator = axz.d();
      } 
    } else {
      object = object.b(interpolator, paramFloat);
      interpolator = null;
      Object object1 = object;
      paramFloat = f;
      return new axz<T>(paramawr, (T)object1, (T)object, interpolator, paramFloat, null);
    } 
    paramFloat = f;
  }
  
  public static <T> List<axz<T>> a(JSONArray paramJSONArray, awr paramawr, float paramFloat, bbv<T> parambbv) {
    int j = paramJSONArray.length();
    if (j == 0)
      return Collections.emptyList(); 
    ArrayList<? extends axz<?>> arrayList = new ArrayList();
    int i;
    for (i = 0; i < j; i++)
      arrayList.add(a(paramJSONArray.optJSONObject(i), paramawr, paramFloat, parambbv)); 
    axz.a(arrayList);
    return (List)arrayList;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\aya.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */