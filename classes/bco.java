import org.json.JSONObject;

public class bco {
  public static bcm a(JSONObject paramJSONObject, awr paramawr) {
    String str = paramJSONObject.optString("mode");
    byte b = -1;
    switch (str.hashCode()) {
      default:
        switch (b) {
          default:
            bcp = bcp.MaskModeUnknown;
            return new bcm(bcp, bbk.a(paramJSONObject.optJSONObject("pt"), paramawr), bay.a(paramJSONObject.optJSONObject("o"), paramawr), null);
          case 0:
            bcp = bcp.MaskModeAdd;
            return new bcm(bcp, bbk.a(paramJSONObject.optJSONObject("pt"), paramawr), bay.a(paramJSONObject.optJSONObject("o"), paramawr), null);
          case 1:
            bcp = bcp.MaskModeSubtract;
            return new bcm(bcp, bbk.a(paramJSONObject.optJSONObject("pt"), paramawr), bay.a(paramJSONObject.optJSONObject("o"), paramawr), null);
          case 2:
            break;
        } 
        break;
      case 97:
        if (bcp.equals("a"))
          b = 0; 
      case 115:
        if (bcp.equals("s"))
          b = 1; 
      case 105:
        if (bcp.equals("i"))
          b = 2; 
    } 
    bcp bcp = bcp.MaskModeIntersect;
    return new bcm(bcp, bbk.a(paramJSONObject.optJSONObject("pt"), paramawr), bay.a(paramJSONObject.optJSONObject("o"), paramawr), null);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bco.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */