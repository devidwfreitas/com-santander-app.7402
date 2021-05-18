import android.net.Uri;
import org.json.JSONArray;
import org.json.JSONObject;

public class bok {
  private static final String a = "\\|";
  
  private static final String b = "name";
  
  private static final String c = "versions";
  
  private static final String d = "url";
  
  private String e;
  
  private String f;
  
  private Uri g;
  
  private int[] h;
  
  private bok(String paramString1, String paramString2, Uri paramUri, int[] paramArrayOfint) {
    this.e = paramString1;
    this.f = paramString2;
    this.g = paramUri;
    this.h = paramArrayOfint;
  }
  
  public static bok a(JSONObject paramJSONObject) {
    Uri uri = null;
    String str = paramJSONObject.optString("name");
    if (!bqq.a(str)) {
      String[] arrayOfString = str.split("\\|");
      if (arrayOfString.length == 2) {
        str = arrayOfString[0];
        String str1 = arrayOfString[1];
        if (!bqq.a(str) && !bqq.a(str1)) {
          String str2 = paramJSONObject.optString("url");
          if (!bqq.a(str2))
            uri = Uri.parse(str2); 
          return new bok(str, str1, uri, a(paramJSONObject.optJSONArray("versions")));
        } 
      } 
    } 
    return null;
  }
  
  private static int[] a(JSONArray paramJSONArray) {
    int[] arrayOfInt = null;
    if (paramJSONArray != null) {
      int j = paramJSONArray.length();
      arrayOfInt = new int[j];
      for (int i = 0; i < j; i++) {
        int m = paramJSONArray.optInt(i, -1);
        int k = m;
        if (m == -1) {
          String str = paramJSONArray.optString(i);
          k = m;
          if (!bqq.a(str))
            try {
              k = Integer.parseInt(str);
            } catch (NumberFormatException numberFormatException) {
              bqq.a("FacebookSDK", numberFormatException);
              k = -1;
            }  
        } 
        arrayOfInt[i] = k;
      } 
    } 
    return arrayOfInt;
  }
  
  public String a() {
    return this.e;
  }
  
  public String b() {
    return this.f;
  }
  
  public Uri c() {
    return this.g;
  }
  
  public int[] d() {
    return this.h;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bok.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */