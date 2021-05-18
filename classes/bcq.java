import android.support.annotation.Nullable;
import android.util.Log;

public class bcq implements bcd {
  private final String a;
  
  private final bct b;
  
  private bcq(String paramString, bct parambct) {
    this.a = paramString;
    this.b = parambct;
  }
  
  @Nullable
  public aye a(awu paramawu, bdy parambdy) {
    if (!paramawu.c()) {
      Log.w("LOTTIE", "Animation contains merge paths but they are disabled.");
      return null;
    } 
    return new aym(this);
  }
  
  public String a() {
    return this.a;
  }
  
  public bct b() {
    return this.b;
  }
  
  public String toString() {
    return "MergePaths{mode=" + this.b + '}';
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bcq.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */