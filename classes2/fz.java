import android.content.Context;
import android.net.Uri;
import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URLConnection;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

public class fz implements ep {
  private static final String b = "javascript:boltsWebViewAppLinkResolverResult.setValue((function() {  var metaTags = document.getElementsByTagName('meta');  var results = [];  for (var i = 0; i < metaTags.length; i++) {    var property = metaTags[i].getAttribute('property');    if (property && property.substring(0, 'al:'.length) === 'al:') {      var tag = { \"property\": metaTags[i].getAttribute('property') };      if (metaTags[i].hasAttribute('content')) {        tag['content'] = metaTags[i].getAttribute('content');      }      results.push(tag);    }  }  return JSON.stringify(results);})())";
  
  private static final String c = "Prefer-Html-Meta-Tags";
  
  private static final String d = "al";
  
  private static final String e = "value";
  
  private static final String f = "app_name";
  
  private static final String g = "class";
  
  private static final String h = "package";
  
  private static final String i = "url";
  
  private static final String j = "should_fallback";
  
  private static final String k = "url";
  
  private static final String l = "web";
  
  private static final String m = "android";
  
  private final Context a;
  
  public fz(Context paramContext) {
    this.a = paramContext;
  }
  
  private static Uri a(String paramString) {
    return (paramString == null) ? null : Uri.parse(paramString);
  }
  
  private static List<Map<String, Object>> a(Map<String, Object> paramMap, String paramString) {
    List<?> list2 = (List)paramMap.get(paramString);
    List<?> list1 = list2;
    if (list2 == null)
      list1 = Collections.emptyList(); 
    return (List)list1;
  }
  
  private static ek b(Map<String, Object> paramMap, Uri paramUri) {
    ArrayList<el> arrayList = new ArrayList();
    List<?> list2 = (List)paramMap.get("android");
    List<?> list1 = list2;
    if (list2 == null)
      list1 = Collections.emptyList(); 
    for (Map<String, Object> map : list1) {
      List<Map<String, Object>> list3 = a(map, "url");
      List<Map<String, Object>> list4 = a(map, "package");
      List<Map<String, Object>> list5 = a(map, "class");
      List<Map<String, Object>> list6 = a(map, "app_name");
      int j = Math.max(list3.size(), Math.max(list4.size(), Math.max(list5.size(), list6.size())));
      for (int i = 0; i < j; i++) {
        if (list3.size() > i) {
          map = (Map<String, Object>)((Map)list3.get(i)).get("value");
        } else {
          map = null;
        } 
        Uri uri1 = a((String)map);
        if (list4.size() > i) {
          map = (Map<String, Object>)((Map)list4.get(i)).get("value");
        } else {
          map = null;
        } 
        String str1 = (String)map;
        if (list5.size() > i) {
          map = (Map<String, Object>)((Map)list5.get(i)).get("value");
        } else {
          map = null;
        } 
        String str2 = (String)map;
        if (list6.size() > i) {
          map = (Map<String, Object>)((Map)list6.get(i)).get("value");
        } else {
          map = null;
        } 
        arrayList.add(new el(str1, str2, uri1, (String)map));
      } 
    } 
    List<Map> list = (List)paramMap.get("web");
    if (list != null && list.size() > 0) {
      Uri uri1;
      Map map = list.get(0);
      list2 = (List)map.get("url");
      List<Map> list3 = (List)map.get("should_fallback");
      String str = (String)((Map)list3.get(0)).get("value");
      if (list3 != null && list3.size() > 0 && Arrays.<String>asList(new String[] { "no", "false", "0" }).contains(str.toLowerCase())) {
        str = null;
      } else {
        uri1 = paramUri;
      } 
      Uri uri2 = uri1;
      if (uri1 != null) {
        uri2 = uri1;
        if (list2 != null) {
          uri2 = uri1;
          if (list2.size() > 0)
            uri2 = a((String)((Map)list2.get(0)).get("value")); 
        } 
      } 
      return new ek(paramUri, arrayList, uri2);
    } 
    Uri uri = paramUri;
    return new ek(paramUri, arrayList, uri);
  }
  
  private static String b(URLConnection paramURLConnection) {
    InputStream inputStream;
    int i = 0;
    if (paramURLConnection instanceof HttpURLConnection) {
      InputStream inputStream1;
      HttpURLConnection httpURLConnection = (HttpURLConnection)paramURLConnection;
      try {
        inputStream1 = paramURLConnection.getInputStream();
      } catch (Exception exception) {
        inputStream1 = httpURLConnection.getErrorStream();
      } 
      inputStream = inputStream1;
    } else {
      inputStream = paramURLConnection.getInputStream();
    } 
    try {
      ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
      byte[] arrayOfByte = new byte[1024];
      while (true) {
        String[] arrayOfString;
        int j = inputStream.read(arrayOfByte);
        if (j != -1) {
          byteArrayOutputStream.write(arrayOfByte, 0, j);
          continue;
        } 
        String str4 = paramURLConnection.getContentEncoding();
        String str3 = str4;
        if (str4 == null) {
          arrayOfString = paramURLConnection.getContentType().split(";");
          j = arrayOfString.length;
          while (true) {
            str1 = str4;
            if (i < j) {
              str1 = arrayOfString[i].trim();
              if (str1.startsWith("charset=")) {
                str1 = str1.substring("charset=".length());
                break;
              } 
              i++;
              continue;
            } 
            break;
          } 
        } else {
          str1 = new String(byteArrayOutputStream.toByteArray(), (String)arrayOfString);
          return str1;
        } 
        String str2 = str1;
        if (str1 == null)
          str2 = "UTF-8"; 
        String str1 = new String(byteArrayOutputStream.toByteArray(), str2);
        return str1;
      } 
    } finally {
      inputStream.close();
    } 
  }
  
  private static Map<String, Object> b(JSONArray paramJSONArray) {
    HashMap<Object, Object> hashMap = new HashMap<Object, Object>();
    for (int i = 0; i < paramJSONArray.length(); i++) {
      JSONObject jSONObject = paramJSONArray.getJSONObject(i);
      String[] arrayOfString = jSONObject.getString("property").split(":");
      if (arrayOfString[0].equals("al")) {
        int j = 1;
        HashMap<Object, Object> hashMap1 = hashMap;
        while (j < arrayOfString.length) {
          List<Map> list = (List)hashMap1.get(arrayOfString[j]);
          if (list == null) {
            list = new ArrayList();
            hashMap1.put(arrayOfString[j], list);
          } 
          if (list.size() > 0) {
            Map map = list.get(list.size() - 1);
          } else {
            hashMap1 = null;
          } 
          if (hashMap1 == null || j == arrayOfString.length - 1) {
            hashMap1 = new HashMap<Object, Object>();
            list.add(hashMap1);
          } 
          j++;
        } 
        if (jSONObject.has("content"))
          if (jSONObject.isNull("content")) {
            hashMap1.put("value", null);
          } else {
            hashMap1.put("value", jSONObject.getString("content"));
          }  
      } 
    } 
    return (Map)hashMap;
  }
  
  public fd<ek> a(Uri paramUri) {
    ez ez1 = new ez();
    ez ez2 = new ez();
    return fd.a(new ge(this, paramUri, ez1, ez2)).d(new gb(this, ez2, paramUri, ez1), fd.b).c(new ga(this, paramUri));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fz.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */