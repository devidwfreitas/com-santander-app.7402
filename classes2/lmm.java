import android.content.Context;
import android.view.View;

class lmm implements View.OnClickListener {
  lmm(lmi paramlmi) {}
  
  public void onClick(View paramView) {
    lmi.e(this.a);
    if (lmi.f(this.a).getProgress() > 0) {
      lmi.c(this.a).setText(String.valueOf(lmi.f(this.a).getProgress()));
      lmi.c(this.a).setSelection(lmi.c(this.a).getText().length());
    } 
    mhj.b((Context)lmi.b(this.a), (View)lmi.c(this.a));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\lmm.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */