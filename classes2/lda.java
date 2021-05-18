import android.view.View;

class lda implements View.OnFocusChangeListener {
  lda(lcy paramlcy) {}
  
  public void onFocusChange(View paramView, boolean paramBoolean) {
    if (!paramBoolean && !lcy.c(this.a))
      lcy.d(this.a).setError(this.a.getString(2131297680)); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\lda.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */