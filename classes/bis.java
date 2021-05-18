import android.graphics.Bitmap;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import com.facebook.GraphRequest;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URLEncoder;
import java.util.Collection;
import java.util.Iterator;
import java.util.Locale;
import org.json.JSONArray;
import org.json.JSONObject;

public class bis implements bip {
  private final OutputStream a;
  
  private final bpu b;
  
  private boolean c = true;
  
  private boolean d = false;
  
  public bis(OutputStream paramOutputStream, bpu parambpu, boolean paramBoolean) {
    this.a = paramOutputStream;
    this.b = parambpu;
    this.d = paramBoolean;
  }
  
  private RuntimeException b() {
    return new IllegalArgumentException("value is not a supported type.");
  }
  
  public void a() {
    if (!this.d) {
      b("--%s", new Object[] { "3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f" });
      return;
    } 
    this.a.write("&".getBytes());
  }
  
  public void a(String paramString, Bitmap paramBitmap) {
    a(paramString, paramString, "image/png");
    paramBitmap.compress(Bitmap.CompressFormat.PNG, 100, this.a);
    b("", new Object[0]);
    a();
    if (this.b != null)
      this.b.a("    " + paramString, "<Image>"); 
  }
  
  public void a(String paramString1, Uri paramUri, String paramString2) {
    int i;
    String str = paramString2;
    if (paramString2 == null)
      str = "content/unknown"; 
    a(paramString1, paramString1, str);
    if (this.a instanceof bjk) {
      long l = bqq.e(paramUri);
      ((bjk)this.a).a(l);
      i = 0;
    } else {
      i = bqq.a(bhv.h().getContentResolver().openInputStream(paramUri), this.a) + 0;
    } 
    b("", new Object[0]);
    a();
    if (this.b != null)
      this.b.a("    " + paramString1, String.format(Locale.ROOT, "<Data: %d>", new Object[] { Integer.valueOf(i) })); 
  }
  
  public void a(String paramString1, ParcelFileDescriptor paramParcelFileDescriptor, String paramString2) {
    int i;
    String str = paramString2;
    if (paramString2 == null)
      str = "content/unknown"; 
    a(paramString1, paramString1, str);
    if (this.a instanceof bjk) {
      ((bjk)this.a).a(paramParcelFileDescriptor.getStatSize());
      i = 0;
    } else {
      i = bqq.a((InputStream)new ParcelFileDescriptor.AutoCloseInputStream(paramParcelFileDescriptor), this.a) + 0;
    } 
    b("", new Object[0]);
    a();
    if (this.b != null)
      this.b.a("    " + paramString1, String.format(Locale.ROOT, "<Data: %d>", new Object[] { Integer.valueOf(i) })); 
  }
  
  public void a(String paramString, Object paramObject, GraphRequest paramGraphRequest) {
    if (this.a instanceof bka)
      ((bka)this.a).a(paramGraphRequest); 
    if (GraphRequest.b(paramObject)) {
      a(paramString, GraphRequest.c(paramObject));
      return;
    } 
    if (paramObject instanceof Bitmap) {
      a(paramString, (Bitmap)paramObject);
      return;
    } 
    if (paramObject instanceof byte[]) {
      a(paramString, (byte[])paramObject);
      return;
    } 
    if (paramObject instanceof Uri) {
      a(paramString, (Uri)paramObject, (String)null);
      return;
    } 
    if (paramObject instanceof ParcelFileDescriptor) {
      a(paramString, (ParcelFileDescriptor)paramObject, (String)null);
      return;
    } 
    if (paramObject instanceof GraphRequest.ParcelableResourceWithMimeType) {
      GraphRequest.ParcelableResourceWithMimeType parcelableResourceWithMimeType = (GraphRequest.ParcelableResourceWithMimeType)paramObject;
      paramObject = parcelableResourceWithMimeType.b();
      String str = parcelableResourceWithMimeType.a();
      if (paramObject instanceof ParcelFileDescriptor) {
        a(paramString, (ParcelFileDescriptor)paramObject, str);
        return;
      } 
      if (paramObject instanceof Uri) {
        a(paramString, (Uri)paramObject, str);
        return;
      } 
      throw b();
    } 
    throw b();
  }
  
  public void a(String paramString1, String paramString2) {
    a(paramString1, (String)null, (String)null);
    b("%s", new Object[] { paramString2 });
    a();
    if (this.b != null)
      this.b.a("    " + paramString1, paramString2); 
  }
  
  public void a(String paramString1, String paramString2, String paramString3) {
    if (!this.d) {
      a("Content-Disposition: form-data; name=\"%s\"", new Object[] { paramString1 });
      if (paramString2 != null)
        a("; filename=\"%s\"", new Object[] { paramString2 }); 
      b("", new Object[0]);
      if (paramString3 != null)
        b("%s: %s", new Object[] { "Content-Type", paramString3 }); 
      b("", new Object[0]);
      return;
    } 
    this.a.write(String.format("%s=", new Object[] { paramString1 }).getBytes());
  }
  
  public void a(String paramString, JSONArray paramJSONArray, Collection<GraphRequest> paramCollection) {
    if (!(this.a instanceof bka)) {
      a(paramString, paramJSONArray.toString());
      return;
    } 
    bka bka = (bka)this.a;
    a(paramString, (String)null, (String)null);
    a("[", new Object[0]);
    Iterator<GraphRequest> iterator = paramCollection.iterator();
    for (int i = 0; iterator.hasNext(); i++) {
      GraphRequest graphRequest = iterator.next();
      JSONObject jSONObject = paramJSONArray.getJSONObject(i);
      bka.a(graphRequest);
      if (i) {
        a(",%s", new Object[] { jSONObject.toString() });
      } else {
        a("%s", new Object[] { jSONObject.toString() });
      } 
    } 
    a("]", new Object[0]);
    if (this.b != null) {
      this.b.a("    " + paramString, paramJSONArray.toString());
      return;
    } 
  }
  
  public void a(String paramString, byte[] paramArrayOfbyte) {
    a(paramString, paramString, "content/unknown");
    this.a.write(paramArrayOfbyte);
    b("", new Object[0]);
    a();
    if (this.b != null)
      this.b.a("    " + paramString, String.format(Locale.ROOT, "<Data: %d>", new Object[] { Integer.valueOf(paramArrayOfbyte.length) })); 
  }
  
  public void a(String paramString, Object... paramVarArgs) {
    if (!this.d) {
      if (this.c) {
        this.a.write("--".getBytes());
        this.a.write("3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f".getBytes());
        this.a.write("\r\n".getBytes());
        this.c = false;
      } 
      this.a.write(String.format(paramString, paramVarArgs).getBytes());
      return;
    } 
    this.a.write(URLEncoder.encode(String.format(Locale.US, paramString, paramVarArgs), "UTF-8").getBytes());
  }
  
  public void b(String paramString, Object... paramVarArgs) {
    a(paramString, paramVarArgs);
    if (!this.d)
      a("\r\n", new Object[0]); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bis.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */