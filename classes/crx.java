import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.widget.ImageView;
import com.google.android.gms.internal.zzacc;
import java.lang.ref.WeakReference;

public final class crx extends crv {
  private WeakReference<ImageView> e;
  
  public crx(ImageView paramImageView, int paramInt) {
    super(null, paramInt);
    csz.a(paramImageView);
    this.e = new WeakReference<ImageView>(paramImageView);
  }
  
  public crx(ImageView paramImageView, Uri paramUri) {
    super(paramUri, 0);
    csz.a(paramImageView);
    this.e = new WeakReference<ImageView>(paramImageView);
  }
  
  private void a(ImageView paramImageView, Drawable paramDrawable, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3) {
    dez dez;
    int i;
    if (!paramBoolean2 && !paramBoolean3) {
      i = 1;
    } else {
      i = 0;
    } 
    if (i && paramImageView instanceof zzacc) {
      int j = ((zzacc)paramImageView).a();
      if (this.c != 0 && j == this.c)
        return; 
    } 
    paramBoolean1 = a(paramBoolean1, paramBoolean2);
    if (paramBoolean1)
      dez = a(paramImageView.getDrawable(), paramDrawable); 
    paramImageView.setImageDrawable((Drawable)dez);
    if (paramImageView instanceof zzacc) {
      zzacc zzacc = (zzacc)paramImageView;
      if (paramBoolean3) {
        Uri uri = this.a.a;
      } else {
        paramImageView = null;
      } 
      zzacc.a((Uri)paramImageView);
      if (i) {
        i = this.c;
      } else {
        i = 0;
      } 
      zzacc.a(i);
    } 
    if (paramBoolean1) {
      dez.a(250);
      return;
    } 
  }
  
  protected void a(Drawable paramDrawable, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3) {
    ImageView imageView = this.e.get();
    if (imageView != null)
      a(imageView, paramDrawable, paramBoolean1, paramBoolean2, paramBoolean3); 
  }
  
  public boolean equals(Object paramObject) {
    if (!(paramObject instanceof crx))
      return false; 
    if (this == paramObject)
      return true; 
    crx crx1 = (crx)paramObject;
    paramObject = this.e.get();
    ImageView imageView = crx1.e.get();
    return (imageView != null && paramObject != null && csg.a(imageView, paramObject));
  }
  
  public int hashCode() {
    return 0;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\crx.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */