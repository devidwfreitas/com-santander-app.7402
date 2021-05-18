import android.graphics.Color;
import android.graphics.Rect;
import java.util.ArrayList;
import java.util.Collections;
import org.json.JSONArray;
import org.json.JSONObject;

public class beg {
  public static bee a(awr paramawr) {
    Rect rect = paramawr.c();
    return new bee(Collections.emptyList(), paramawr, "root", -1L, beh.PreComp, -1L, null, Collections.emptyList(), bbt.a(), 0, 0, 0, 0.0F, 0.0F, rect.width(), rect.height(), null, null, Collections.emptyList(), bei.None, null, null);
  }
  
  public static bee a(JSONObject paramJSONObject, awr paramawr) {
    beh beh1;
    bbm bbm;
    bao bao;
    String str1 = paramJSONObject.optString("nm");
    String str2 = paramJSONObject.optString("refId");
    if (str1.endsWith(".ai") || paramJSONObject.optString("cl", "").equals("ai"))
      paramawr.a("Convert your Illustrator layers to shape layers."); 
    long l1 = paramJSONObject.optLong("ind");
    int i = 0;
    int j = 0;
    int k = 0;
    boolean bool = false;
    int n = 0;
    int m = paramJSONObject.optInt("ty", -1);
    if (m < beh.Unknown.ordinal()) {
      beh1 = beh.values()[m];
    } else {
      beh1 = beh.Unknown;
    } 
    beh beh2 = beh1;
    if (beh1 == beh.Text) {
      beh2 = beh1;
      if (!bey.a(paramawr, 4, 8, 0)) {
        beh2 = beh.Unknown;
        paramawr.a("Text is only supported on bodymovin >= 4.8.0");
      } 
    } 
    long l2 = paramJSONObject.optLong("parent", -1L);
    if (beh2 == beh.Solid) {
      i = (int)(paramJSONObject.optInt("sw") * paramawr.p());
      j = (int)(paramJSONObject.optInt("sh") * paramawr.p());
      k = Color.parseColor(paramJSONObject.optString("sc"));
    } 
    bbr bbr = bbt.a(paramJSONObject.optJSONObject("ks"), paramawr);
    bei bei = bei.values()[paramJSONObject.optInt("tt")];
    ArrayList<bcm> arrayList = new ArrayList();
    ArrayList arrayList1 = new ArrayList();
    JSONArray jSONArray = paramJSONObject.optJSONArray("masksProperties");
    if (jSONArray != null)
      for (m = 0; m < jSONArray.length(); m++)
        arrayList.add(bco.a(jSONArray.optJSONObject(m), paramawr));  
    ArrayList<bcd> arrayList2 = new ArrayList();
    jSONArray = paramJSONObject.optJSONArray("shapes");
    if (jSONArray != null)
      for (m = 0; m < jSONArray.length(); m++) {
        bcd bcd = bdj.a(jSONArray.optJSONObject(m), paramawr);
        if (bcd != null)
          arrayList2.add(bcd); 
      }  
    jSONArray = null;
    bbp bbp = null;
    JSONObject jSONObject = paramJSONObject.optJSONObject("t");
    if (jSONObject != null) {
      bbm = bbn.a(jSONObject.optJSONObject("d"), paramawr);
      bbp = bbq.a(jSONObject.optJSONArray("a").optJSONObject(0), paramawr);
    } 
    if (paramJSONObject.has("ef"))
      paramawr.a("Lottie doesn't support layer effects. If you are using them for  fills, strokes, trim paths etc. then try adding them directly as contents  in your shape."); 
    float f2 = (float)paramJSONObject.optDouble("sr", 1.0D);
    float f3 = (float)paramJSONObject.optDouble("st") / paramawr.o();
    m = bool;
    if (beh2 == beh.PreComp) {
      m = (int)(paramJSONObject.optInt("w") * paramawr.p());
      n = (int)(paramJSONObject.optInt("h") * paramawr.p());
    } 
    float f4 = (float)paramJSONObject.optLong("ip") / f2;
    float f1 = (float)paramJSONObject.optLong("op") / f2;
    if (f4 > 0.0F)
      arrayList1.add(new axz<Float>(paramawr, Float.valueOf(0.0F), Float.valueOf(0.0F), null, 0.0F, Float.valueOf(f4))); 
    if (f1 <= 0.0F)
      f1 = (float)(paramawr.i() + 1L); 
    arrayList1.add(new axz<Float>(paramawr, Float.valueOf(1.0F), Float.valueOf(1.0F), null, f4, Float.valueOf(f1)));
    arrayList1.add(new axz<Float>(paramawr, Float.valueOf(0.0F), Float.valueOf(0.0F), null, f1, Float.valueOf(Float.MAX_VALUE)));
    jSONObject = null;
    if (paramJSONObject.has("tm"))
      bao = baq.a(paramJSONObject.optJSONObject("tm"), paramawr, false); 
    return new bee(arrayList2, paramawr, str1, l1, beh2, l2, str2, arrayList, bbr, i, j, k, f2, f3, m, n, bbm, bbp, arrayList1, bei, bao, null);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\beg.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */