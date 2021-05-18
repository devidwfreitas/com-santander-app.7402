import android.app.Activity;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import com.ca.android.app.CaMDOActivity;
import com.jeremyfeinstein.slidingmenu.lib.SlidingMenu;

public class fch extends CaMDOActivity implements fci {
  private fcj a;
  
  public SlidingMenu a() {
    return this.a.a();
  }
  
  public void a(int paramInt) {
    setBehindContentView(getLayoutInflater().inflate(paramInt, null));
  }
  
  public void a(View paramView, ViewGroup.LayoutParams paramLayoutParams) {
    this.a.b(paramView, paramLayoutParams);
  }
  
  public void a(boolean paramBoolean) {
    this.a.a(paramBoolean);
  }
  
  public void b() {
    this.a.b();
  }
  
  public void c() {
    this.a.c();
  }
  
  public void d() {
    this.a.d();
  }
  
  public void e() {
    this.a.e();
  }
  
  public View findViewById(int paramInt) {
    View view = super.findViewById(paramInt);
    return (view != null) ? view : this.a.a(paramInt);
  }
  
  public void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    this.a = new fcj((Activity)this);
    this.a.a(paramBundle);
  }
  
  public boolean onKeyUp(int paramInt, KeyEvent paramKeyEvent) {
    boolean bool = this.a.a(paramInt, paramKeyEvent);
    return bool ? bool : super.onKeyUp(paramInt, paramKeyEvent);
  }
  
  public void onPostCreate(Bundle paramBundle) {
    super.onPostCreate(paramBundle);
    this.a.b(paramBundle);
  }
  
  protected void onSaveInstanceState(Bundle paramBundle) {
    super.onSaveInstanceState(paramBundle);
    this.a.c(paramBundle);
  }
  
  public void setBehindContentView(View paramView) {
    a(paramView, new ViewGroup.LayoutParams(-1, -1));
  }
  
  public void setContentView(int paramInt) {
    setContentView(getLayoutInflater().inflate(paramInt, null));
  }
  
  public void setContentView(View paramView) {
    setContentView(paramView, new ViewGroup.LayoutParams(-1, -1));
  }
  
  public void setContentView(View paramView, ViewGroup.LayoutParams paramLayoutParams) {
    super.setContentView(paramView, paramLayoutParams);
    this.a.a(paramView, paramLayoutParams);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fch.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */