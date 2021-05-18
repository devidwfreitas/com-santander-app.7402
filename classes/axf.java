import org.json.JSONObject;

class axf {
  static axd a(JSONObject paramJSONObject) {
    return new axd(paramJSONObject.optInt("w"), paramJSONObject.optInt("h"), paramJSONObject.optString("id"), paramJSONObject.optString("p"), null);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\axf.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */