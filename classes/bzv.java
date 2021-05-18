import android.net.Uri;
import android.os.Bundle;
import android.os.ParcelFileDescriptor;
import android.text.TextUtils;
import com.facebook.AccessToken;
import com.facebook.share.model.ShareVideoContent;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.InputStream;

class bzv {
  public final Uri a;
  
  public final String b;
  
  public final String c;
  
  public final String d;
  
  public final String e;
  
  public final AccessToken f = AccessToken.a();
  
  public final bhl<bwo> g;
  
  public String h;
  
  public String i;
  
  public InputStream j;
  
  public long k;
  
  public String l = "0";
  
  public boolean m;
  
  public brk n;
  
  public Bundle o;
  
  private bzv(ShareVideoContent paramShareVideoContent, String paramString, bhl<bwo> parambhl) {
    this.a = paramShareVideoContent.d().c();
    this.b = paramShareVideoContent.b();
    this.c = paramShareVideoContent.a();
    this.d = paramShareVideoContent.k();
    this.e = paramString;
    this.g = parambhl;
    this.o = paramShareVideoContent.d().a();
    if (!bqq.a(paramShareVideoContent.i()))
      this.o.putString("tags", TextUtils.join(", ", paramShareVideoContent.i())); 
    if (!bqq.a(paramShareVideoContent.j()))
      this.o.putString("place", paramShareVideoContent.j()); 
    if (!bqq.a(paramShareVideoContent.k()))
      this.o.putString("ref", paramShareVideoContent.k()); 
  }
  
  private void a() {
    try {
      if (bqq.d(this.a)) {
        ParcelFileDescriptor parcelFileDescriptor = ParcelFileDescriptor.open(new File(this.a.getPath()), 268435456);
        this.k = parcelFileDescriptor.getStatSize();
        this.j = (InputStream)new ParcelFileDescriptor.AutoCloseInputStream(parcelFileDescriptor);
        return;
      } 
      if (bqq.c(this.a)) {
        this.k = bqq.e(this.a);
        this.j = bhv.h().getContentResolver().openInputStream(this.a);
        return;
      } 
    } catch (FileNotFoundException fileNotFoundException) {
      bqq.a(this.j);
      throw fileNotFoundException;
    } 
    throw new bhp("Uri must be a content:// or file:// uri");
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bzv.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */