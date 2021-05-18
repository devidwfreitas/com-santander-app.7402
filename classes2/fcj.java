import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.jeremyfeinstein.slidingmenu.lib.SlidingMenu;

public class fcj {
  private Activity a;
  
  private SlidingMenu b;
  
  private View c;
  
  private View d;
  
  private boolean e = false;
  
  private boolean f = false;
  
  private boolean g = true;
  
  public fcj(Activity paramActivity) {
    this.a = paramActivity;
  }
  
  public View a(int paramInt) {
    if (this.b != null) {
      View view = this.b.findViewById(paramInt);
      if (view != null)
        return view; 
    } 
    return null;
  }
  
  public SlidingMenu a() {
    return this.b;
  }
  
  public void a(Bundle paramBundle) {
    this.b = (SlidingMenu)LayoutInflater.from((Context)this.a).inflate(fbv.slidingmenumain, null);
  }
  
  public void a(View paramView) {
    this.e = true;
    this.a.setContentView(paramView);
  }
  
  public void a(View paramView, ViewGroup.LayoutParams paramLayoutParams) {
    if (!this.e)
      this.c = paramView; 
  }
  
  public void a(boolean paramBoolean) {
    if (this.f)
      throw new IllegalStateException("enableSlidingActionBar must be called in onCreate."); 
    this.g = paramBoolean;
  }
  
  public boolean a(int paramInt, KeyEvent paramKeyEvent) {
    if (paramInt == 4 && this.b.j()) {
      c();
      return true;
    } 
    return false;
  }
  
  public void b() {
    this.b.i();
  }
  
  public void b(Bundle paramBundle) {
    boolean bool2;
    boolean bool1 = true;
    boolean bool = false;
    if (this.d == null || this.c == null)
      throw new IllegalStateException("Both setBehindContentView must be called in onCreate in addition to setContentView."); 
    this.f = true;
    SlidingMenu slidingMenu = this.b;
    Activity activity = this.a;
    if (this.g)
      bool1 = false; 
    slidingMenu.a(activity, bool1);
    if (paramBundle != null) {
      bool2 = paramBundle.getBoolean("SlidingActivityHelper.open");
      bool = paramBundle.getBoolean("SlidingActivityHelper.secondary");
    } else {
      bool2 = false;
    } 
    (new Handler()).post(new fck(this, bool2, bool));
  }
  
  public void b(View paramView, ViewGroup.LayoutParams paramLayoutParams) {
    this.d = paramView;
    this.b.setMenu(this.d);
  }
  
  public void c() {
    this.b.h();
  }
  
  public void c(Bundle paramBundle) {
    paramBundle.putBoolean("SlidingActivityHelper.open", this.b.j());
    paramBundle.putBoolean("SlidingActivityHelper.secondary", this.b.k());
  }
  
  public void d() {
    this.b.f();
  }
  
  public void e() {
    this.b.g();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fcj.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */