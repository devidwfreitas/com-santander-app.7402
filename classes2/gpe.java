import android.view.View;

public abstract class gpe {
  private mxc a;
  
  private aoa b;
  
  private gpj c;
  
  public gpe(View paramView) {
    this(paramView, null);
  }
  
  public gpe(View paramView, gpj paramgpj) {
    this.a = new mxc(paramView.getContext());
    this.c = paramgpj;
    a(paramView);
  }
  
  private void a(View paramView) {
    this.b = aoa.a(paramView, paramView.getContext().getString(2131299072));
    this.b.a(new gpf(this));
    this.b.a(new gpg(this));
  }
  
  public abstract void a(String paramString);
  
  public boolean a() {
    if (this.a.a()) {
      if (this.c != null)
        this.c.a(); 
      this.b.b();
      return true;
    } 
    this.b.c();
    return false;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\gpe.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */