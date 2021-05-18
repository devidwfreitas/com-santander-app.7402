import android.net.Uri;
import android.os.Bundle;
import java.util.List;

public class czl {
  private final String a;
  
  private final Bundle b;
  
  private final List<Uri> c;
  
  public czl(String paramString) {
    this(paramString, null, null);
  }
  
  public czl(String paramString, Bundle paramBundle) {
    this(paramString, paramBundle, null);
  }
  
  public czl(String paramString, Bundle paramBundle, List<Uri> paramList) {
    this.a = paramString;
    this.b = paramBundle;
    this.c = paramList;
  }
  
  public String a() {
    return this.a;
  }
  
  public Bundle b() {
    return this.b;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\czl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */