import android.graphics.drawable.Drawable;

final class dfd extends Drawable.ConstantState {
  int a;
  
  int b;
  
  dfd(dfd paramdfd) {
    if (paramdfd != null) {
      this.a = paramdfd.a;
      this.b = paramdfd.b;
    } 
  }
  
  public int getChangingConfigurations() {
    return this.a;
  }
  
  public Drawable newDrawable() {
    return new dez(this);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dfd.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */