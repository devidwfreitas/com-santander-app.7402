import android.graphics.drawable.Drawable;
import android.net.Uri;
import java.lang.ref.WeakReference;

public final class cry extends crv {
  private WeakReference<cro> e;
  
  public cry(cro paramcro, Uri paramUri) {
    super(paramUri, 0);
    csz.a(paramcro);
    this.e = new WeakReference<cro>(paramcro);
  }
  
  protected void a(Drawable paramDrawable, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3) {
    if (!paramBoolean2) {
      cro cro = this.e.get();
      if (cro != null)
        cro.a(this.a.a, paramDrawable, paramBoolean3); 
    } 
  }
  
  public boolean equals(Object paramObject) {
    if (!(paramObject instanceof cry))
      return false; 
    if (this == paramObject)
      return true; 
    paramObject = paramObject;
    cro cro1 = this.e.get();
    cro cro2 = ((cry)paramObject).e.get();
    return (cro2 != null && cro1 != null && csg.a(cro2, cro1) && csg.a(((cry)paramObject).a, this.a));
  }
  
  public int hashCode() {
    return csg.a(new Object[] { this.a });
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\cry.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */