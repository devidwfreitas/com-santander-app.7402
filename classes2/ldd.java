import android.view.View;

class ldd implements View.OnClickListener {
  ldd(lcy paramlcy) {}
  
  public void onClick(View paramView) {
    if (lcy.f(this.a) != null) {
      String str1 = lcy.b(this.a).getText().toString();
      String str2 = lcy.d(this.a).getText().toString();
      ldn.a = str1;
      ldn.b = str2;
      lcy.f(this.a).b(str1, str2);
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ldd.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */