import android.graphics.Bitmap;
import android.net.Uri;
import java.util.UUID;

public final class bpz {
  private final UUID a;
  
  private final String b;
  
  private final String c;
  
  private Bitmap d;
  
  private Uri e;
  
  private boolean f;
  
  private boolean g;
  
  private bpz(UUID paramUUID, Bitmap paramBitmap, Uri paramUri) {
    String str1;
    String str2;
    this.a = paramUUID;
    this.d = paramBitmap;
    this.e = paramUri;
    if (paramUri != null) {
      str2 = paramUri.getScheme();
      if ("content".equalsIgnoreCase(str2)) {
        this.f = true;
        if (paramUri.getAuthority() == null || paramUri.getAuthority().startsWith("media"))
          bool = false; 
        this.g = bool;
      } else if ("file".equalsIgnoreCase(paramUri.getScheme())) {
        this.g = true;
      } else if (!bqq.b(paramUri)) {
        throw new bhp("Unsupported scheme for media Uri : " + str2);
      } 
    } else if (str2 != null) {
      this.g = true;
    } else {
      throw new bhp("Cannot share media without a bitmap or Uri set");
    } 
    if (!this.g) {
      str2 = null;
    } else {
      str2 = UUID.randomUUID().toString();
    } 
    this.c = str2;
    if (!this.g) {
      str1 = this.e.toString();
    } else {
      str1 = bhm.a(bhv.l(), (UUID)str1, this.c);
    } 
    this.b = str1;
  }
  
  public String a() {
    return this.b;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bpz.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */