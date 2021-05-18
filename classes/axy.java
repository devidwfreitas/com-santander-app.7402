import android.support.annotation.Nullable;
import android.support.annotation.VisibleForTesting;
import com.airbnb.lottie.LottieAnimationView;
import java.util.HashMap;
import java.util.Map;

public class axy {
  private final Map<String, String> a = new HashMap<String, String>();
  
  @Nullable
  private final LottieAnimationView b;
  
  @Nullable
  private final awu c;
  
  private boolean d = true;
  
  @VisibleForTesting
  axy() {
    this.b = null;
    this.c = null;
  }
  
  public axy(awu paramawu) {
    this.c = paramawu;
    this.b = null;
  }
  
  public axy(LottieAnimationView paramLottieAnimationView) {
    this.b = paramLottieAnimationView;
    this.c = null;
  }
  
  private void b() {
    if (this.b != null)
      this.b.invalidate(); 
    if (this.c != null)
      this.c.invalidateSelf(); 
  }
  
  public String a(String paramString) {
    return paramString;
  }
  
  public void a() {
    this.a.clear();
    b();
  }
  
  public void a(String paramString1, String paramString2) {
    this.a.put(paramString1, paramString2);
    b();
  }
  
  public void a(boolean paramBoolean) {
    this.d = paramBoolean;
  }
  
  public void b(String paramString) {
    this.a.remove(paramString);
    b();
  }
  
  public final String c(String paramString) {
    if (this.d && this.a.containsKey(paramString))
      return this.a.get(paramString); 
    String str2 = a(paramString);
    String str1 = str2;
    if (this.d) {
      this.a.put(paramString, str2);
      return str2;
    } 
    return str1;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\axy.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */