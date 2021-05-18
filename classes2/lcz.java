import android.view.View;

class lcz implements View.OnFocusChangeListener {
  lcz(lcy paramlcy) {}
  
  public void onFocusChange(View paramView, boolean paramBoolean) {
    if (!paramBoolean && !lcy.a(this.a))
      lcy.b(this.a).setError(this.a.getString(2131297668)); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\lcz.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */