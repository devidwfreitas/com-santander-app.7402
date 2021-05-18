import android.graphics.Bitmap;
import java.util.Map;

public class fcp {
  private static final int a = -1;
  
  private static final int b = -16777216;
  
  public Bitmap a(ett paramett) {
    int j = paramett.f();
    int k = paramett.g();
    int[] arrayOfInt = new int[j * k];
    for (int i = 0; i < k; i++) {
      for (int m = 0; m < j; m++) {
        byte b;
        if (paramett.a(m, i)) {
          b = -16777216;
        } else {
          b = -1;
        } 
        arrayOfInt[i * j + m] = b;
      } 
    } 
    Bitmap bitmap = Bitmap.createBitmap(j, k, Bitmap.Config.ARGB_8888);
    bitmap.setPixels(arrayOfInt, 0, j, 0, 0, j, k);
    return bitmap;
  }
  
  public ett a(String paramString, epu paramepu, int paramInt1, int paramInt2) {
    try {
      return (new eqf()).a(paramString, paramepu, paramInt1, paramInt2);
    } catch (eqr eqr) {
      throw eqr;
    } catch (Exception exception) {
      throw new eqr(exception);
    } 
  }
  
  public ett a(String paramString, epu paramepu, int paramInt1, int paramInt2, Map<eqa, ?> paramMap) {
    try {
      return (new eqf()).a(paramString, paramepu, paramInt1, paramInt2, paramMap);
    } catch (eqr eqr) {
      throw eqr;
    } catch (Exception exception) {
      throw new eqr(exception);
    } 
  }
  
  public Bitmap b(String paramString, epu paramepu, int paramInt1, int paramInt2) {
    return a(a(paramString, paramepu, paramInt1, paramInt2));
  }
  
  public Bitmap b(String paramString, epu paramepu, int paramInt1, int paramInt2, Map<eqa, ?> paramMap) {
    return a(a(paramString, paramepu, paramInt1, paramInt2, paramMap));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fcp.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */