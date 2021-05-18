import android.net.Uri;
import com.facebook.FacebookRequestError;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

class bmn implements bim {
  bmn(bml parambml, fu paramfu, Map paramMap, HashSet paramHashSet) {}
  
  public void a(bix parambix) {
    FacebookRequestError facebookRequestError = parambix.a();
    if (facebookRequestError != null) {
      this.a.b(facebookRequestError.n());
      return;
    } 
    JSONObject jSONObject = parambix.b();
    if (jSONObject == null) {
      this.a.b(this.b);
      return;
    } 
    Iterator<Uri> iterator = this.c.iterator();
    label35: while (true) {
      if (iterator.hasNext()) {
        Uri uri = iterator.next();
        if (jSONObject.has(uri.toString()))
          try {
            JSONObject jSONObject1 = jSONObject.getJSONObject(uri.toString()).getJSONObject("app_links");
            JSONArray jSONArray = jSONObject1.getJSONArray("android");
            int j = jSONArray.length();
            ArrayList<el> arrayList = new ArrayList(j);
            for (int i = 0;; i++) {
              if (i < j) {
                el el = bml.a(jSONArray.getJSONObject(i));
                if (el != null)
                  arrayList.add(el); 
              } else {
                ek ek = new ek(uri, arrayList, bml.a(uri, jSONObject1));
                this.b.put(uri, ek);
                HashMap hashMap = bml.a(this.d);
                /* monitor enter ClassFileLocalVariableReferenceExpression{type=ObjectType{java/util/HashMap}, name=null} */
                try {
                  bml.a(this.d).put(uri, ek);
                  /* monitor exit ClassFileLocalVariableReferenceExpression{type=ObjectType{java/util/HashMap}, name=null} */
                } finally {}
                continue label35;
              } 
            } 
            break;
          } catch (JSONException jSONException) {
            continue;
          }  
        continue;
      } 
      this.a.b(this.b);
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bmn.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */