import org.json.JSONObject;

class bcs {
  static bcq a(JSONObject paramJSONObject) {
    return new bcq(paramJSONObject.optString("nm"), bct.access$000(paramJSONObject.optInt("mm", 1)), null);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bcs.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */