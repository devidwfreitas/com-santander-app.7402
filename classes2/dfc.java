import android.graphics.drawable.Drawable;

final class dfc extends Drawable.ConstantState {
  private dfc() {}
  
  public int getChangingConfigurations() {
    return 0;
  }
  
  public Drawable newDrawable() {
    return dfb.a();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dfc.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */