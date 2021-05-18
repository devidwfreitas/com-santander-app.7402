import android.content.Context;
import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.PointF;
import android.os.Build;
import android.provider.Settings;
import android.support.annotation.Nullable;
import android.util.DisplayMetrics;
import android.view.WindowManager;
import java.io.Closeable;

public final class bey {
  private static final PathMeasure a = new PathMeasure();
  
  private static final Path b = new Path();
  
  private static final Path c = new Path();
  
  private static DisplayMetrics d;
  
  private static final float[] e = new float[4];
  
  private static final float f = (float)Math.sqrt(2.0D);
  
  public static float a(Matrix paramMatrix) {
    e[0] = 0.0F;
    e[1] = 0.0F;
    e[2] = f;
    e[3] = f;
    paramMatrix.mapPoints(e);
    float f1 = e[2];
    float f2 = e[0];
    float f3 = e[3];
    float f4 = e[1];
    return (float)Math.hypot((f1 - f2), (f3 - f4)) / 2.0F;
  }
  
  public static int a(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4) {
    int j = 17;
    if (paramFloat1 != 0.0F)
      j = (int)('ȏ' * paramFloat1); 
    int i = j;
    if (paramFloat2 != 0.0F)
      i = (int)((j * 31) * paramFloat2); 
    j = i;
    if (paramFloat3 != 0.0F)
      j = (int)((i * 31) * paramFloat3); 
    i = j;
    if (paramFloat4 != 0.0F)
      i = (int)((j * 31) * paramFloat4); 
    return i;
  }
  
  static int a(Context paramContext) {
    if (d == null)
      d = new DisplayMetrics(); 
    ((WindowManager)paramContext.getSystemService("window")).getDefaultDisplay().getMetrics(d);
    return d.widthPixels;
  }
  
  public static Path a(PointF paramPointF1, PointF paramPointF2, PointF paramPointF3, PointF paramPointF4) {
    Path path = new Path();
    path.moveTo(paramPointF1.x, paramPointF1.y);
    if (paramPointF3 != null && paramPointF4 != null && (paramPointF3.length() != 0.0F || paramPointF4.length() != 0.0F)) {
      path.cubicTo(paramPointF1.x + paramPointF3.x, paramPointF1.y + paramPointF3.y, paramPointF2.x + paramPointF4.x, paramPointF2.y + paramPointF4.y, paramPointF2.x, paramPointF2.y);
      return path;
    } 
    path.lineTo(paramPointF2.x, paramPointF2.y);
    return path;
  }
  
  public static void a(Path paramPath, float paramFloat1, float paramFloat2, float paramFloat3) {
    awm.a("applyTrimPathIfNeeded");
    a.setPath(paramPath, false);
    float f2 = a.getLength();
    if (paramFloat1 == 1.0F && paramFloat2 == 0.0F) {
      awm.b("applyTrimPathIfNeeded");
      return;
    } 
    if (f2 < 1.0F || Math.abs(paramFloat2 - paramFloat1 - 1.0F) < 0.01D) {
      awm.b("applyTrimPathIfNeeded");
      return;
    } 
    float f1 = f2 * paramFloat1;
    paramFloat2 = f2 * paramFloat2;
    paramFloat1 = Math.min(f1, paramFloat2);
    f1 = Math.max(f1, paramFloat2);
    paramFloat3 *= f2;
    paramFloat2 = paramFloat1 + paramFloat3;
    f1 += paramFloat3;
    paramFloat3 = paramFloat2;
    paramFloat1 = f1;
    if (paramFloat2 >= f2) {
      paramFloat3 = paramFloat2;
      paramFloat1 = f1;
      if (f1 >= f2) {
        paramFloat3 = bex.a(paramFloat2, f2);
        paramFloat1 = bex.a(f1, f2);
      } 
    } 
    paramFloat2 = paramFloat3;
    if (paramFloat3 < 0.0F)
      paramFloat2 = bex.a(paramFloat3, f2); 
    paramFloat3 = paramFloat1;
    if (paramFloat1 < 0.0F)
      paramFloat3 = bex.a(paramFloat1, f2); 
    if (paramFloat2 == paramFloat3) {
      paramPath.reset();
      awm.b("applyTrimPathIfNeeded");
      return;
    } 
    paramFloat1 = paramFloat2;
    if (paramFloat2 >= paramFloat3)
      paramFloat1 = paramFloat2 - f2; 
    b.reset();
    a.getSegment(paramFloat1, paramFloat3, b, true);
    if (paramFloat3 > f2) {
      c.reset();
      a.getSegment(0.0F, paramFloat3 % f2, c, true);
      b.addPath(c);
    } else if (paramFloat1 < 0.0F) {
      c.reset();
      a.getSegment(paramFloat1 + f2, f2, c, true);
      b.addPath(c);
    } 
    paramPath.set(b);
    awm.b("applyTrimPathIfNeeded");
  }
  
  public static void a(Path paramPath, @Nullable ayw paramayw) {
    if (paramayw == null)
      return; 
    a(paramPath, ((Float)paramayw.d().b()).floatValue() / 100.0F, ((Float)paramayw.e().b()).floatValue() / 100.0F, ((Float)paramayw.f().b()).floatValue() / 360.0F);
  }
  
  public static void a(Closeable paramCloseable) {
    if (paramCloseable != null)
      try {
        paramCloseable.close();
        return;
      } catch (RuntimeException runtimeException) {
        throw runtimeException;
      } catch (Exception exception) {
        return;
      }  
  }
  
  public static boolean a(awr paramawr, int paramInt1, int paramInt2, int paramInt3) {
    boolean bool2 = true;
    if (paramawr.e() < paramInt1)
      return false; 
    boolean bool1 = bool2;
    if (paramawr.e() <= paramInt1) {
      if (paramawr.f() < paramInt2)
        return false; 
      bool1 = bool2;
      if (paramawr.f() <= paramInt2) {
        bool1 = bool2;
        if (paramawr.g() < paramInt3)
          return false; 
      } 
    } 
    return bool1;
  }
  
  static int b(Context paramContext) {
    if (d == null)
      d = new DisplayMetrics(); 
    ((WindowManager)paramContext.getSystemService("window")).getDefaultDisplay().getMetrics(d);
    return d.heightPixels;
  }
  
  public static float c(Context paramContext) {
    return (Build.VERSION.SDK_INT >= 17) ? Settings.Global.getFloat(paramContext.getContentResolver(), "animator_duration_scale", 1.0F) : Settings.System.getFloat(paramContext.getContentResolver(), "animator_duration_scale", 1.0F);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bey.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */