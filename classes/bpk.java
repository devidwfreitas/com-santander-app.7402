import android.content.Context;
import android.net.Uri;

public class bpk {
  private Context a;
  
  private Uri b;
  
  private bpl c;
  
  private boolean d;
  
  private Object e;
  
  public bpk(Context paramContext, Uri paramUri) {
    bqx.a(paramUri, "imageUri");
    this.a = paramContext;
    this.b = paramUri;
  }
  
  public bpi a() {
    return new bpi(this, null);
  }
  
  public bpk a(bpl parambpl) {
    this.c = parambpl;
    return this;
  }
  
  public bpk a(Object paramObject) {
    this.e = paramObject;
    return this;
  }
  
  public bpk a(boolean paramBoolean) {
    this.d = paramBoolean;
    return this;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bpk.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */