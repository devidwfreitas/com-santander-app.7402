import android.content.Context;
import android.net.Uri;
import java.util.Locale;

public class bpi {
  public static final int a = 0;
  
  private static final String b = "https";
  
  private static final String c = "graph.facebook.com";
  
  private static final String d = "%s/picture";
  
  private static final String e = "height";
  
  private static final String f = "width";
  
  private static final String g = "migration_overrides";
  
  private static final String h = "{october_2012:true}";
  
  private Context i;
  
  private Uri j;
  
  private bpl k;
  
  private boolean l;
  
  private Object m;
  
  private bpi(bpk parambpk) {
    Object object;
    this.i = bpk.a(parambpk);
    this.j = bpk.b(parambpk);
    this.k = bpk.c(parambpk);
    this.l = bpk.d(parambpk);
    if (bpk.e(parambpk) == null) {
      object = new Object();
    } else {
      object = bpk.e((bpk)object);
    } 
    this.m = object;
  }
  
  public static Uri a(String paramString, int paramInt1, int paramInt2) {
    bqx.a(paramString, "userId");
    paramInt1 = Math.max(paramInt1, 0);
    paramInt2 = Math.max(paramInt2, 0);
    if (paramInt1 == 0 && paramInt2 == 0)
      throw new IllegalArgumentException("Either width or height must be greater than 0"); 
    Uri.Builder builder = (new Uri.Builder()).scheme("https").authority("graph.facebook.com").path(String.format(Locale.US, "%s/picture", new Object[] { paramString }));
    if (paramInt2 != 0)
      builder.appendQueryParameter("height", String.valueOf(paramInt2)); 
    if (paramInt1 != 0)
      builder.appendQueryParameter("width", String.valueOf(paramInt1)); 
    builder.appendQueryParameter("migration_overrides", "{october_2012:true}");
    return builder.build();
  }
  
  public Context a() {
    return this.i;
  }
  
  public Uri b() {
    return this.j;
  }
  
  public bpl c() {
    return this.k;
  }
  
  public boolean d() {
    return this.l;
  }
  
  public Object e() {
    return this.m;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bpi.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */