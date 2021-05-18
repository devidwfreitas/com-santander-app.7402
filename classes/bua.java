import android.location.Location;
import android.os.Bundle;
import android.text.TextUtils;
import com.facebook.AccessToken;
import com.facebook.GraphRequest;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class bua {
  private static final String A = "signal_strength";
  
  private static final String B = "speed";
  
  private static final String C = "ssid";
  
  private static final String D = "summary";
  
  private static final String E = "tracking";
  
  private static final String F = "type";
  
  private static final String G = "was_here";
  
  private static final String H = "wifi";
  
  private static final String a = "search";
  
  private static final String b = "current_place/results";
  
  private static final String c = "current_place/feedback";
  
  private static final String d = "access_points";
  
  private static final String e = "accuracy";
  
  private static final String f = "altitude";
  
  private static final String g = "bluetooth";
  
  private static final String h = "categories";
  
  private static final String i = "center";
  
  private static final String j = "coordinates";
  
  private static final String k = "current_connection";
  
  private static final String l = "distance";
  
  private static final String m = "enabled";
  
  private static final String n = "fields";
  
  private static final String o = "frequency";
  
  private static final String p = "heading";
  
  private static final String q = "latitude";
  
  private static final String r = "limit";
  
  private static final String s = "longitude";
  
  private static final String t = "mac_address";
  
  private static final String u = "min_confidence_level";
  
  private static final String v = "payload";
  
  private static final String w = "place_id";
  
  private static final String x = "q";
  
  private static final String y = "rssi";
  
  private static final String z = "scans";
  
  public static GraphRequest a(bvg parambvg) {
    String str1 = parambvg.b();
    String str2 = parambvg.a();
    Boolean bool = parambvg.c();
    if (str2 == null || str1 == null || bool == null)
      throw new bhp("tracking, placeId and wasHere must be specified."); 
    Bundle bundle = new Bundle(3);
    bundle.putString("tracking", str2);
    bundle.putString("place_id", str1);
    bundle.putBoolean("was_here", bool.booleanValue());
    return new GraphRequest(AccessToken.a(), "current_place/feedback", bundle, biz.POST);
  }
  
  public static GraphRequest a(bvp parambvp) {
    String str = parambvp.a();
    if (str == null)
      throw new bhp("placeId must be specified."); 
    Bundle bundle = new Bundle(1);
    Set<String> set = parambvp.b();
    if (set != null && !set.isEmpty())
      bundle.putString("fields", TextUtils.join(",", set)); 
    return new GraphRequest(AccessToken.a(), str, bundle, biz.GET);
  }
  
  public static GraphRequest a(bvs parambvs, Location paramLocation) {
    String str = parambvs.c();
    if (paramLocation == null && str == null)
      throw new bhp("Either location or searchText must be specified."); 
    int i = parambvs.b();
    Set<String> set1 = parambvs.e();
    Set<String> set2 = parambvs.d();
    Bundle bundle = new Bundle(7);
    bundle.putString("type", "place");
    if (paramLocation != null) {
      bundle.putString("center", String.format(Locale.US, "%f,%f", new Object[] { Double.valueOf(paramLocation.getLatitude()), Double.valueOf(paramLocation.getLongitude()) }));
      int j = parambvs.a();
      if (j > 0)
        bundle.putInt("distance", j); 
    } 
    if (i > 0)
      bundle.putInt("limit", i); 
    if (!bqq.a(str))
      bundle.putString("q", str); 
    if (set2 != null && !set2.isEmpty()) {
      JSONArray jSONArray = new JSONArray();
      Iterator<String> iterator = set2.iterator();
      while (iterator.hasNext())
        jSONArray.put(iterator.next()); 
      bundle.putString("categories", jSONArray.toString());
    } 
    if (set1 != null && !set1.isEmpty())
      bundle.putString("fields", TextUtils.join(",", set1)); 
    return new GraphRequest(AccessToken.a(), "search", bundle, biz.GET);
  }
  
  private static JSONObject a(bvb parambvb) {
    JSONObject jSONObject = new JSONObject();
    jSONObject.put("mac_address", parambvb.b);
    jSONObject.put("ssid", parambvb.a);
    jSONObject.put("signal_strength", parambvb.c);
    jSONObject.put("frequency", parambvb.d);
    return jSONObject;
  }
  
  public static void a(bvj parambvj, bue parambue) {
    boolean bool;
    Location location = parambvj.a();
    bvn bvn = parambvj.b();
    buv buv = new buv();
    if (location == null) {
      bool = true;
    } else {
      bool = false;
    } 
    buv.a(bool);
    if (bvn != null && bvn == bvn.LOW_LATENCY)
      buv.c(false); 
    bun.a(buv.a(), new buc(parambue, parambvj));
  }
  
  public static void a(bvs parambvs, bue parambue) {
    buv buv = new buv();
    buv.b(false);
    buv.e(false);
    bun.a(buv.a(), new bub(parambvs, parambue));
  }
  
  private static Bundle b(bvj parambvj, bum parambum) {
    Bundle bundle;
    if (parambvj == null)
      throw new bhp("Request and location must be specified."); 
    bum bum1 = parambum;
    if (parambum == null)
      bum1 = new bum(); 
    if (bum1.a == null)
      bum1.a = parambvj.a(); 
    if (bum1.a == null)
      throw new bhp("A location must be specified"); 
    try {
      bundle = new Bundle(6);
      bundle.putString("summary", "tracking");
      int i = parambvj.d();
      if (i > 0)
        bundle.putInt("limit", i); 
      Set<String> set = parambvj.e();
      if (set != null && !set.isEmpty())
        bundle.putString("fields", TextUtils.join(",", set)); 
      Location location = bum1.a;
      JSONObject jSONObject = new JSONObject();
      jSONObject.put("latitude", location.getLatitude());
      jSONObject.put("longitude", location.getLongitude());
      if (location.hasAccuracy())
        jSONObject.put("accuracy", location.getAccuracy()); 
      if (location.hasAltitude())
        jSONObject.put("altitude", location.getAltitude()); 
      if (location.hasBearing())
        jSONObject.put("heading", location.getBearing()); 
      if (location.hasSpeed())
        jSONObject.put("speed", location.getSpeed()); 
      bundle.putString("coordinates", jSONObject.toString());
      bvm bvm = parambvj.c();
      if (bvm == bvm.LOW || bvm == bvm.MEDIUM || bvm == bvm.HIGH)
        bundle.putString("min_confidence_level", bvm.toString().toLowerCase(Locale.US)); 
      if (bum1 != null) {
        JSONObject jSONObject1 = new JSONObject();
        jSONObject1.put("enabled", bum1.c);
        bvb bvb = bum1.d;
        if (bvb != null)
          jSONObject1.put("current_connection", a(bvb)); 
        List<bvb> list1 = bum1.e;
        if (list1 != null) {
          JSONArray jSONArray = new JSONArray();
          Iterator<bvb> iterator = list1.iterator();
          while (iterator.hasNext())
            jSONArray.put(a(iterator.next())); 
          jSONObject1.put("access_points", jSONArray);
        } 
        bundle.putString("wifi", jSONObject1.toString());
        jSONObject1 = new JSONObject();
        jSONObject1.put("enabled", bum1.f);
        List<bul> list = bum1.g;
        if (list != null) {
          JSONArray jSONArray = new JSONArray();
          for (bul bul : list) {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("payload", bul.a);
            jSONObject2.put("rssi", bul.b);
            jSONArray.put(jSONObject2);
          } 
          jSONObject1.put("scans", jSONArray);
        } 
        bundle.putString("bluetooth", jSONObject1.toString());
      } 
    } catch (JSONException jSONException) {
      throw new bhp(jSONException);
    } 
    return bundle;
  }
  
  private static bud b(buz parambuz) {
    return (parambuz == buz.PERMISSION_DENIED) ? bud.LOCATION_PERMISSION_DENIED : ((parambuz == buz.DISABLED) ? bud.LOCATION_SERVICES_DISABLED : ((parambuz == buz.TIMEOUT) ? bud.LOCATION_TIMEOUT : bud.UNKNOWN_ERROR));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bua.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */