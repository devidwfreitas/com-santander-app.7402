import android.support.annotation.Nullable;
import android.util.Log;
import java.util.Arrays;
import java.util.List;
import org.json.JSONObject;

public class bdj implements bcd {
  private final String a;
  
  private final List<bcd> b;
  
  public bdj(String paramString, List<bcd> paramList) {
    this.a = paramString;
    this.b = paramList;
  }
  
  @Nullable
  public static bcd a(JSONObject paramJSONObject, awr paramawr) {
    String str = paramJSONObject.optString("ty");
    byte b = -1;
    switch (str.hashCode()) {
      default:
        switch (b) {
          default:
            Log.w("LOTTIE", "Unknown shape type " + str);
            return null;
          case 0:
            return bdk.a(paramJSONObject, paramawr);
          case 1:
            return bdq.a(paramJSONObject, paramawr);
          case 2:
            return bck.a(paramJSONObject, paramawr);
          case 3:
            return bdi.a(paramJSONObject, paramawr);
          case 4:
            return bch.a(paramJSONObject, paramawr);
          case 5:
            return bbt.a(paramJSONObject, paramawr);
          case 6:
            return bdn.a(paramJSONObject, paramawr);
          case 7:
            return bcc.a(paramJSONObject, paramawr);
          case 8:
            return bda.a(paramJSONObject, paramawr);
          case 9:
            return bdv.a(paramJSONObject, paramawr);
          case 10:
            return bcw.a(paramJSONObject, paramawr);
          case 11:
            return bcs.a(paramJSONObject);
          case 12:
            break;
        } 
        return bdc.a(paramJSONObject, paramawr);
      case 3307:
        if (str.equals("gr"))
          b = 0; 
      case 3681:
        if (str.equals("st"))
          b = 1; 
      case 3308:
        if (str.equals("gs"))
          b = 2; 
      case 3270:
        if (str.equals("fl"))
          b = 3; 
      case 3295:
        if (str.equals("gf"))
          b = 4; 
      case 3710:
        if (str.equals("tr"))
          b = 5; 
      case 3669:
        if (str.equals("sh"))
          b = 6; 
      case 3239:
        if (str.equals("el"))
          b = 7; 
      case 3633:
        if (str.equals("rc"))
          b = 8; 
      case 3705:
        if (str.equals("tm"))
          b = 9; 
      case 3679:
        if (str.equals("sr"))
          b = 10; 
      case 3488:
        if (str.equals("mm"))
          b = 11; 
      case 3646:
        break;
    } 
    if (str.equals("rp"))
      b = 12; 
  }
  
  public aye a(awu paramawu, bdy parambdy) {
    return new ayf(paramawu, parambdy, this);
  }
  
  public String a() {
    return this.a;
  }
  
  public List<bcd> b() {
    return this.b;
  }
  
  public String toString() {
    return "ShapeGroup{name='" + this.a + "' Shapes: " + Arrays.toString(this.b.toArray()) + '}';
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bdj.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */