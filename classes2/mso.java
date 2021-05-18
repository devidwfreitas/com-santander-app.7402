import android.content.Context;
import android.support.annotation.Nullable;
import android.support.annotation.StringRes;
import android.support.v4.app.Fragment;

abstract class mso extends Fragment implements msp {
  @Nullable
  protected msy a;
  
  public void a() {
    if (this.a != null)
      this.a.finish(); 
  }
  
  public void a(@StringRes int paramInt) {
    if (this.a != null)
      this.a.setTitle(paramInt); 
  }
  
  public void a(CharSequence paramCharSequence) {
    if (this.a != null)
      this.a.setTitle(paramCharSequence); 
  }
  
  public void a(String paramString, Runnable paramRunnable) {
    if (this.a != null)
      this.a.a(paramString, paramRunnable); 
  }
  
  public void a(boolean paramBoolean) {
    if (this.a != null)
      this.a.a(paramBoolean); 
  }
  
  public void b() {
    if (this.a != null)
      this.a.d(); 
  }
  
  public void b(@StringRes int paramInt) {
    if (this.a != null)
      this.a.a(getString(paramInt)); 
  }
  
  public void c() {
    b(2131299158);
  }
  
  public void d() {
    if (this.a != null)
      this.a.e(); 
  }
  
  public void e() {
    if (this.a != null)
      this.a.f(); 
  }
  
  public void onAttach(Context paramContext) {
    super.onAttach(paramContext);
    try {
      this.a = (msy)paramContext;
      return;
    } catch (ClassCastException classCastException) {
      this.a = null;
      return;
    } 
  }
  
  public void onDetach() {
    super.onDetach();
    this.a = null;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mso.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */