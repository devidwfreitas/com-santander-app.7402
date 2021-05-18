import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Fragment;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import com.journeyapps.barcodescanner.CaptureActivity;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class evq {
  public static final int a = 49374;
  
  public static final Collection<String> b;
  
  public static final Collection<String> c;
  
  public static final Collection<String> d;
  
  public static final Collection<String> e;
  
  public static final Collection<String> f;
  
  private static final String g = evq.class.getSimpleName();
  
  private final Activity h;
  
  private Fragment i;
  
  private Fragment j;
  
  private final Map<String, Object> k = new HashMap<String, Object>(3);
  
  private Collection<String> l;
  
  private Class<?> m;
  
  static {
    b = a(new String[] { "UPC_A", "UPC_E", "EAN_8", "EAN_13", "RSS_14" });
    c = a(new String[] { "UPC_A", "UPC_E", "EAN_8", "EAN_13", "CODE_39", "CODE_93", "CODE_128", "ITF", "RSS_14", "RSS_EXPANDED" });
    d = Collections.singleton("QR_CODE");
    e = Collections.singleton("DATA_MATRIX");
    f = null;
  }
  
  public evq(Activity paramActivity) {
    this.h = paramActivity;
  }
  
  @TargetApi(11)
  public static evq a(Fragment paramFragment) {
    evq evq1 = new evq(paramFragment.getActivity());
    evq1.i = paramFragment;
    return evq1;
  }
  
  public static evq a(Fragment paramFragment) {
    evq evq1 = new evq((Activity)paramFragment.getActivity());
    evq1.j = paramFragment;
    return evq1;
  }
  
  public static evr a(int paramInt1, int paramInt2, Intent paramIntent) {
    Integer integer = null;
    if (paramInt1 == 49374) {
      if (paramInt2 == -1) {
        String str1 = paramIntent.getStringExtra("SCAN_RESULT");
        String str2 = paramIntent.getStringExtra("SCAN_RESULT_FORMAT");
        byte[] arrayOfByte = paramIntent.getByteArrayExtra("SCAN_RESULT_BYTES");
        paramInt1 = paramIntent.getIntExtra("SCAN_RESULT_ORIENTATION", -2147483648);
        if (paramInt1 != Integer.MIN_VALUE)
          integer = Integer.valueOf(paramInt1); 
        return new evr(str1, str2, arrayOfByte, integer, paramIntent.getStringExtra("SCAN_RESULT_ERROR_CORRECTION_LEVEL"), paramIntent.getStringExtra("SCAN_RESULT_IMAGE_PATH"));
      } 
      return new evr();
    } 
    return null;
  }
  
  private static List<String> a(String... paramVarArgs) {
    return Collections.unmodifiableList(Arrays.asList(paramVarArgs));
  }
  
  private void b(Intent paramIntent) {
    for (Map.Entry<String, Object> entry : this.k.entrySet()) {
      String str = (String)entry.getKey();
      entry = (Map.Entry<String, Object>)entry.getValue();
      if (entry instanceof Integer) {
        paramIntent.putExtra(str, (Integer)entry);
        continue;
      } 
      if (entry instanceof Long) {
        paramIntent.putExtra(str, (Long)entry);
        continue;
      } 
      if (entry instanceof Boolean) {
        paramIntent.putExtra(str, (Boolean)entry);
        continue;
      } 
      if (entry instanceof Double) {
        paramIntent.putExtra(str, (Double)entry);
        continue;
      } 
      if (entry instanceof Float) {
        paramIntent.putExtra(str, (Float)entry);
        continue;
      } 
      if (entry instanceof Bundle) {
        paramIntent.putExtra(str, (Bundle)entry);
        continue;
      } 
      paramIntent.putExtra(str, entry.toString());
    } 
  }
  
  public evq a(int paramInt) {
    if (paramInt >= 0)
      a("SCAN_CAMERA_ID", Integer.valueOf(paramInt)); 
    return this;
  }
  
  public evq a(long paramLong) {
    a("TIMEOUT", Long.valueOf(paramLong));
    return this;
  }
  
  public evq a(Class<?> paramClass) {
    this.m = paramClass;
    return this;
  }
  
  public final evq a(String paramString) {
    if (paramString != null)
      a("PROMPT_MESSAGE", paramString); 
    return this;
  }
  
  public final evq a(String paramString, Object paramObject) {
    this.k.put(paramString, paramObject);
    return this;
  }
  
  public evq a(Collection<String> paramCollection) {
    this.l = paramCollection;
    return this;
  }
  
  public evq a(boolean paramBoolean) {
    a("SCAN_ORIENTATION_LOCKED", Boolean.valueOf(paramBoolean));
    return this;
  }
  
  protected Class<?> a() {
    return CaptureActivity.class;
  }
  
  protected void a(Intent paramIntent) {
    if (this.i != null) {
      if (Build.VERSION.SDK_INT >= 11)
        this.i.startActivity(paramIntent); 
      return;
    } 
    if (this.j != null) {
      this.j.startActivity(paramIntent);
      return;
    } 
    this.h.startActivity(paramIntent);
  }
  
  protected void a(Intent paramIntent, int paramInt) {
    if (this.i != null) {
      if (Build.VERSION.SDK_INT >= 11)
        this.i.startActivityForResult(paramIntent, paramInt); 
      return;
    } 
    if (this.j != null) {
      this.j.startActivityForResult(paramIntent, paramInt);
      return;
    } 
    this.h.startActivityForResult(paramIntent, paramInt);
  }
  
  public evq b(boolean paramBoolean) {
    a("BEEP_ENABLED", Boolean.valueOf(paramBoolean));
    return this;
  }
  
  public Class<?> b() {
    if (this.m == null)
      this.m = a(); 
    return this.m;
  }
  
  public final void b(Collection<String> paramCollection) {
    a(paramCollection);
    d();
  }
  
  public evq c(boolean paramBoolean) {
    a("BARCODE_IMAGE_ENABLED", Boolean.valueOf(paramBoolean));
    return this;
  }
  
  public Map<String, ?> c() {
    return this.k;
  }
  
  public final void d() {
    a(e(), 49374);
  }
  
  public Intent e() {
    Intent intent = new Intent((Context)this.h, b());
    intent.setAction("com.google.zxing.client.android.SCAN");
    if (this.l != null) {
      StringBuilder stringBuilder = new StringBuilder();
      for (String str : this.l) {
        if (stringBuilder.length() > 0)
          stringBuilder.append(','); 
        stringBuilder.append(str);
      } 
      intent.putExtra("SCAN_FORMATS", stringBuilder.toString());
    } 
    intent.addFlags(67108864);
    intent.addFlags(524288);
    b(intent);
    return intent;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\evq.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */