import android.content.Context;
import android.content.res.Resources;
import android.graphics.Rect;
import android.os.AsyncTask;
import android.support.annotation.Nullable;
import android.support.v4.util.LongSparseArray;
import android.util.Log;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class awt {
  public static awj a(Context paramContext, InputStream paramInputStream, axg paramaxg) {
    bab bab = new bab(paramContext.getResources(), paramaxg);
    bab.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, (Object[])new InputStream[] { paramInputStream });
    return bab;
  }
  
  public static awj a(Context paramContext, String paramString, axg paramaxg) {
    try {
      InputStream inputStream = paramContext.getAssets().open(paramString);
      return a(paramContext, inputStream, paramaxg);
    } catch (IOException iOException) {
      throw new IllegalStateException("Unable to find file " + paramString, iOException);
    } 
  }
  
  public static awj a(Resources paramResources, JSONObject paramJSONObject, axg paramaxg) {
    bag bag = new bag(paramResources, paramaxg);
    bag.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, (Object[])new JSONObject[] { paramJSONObject });
    return bag;
  }
  
  public static awr a(Context paramContext, String paramString) {
    try {
      InputStream inputStream = paramContext.getAssets().open(paramString);
      return a(paramContext.getResources(), inputStream);
    } catch (IOException iOException) {
      throw new IllegalStateException("Unable to find file " + paramString, iOException);
    } 
  }
  
  @Nullable
  public static awr a(Resources paramResources, InputStream paramInputStream) {
    try {
      byte[] arrayOfByte = new byte[paramInputStream.available()];
      paramInputStream.read(arrayOfByte);
      return a(paramResources, new JSONObject(new String(arrayOfByte, "UTF-8")));
    } catch (IOException iOException) {
      Log.e("LOTTIE", "Failed to load composition.", new IllegalStateException("Unable to find file.", iOException));
      return null;
    } catch (JSONException jSONException) {
      Log.e("LOTTIE", "Failed to load composition.", new IllegalStateException("Unable to load JSON.", (Throwable)jSONException));
      return null;
    } finally {
      bey.a(paramInputStream);
    } 
  }
  
  public static awr a(Resources paramResources, JSONObject paramJSONObject) {
    float f1 = (paramResources.getDisplayMetrics()).density;
    int i = paramJSONObject.optInt("w", -1);
    int j = paramJSONObject.optInt("h", -1);
    if (i != -1 && j != -1) {
      Rect rect = new Rect(0, 0, (int)(i * f1), (int)(j * f1));
      long l3 = paramJSONObject.optLong("ip", 0L);
      long l4 = paramJSONObject.optLong("op", 0L);
      float f = (float)paramJSONObject.optDouble("fr", 0.0D);
      String[] arrayOfString1 = paramJSONObject.optString("v").split("[.]");
      awr awr1 = new awr(rect, l3, l4, f, f1, Integer.parseInt(arrayOfString1[0]), Integer.parseInt(arrayOfString1[1]), Integer.parseInt(arrayOfString1[2]), null);
      JSONArray jSONArray1 = paramJSONObject.optJSONArray("assets");
      b(jSONArray1, awr1);
      a(jSONArray1, awr1);
      b(paramJSONObject.optJSONObject("fonts"), awr1);
      c(paramJSONObject.optJSONArray("chars"), awr1);
      a(paramJSONObject, awr1);
      return awr1;
    } 
    paramResources = null;
    long l1 = paramJSONObject.optLong("ip", 0L);
    long l2 = paramJSONObject.optLong("op", 0L);
    float f2 = (float)paramJSONObject.optDouble("fr", 0.0D);
    String[] arrayOfString = paramJSONObject.optString("v").split("[.]");
    awr awr = new awr((Rect)paramResources, l1, l2, f2, f1, Integer.parseInt(arrayOfString[0]), Integer.parseInt(arrayOfString[1]), Integer.parseInt(arrayOfString[2]), null);
    JSONArray jSONArray = paramJSONObject.optJSONArray("assets");
    b(jSONArray, awr);
    a(jSONArray, awr);
    b(paramJSONObject.optJSONObject("fonts"), awr);
    c(paramJSONObject.optJSONArray("chars"), awr);
    a(paramJSONObject, awr);
    return awr;
  }
  
  private static void a(List<bee> paramList, LongSparseArray<bee> paramLongSparseArray, bee parambee) {
    paramList.add(parambee);
    paramLongSparseArray.put(parambee.e(), parambee);
  }
  
  private static void a(@Nullable JSONArray paramJSONArray, awr paramawr) {
    if (paramJSONArray != null) {
      int j = paramJSONArray.length();
      int i = 0;
      while (true) {
        if (i < j) {
          JSONObject jSONObject = paramJSONArray.optJSONObject(i);
          JSONArray jSONArray = jSONObject.optJSONArray("layers");
          if (jSONArray != null) {
            ArrayList<bee> arrayList = new ArrayList(jSONArray.length());
            LongSparseArray longSparseArray = new LongSparseArray();
            for (int k = 0; k < jSONArray.length(); k++) {
              bee bee = beg.a(jSONArray.optJSONObject(k), paramawr);
              longSparseArray.put(bee.e(), bee);
              arrayList.add(bee);
            } 
            String str = jSONObject.optString("id");
            awr.c(paramawr).put(str, arrayList);
          } 
          i++;
          continue;
        } 
        return;
      } 
    } 
  }
  
  private static void a(JSONObject paramJSONObject, awr paramawr) {
    int i = 0;
    JSONArray jSONArray = paramJSONObject.optJSONArray("layers");
    if (jSONArray != null) {
      int k = jSONArray.length();
      int j = 0;
      while (j < k) {
        bee bee = beg.a(jSONArray.optJSONObject(j), paramawr);
        int m = i;
        if (bee.k() == beh.Image)
          m = i + 1; 
        a(awr.a(paramawr), awr.b(paramawr), bee);
        j++;
        i = m;
      } 
      if (i > 4) {
        paramawr.a("You have " + i + " images. Lottie should primarily be " + "used with shapes. If you are using Adobe Illustrator, convert the Illustrator layers" + " to shape layers.");
        return;
      } 
    } 
  }
  
  private static void b(@Nullable JSONArray paramJSONArray, awr paramawr) {
    if (paramJSONArray != null) {
      int j = paramJSONArray.length();
      int i = 0;
      while (true) {
        if (i < j) {
          JSONObject jSONObject = paramJSONArray.optJSONObject(i);
          if (jSONObject.has("p")) {
            axd axd = axf.a(jSONObject);
            awr.d(paramawr).put(axd.c(), axd);
          } 
          i++;
          continue;
        } 
        return;
      } 
    } 
  }
  
  private static void b(@Nullable JSONObject paramJSONObject, awr paramawr) {
    if (paramJSONObject != null) {
      JSONArray jSONArray = paramJSONObject.optJSONArray("list");
      if (jSONArray != null) {
        int j = jSONArray.length();
        int i = 0;
        while (true) {
          if (i < j) {
            bac bac = bad.a(jSONArray.optJSONObject(i));
            awr.e(paramawr).put(bac.b(), bac);
            i++;
            continue;
          } 
          return;
        } 
      } 
    } 
  }
  
  private static void c(@Nullable JSONArray paramJSONArray, awr paramawr) {
    if (paramJSONArray != null) {
      int j = paramJSONArray.length();
      int i = 0;
      while (true) {
        if (i < j) {
          bae bae = baf.a(paramJSONArray.optJSONObject(i), paramawr);
          awr.f(paramawr).put(bae.hashCode(), bae);
          i++;
          continue;
        } 
        return;
      } 
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\awt.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */