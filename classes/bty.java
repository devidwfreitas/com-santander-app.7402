import android.net.Uri;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

public class bty {
  public static final Set<String> a;
  
  public static final Set<String> b;
  
  public static final Set<String> c;
  
  public final Uri d;
  
  public final String e;
  
  public final String f;
  
  public final Uri g;
  
  static {
    HashSet<String> hashSet = new HashSet();
    hashSet.add("image/*");
    hashSet.add("image/jpeg");
    hashSet.add("image/png");
    hashSet.add("image/gif");
    hashSet.add("image/webp");
    hashSet.add("video/*");
    hashSet.add("video/mp4");
    hashSet.add("audio/*");
    hashSet.add("audio/mpeg");
    b = Collections.unmodifiableSet(hashSet);
    hashSet = new HashSet<String>();
    hashSet.add("content");
    hashSet.add("android.resource");
    hashSet.add("file");
    a = Collections.unmodifiableSet(hashSet);
    hashSet = new HashSet<String>();
    hashSet.add("http");
    hashSet.add("https");
    c = Collections.unmodifiableSet(hashSet);
  }
  
  bty(btz parambtz) {
    this.d = parambtz.a();
    this.e = parambtz.b();
    this.f = parambtz.c();
    this.g = parambtz.d();
    if (this.d == null)
      throw new NullPointerException("Must provide non-null uri"); 
    if (this.e == null)
      throw new NullPointerException("Must provide mimeType"); 
    if (!a.contains(this.d.getScheme()))
      throw new IllegalArgumentException("Unsupported URI scheme: " + this.d.getScheme()); 
    if (!b.contains(this.e))
      throw new IllegalArgumentException("Unsupported mime-type: " + this.e); 
    if (this.g != null && !c.contains(this.g.getScheme()))
      throw new IllegalArgumentException("Unsupported external uri scheme: " + this.g.getScheme()); 
  }
  
  public static btz a(Uri paramUri, String paramString) {
    return new btz(paramUri, paramString);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bty.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */