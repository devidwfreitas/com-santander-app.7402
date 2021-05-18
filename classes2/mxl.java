import android.graphics.Bitmap;
import android.util.Log;
import java.util.UUID;

public class mxl {
  public static String a() {
    int i;
    int j;
    int k;
    Bitmap bitmap;
    ezn ezn = new ezn();
    try {
      ett ett = ezn.a(b(), epu.QR_CODE, 300, 300);
      j = ett.f();
      k = ett.g();
      bitmap = Bitmap.createBitmap(j, k, Bitmap.Config.RGB_565);
      i = 0;
    } catch (eqr eqr) {
      Log.e("Error", eqr.toString());
      return "";
    } 
    while (true) {
      if (i < j) {
        for (int m = 0; m < k; m++) {
          byte b;
          if (eqr.a(i, m)) {
            b = -16777216;
          } else {
            b = -1;
          } 
          bitmap.setPixel(i, m, b);
        } 
        i++;
        continue;
      } 
      return mym.a(bitmap);
    } 
  }
  
  public static String b() {
    return UUID.randomUUID().toString();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mxl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */