import android.net.Uri;
import com.facebook.Profile;
import org.json.JSONObject;

public final class bjd implements bqt {
  public void a(bhp parambhp) {}
  
  public void a(JSONObject paramJSONObject) {
    String str1 = paramJSONObject.optString("id");
    if (str1 == null)
      return; 
    String str6 = paramJSONObject.optString("link");
    String str2 = paramJSONObject.optString("first_name");
    String str3 = paramJSONObject.optString("middle_name");
    String str4 = paramJSONObject.optString("last_name");
    String str5 = paramJSONObject.optString("name");
    if (str6 != null) {
      Uri uri = Uri.parse(str6);
    } else {
      paramJSONObject = null;
    } 
    Profile.a(new Profile(str1, str2, str3, str4, str5, (Uri)paramJSONObject));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bjd.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */