import android.support.annotation.RestrictTo;
import android.support.v4.os.TraceCompat;

@RestrictTo({RestrictTo.Scope.LIBRARY})
public class awm {
  public static final String a = "LOTTIE";
  
  public static final boolean b = false;
  
  private static final int c = 20;
  
  private static boolean d = false;
  
  private static String[] e;
  
  private static long[] f;
  
  private static int g = 0;
  
  private static int h = 0;
  
  public static void a(String paramString) {
    if (!d)
      return; 
    if (g == 20) {
      h++;
      return;
    } 
    e[g] = paramString;
    f[g] = System.nanoTime();
    TraceCompat.beginSection(paramString);
    g++;
  }
  
  public static void a(boolean paramBoolean) {
    if (d != paramBoolean) {
      d = paramBoolean;
      if (d) {
        e = new String[20];
        f = new long[20];
        return;
      } 
    } 
  }
  
  public static float b(String paramString) {
    if (h > 0) {
      h--;
      return 0.0F;
    } 
    if (d) {
      g--;
      if (g == -1)
        throw new IllegalStateException("Can't end trace section. There are none."); 
      if (!paramString.equals(e[g]))
        throw new IllegalStateException("Unbalanced trace call " + paramString + ". Expected " + e[g] + "."); 
      TraceCompat.endSection();
      return (float)(System.nanoTime() - f[g]) / 1000000.0F;
    } 
    return 0.0F;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\awm.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */