import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;

public abstract class crv {
  final crw a;
  
  protected int b = 0;
  
  protected int c = 0;
  
  protected boolean d = false;
  
  private boolean e = true;
  
  private boolean f = false;
  
  private boolean g = true;
  
  public crv(Uri paramUri, int paramInt) {
    this.a = new crw(paramUri);
    this.c = paramInt;
  }
  
  private Drawable a(Context paramContext, dfe paramdfe, int paramInt) {
    return paramContext.getResources().getDrawable(paramInt);
  }
  
  protected dez a(Drawable paramDrawable1, Drawable paramDrawable2) {
    if (paramDrawable1 != null) {
      Drawable drawable1 = paramDrawable1;
      if (paramDrawable1 instanceof dez)
        drawable1 = ((dez)paramDrawable1).b(); 
      return new dez(drawable1, paramDrawable2);
    } 
    Drawable drawable = null;
    return new dez(drawable, paramDrawable2);
  }
  
  public void a(int paramInt) {
    this.c = paramInt;
  }
  
  void a(Context paramContext, Bitmap paramBitmap, boolean paramBoolean) {
    csz.a(paramBitmap);
    a((Drawable)new BitmapDrawable(paramContext.getResources(), paramBitmap), paramBoolean, false, true);
  }
  
  void a(Context paramContext, dfe paramdfe) {
    if (this.g)
      a(null, false, true, false); 
  }
  
  void a(Context paramContext, dfe paramdfe, boolean paramBoolean) {
    Drawable drawable = null;
    if (this.c != 0)
      drawable = a(paramContext, paramdfe, this.c); 
    a(drawable, paramBoolean, false, false);
  }
  
  protected abstract void a(Drawable paramDrawable, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3);
  
  protected boolean a(boolean paramBoolean1, boolean paramBoolean2) {
    return !(!this.e || paramBoolean2 || paramBoolean1);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\crv.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */