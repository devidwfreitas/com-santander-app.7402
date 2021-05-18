import android.view.View;

class lbe implements View.OnClickListener {
  lbe(lbc paramlbc) {}
  
  public void onClick(View paramView) {
    if (lbc.a(this.a) != null) {
      String str1 = lbc.b(this.a).getText().toString().trim();
      String str2 = lbc.c(this.a).getText().toString().trim().replace(".", ",");
      String str3 = lbc.d(this.a).getText().toString().trim().replace(".", ",");
      lbc.a(this.a).a(str1, str2, str3);
    } 
    this.a.dismiss();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\lbe.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */