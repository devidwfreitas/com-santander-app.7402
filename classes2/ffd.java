import android.annotation.TargetApi;
import android.content.Context;
import android.os.Build;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

public class ffd {
  private static Set<String> a = new HashSet<String>();
  
  private ArrayList<Boolean> b = new ArrayList<Boolean>(3);
  
  static {
    a.add("google_sdk");
    a.add("sdk");
    a.add("sdk_x86");
    a.add("vbox86p");
  }
  
  public ffd(Context paramContext) {
    this.b.add(Boolean.valueOf(b()));
    this.b.add(Boolean.valueOf(c()));
    this.b.add(Boolean.valueOf(d()));
  }
  
  private boolean b() {
    return Build.FINGERPRINT.contains("generic");
  }
  
  private boolean c() {
    return a.contains(Build.PRODUCT);
  }
  
  @TargetApi(8)
  private boolean d() {
    return (Build.VERSION.SDK_INT >= 8) ? "goldfish".equals(Build.HARDWARE) : false;
  }
  
  public int a() {
    Iterator<Boolean> iterator = this.b.iterator();
    int i;
    for (i = 0; iterator.hasNext(); i = b + (i << 1)) {
      byte b;
      if (((Boolean)iterator.next()).booleanValue()) {
        b = 1;
      } else {
        b = 0;
      } 
    } 
    return i;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ffd.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */