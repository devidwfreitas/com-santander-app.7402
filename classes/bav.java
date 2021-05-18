import android.graphics.Color;
import android.support.annotation.IntRange;
import android.util.Log;
import org.json.JSONArray;

class bav implements bbv<bce> {
  private final int a;
  
  private bav(int paramInt) {
    this.a = paramInt;
  }
  
  @IntRange(from = 0L, to = 255L)
  private int a(double paramDouble, double[] paramArrayOfdouble1, double[] paramArrayOfdouble2) {
    int i;
    for (i = 1; i < paramArrayOfdouble1.length; i++) {
      double d1 = paramArrayOfdouble1[i - 1];
      double d2 = paramArrayOfdouble1[i];
      if (paramArrayOfdouble1[i] >= paramDouble) {
        paramDouble = (paramDouble - d1) / (d2 - d1);
        return (int)(bex.a(paramArrayOfdouble2[i - 1], paramArrayOfdouble2[i], paramDouble) * 255.0D);
      } 
    } 
    return (int)(paramArrayOfdouble2[paramArrayOfdouble2.length - 1] * 255.0D);
  }
  
  private void a(bce parambce, JSONArray paramJSONArray) {
    boolean bool = false;
    int i = this.a * 4;
    if (paramJSONArray.length() > i) {
      int j = (paramJSONArray.length() - i) / 2;
      double[] arrayOfDouble1 = new double[j];
      double[] arrayOfDouble2 = new double[j];
      int k = 0;
      while (true) {
        j = bool;
        if (i < paramJSONArray.length()) {
          if (i % 2 == 0) {
            arrayOfDouble1[k] = paramJSONArray.optDouble(i);
          } else {
            arrayOfDouble2[k] = paramJSONArray.optDouble(i);
            k++;
          } 
          i++;
          continue;
        } 
        break;
      } 
      while (true) {
        if (j < parambce.c()) {
          i = parambce.b()[j];
          i = Color.argb(a(parambce.a()[j], arrayOfDouble1, arrayOfDouble2), Color.red(i), Color.green(i), Color.blue(i));
          parambce.b()[j] = i;
          j++;
          continue;
        } 
        return;
      } 
    } 
  }
  
  public bce a(Object paramObject, float paramFloat) {
    int i = 0;
    paramObject = paramObject;
    float[] arrayOfFloat = new float[this.a];
    int[] arrayOfInt = new int[this.a];
    bce bce = new bce(arrayOfFloat, arrayOfInt);
    if (paramObject.length() != this.a * 4)
      Log.w("LOTTIE", "Unexpected gradient length: " + paramObject.length() + ". Expected " + (this.a * 4) + ". This may affect the appearance of the gradient. " + "Make sure to save your After Effects file before exporting an animation with " + "gradients."); 
    int k = 0;
    int j = 0;
    while (i < this.a * 4) {
      int m = i / 4;
      double d = paramObject.optDouble(i);
      switch (i % 4) {
        case 0:
          arrayOfFloat[m] = (float)d;
          i++;
          break;
        case 1:
          j = (int)(d * 255.0D);
          i++;
          break;
        case 2:
          k = (int)(d * 255.0D);
          i++;
          break;
        case 3:
          arrayOfInt[m] = Color.argb(255, j, k, (int)(d * 255.0D));
          i++;
          break;
      } 
    } 
    a(bce, (JSONArray)paramObject);
    return bce;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bav.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */