import android.view.View;

class lfv implements View.OnClickListener {
  lfv(lft paramlft) {}
  
  public void onClick(View paramView) {
    if (lft.b(this.a) != null) {
      if (lft.c(this.a).isChecked()) {
        frq.d(lft.a(this.a), "Confirmar");
        this.a.dismiss();
        lft.b(this.a).a(lft.d(this.a).getText().toString());
      } else if (lft.e(this.a).isChecked()) {
        frq.d(lft.a(this.a), "Confirmar");
        this.a.dismiss();
        lft.b(this.a).a(lft.f(this.a).getText().toString());
      } else if (lft.g(this.a).isChecked()) {
        frq.d(lft.a(this.a), "Confirmar");
        this.a.dismiss();
        lft.b(this.a).a(lft.h(this.a).getText().toString());
      } 
      lft.i(this.a);
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\lfv.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */