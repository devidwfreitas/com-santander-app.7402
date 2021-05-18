import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;

public class knz {
  @eks(a = "imageRes")
  private int a;
  
  @eks(a = "image")
  @Deprecated
  private Bitmap b;
  
  @eks(a = "text")
  private String c;
  
  @eks(a = "mButtonDetailType")
  private koa d;
  
  @eks(a = "disable")
  private boolean e = false;
  
  public Bitmap a(Resources paramResources) {
    return BitmapFactory.decodeResource(paramResources, e());
  }
  
  public koa a() {
    return this.d;
  }
  
  public void a(int paramInt) {
    this.a = paramInt;
  }
  
  public void a(Bitmap paramBitmap) {
    this.b = paramBitmap;
  }
  
  public void a(String paramString) {
    this.c = paramString;
  }
  
  public void a(koa paramkoa) {
    this.d = paramkoa;
  }
  
  public void a(boolean paramBoolean) {
    this.e = paramBoolean;
  }
  
  public void b(koa paramkoa) {
    this.d = paramkoa;
  }
  
  public boolean b() {
    return this.e;
  }
  
  public koa c() {
    return this.d;
  }
  
  public String d() {
    return this.c;
  }
  
  public int e() {
    return this.a;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\knz.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */