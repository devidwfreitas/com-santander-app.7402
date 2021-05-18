import android.content.Intent;
import android.view.View;
import android.widget.EditText;
import com.santander.app.PagamentoCartoesConfirmacaoAction;

class ijg implements View.OnClickListener {
  ijg(ijf paramijf) {}
  
  public void onClick(View paramView) {
    String str1;
    Boolean bool2;
    Boolean bool1 = Boolean.valueOf(false);
    String str2 = "";
    ijf.a(this.a, ijf.a(this.a).f().s().d());
    if (ijf.b(this.a).size() > 0)
      ijf.a(this.a, ijf.b(this.a).get(0)); 
    if (ijf.c(this.a).h() == null || ijf.c(this.a).h().length() == 0)
      hav.d(ijf.d(this.a), "Deveria introduzir uma quantidade"); 
    if (((fpv)ijf.f(this.a).get(ijf.e(this.a).getCurrentItem())).c() == 3) {
      EditText editText = (EditText)ijf.e(this.a).findViewWithTag("page" + ijf.e(this.a).getCurrentItem()).findViewById(2131759184);
      if (editText != null && editText.getText().length() > 0) {
        if (editText.getText().toString().equals("0,00")) {
          hav.d(ijf.d(this.a), this.a.getResources().getString(2131297210));
          str2 = "";
          bool2 = bool1;
          str1 = str2;
        } else {
          str1 = bool2.getText().toString().replaceAll("\\.", "").replaceAll("\\,", "") + "+";
          bool2 = Boolean.valueOf(true);
        } 
      } else {
        hav.d(ijf.d(this.a), "Deveria introduzir uma quantidade");
        str2 = "";
        String str = str1;
        str1 = str2;
      } 
    } else {
      bool2 = Boolean.valueOf(true);
      str1 = str2;
    } 
    if (bool2.booleanValue()) {
      if (this.a.b().booleanValue()) {
        hau.a().a(true);
      } else {
        hau.a().a(false);
      } 
      Intent intent = new Intent(this.a.c, PagamentoCartoesConfirmacaoAction.class);
      intent.putExtra("conta", ijf.g(this.a).a());
      intent.putExtra("cartao", ijf.h(this.a).a());
      intent.putExtra("tipo", ((fpv)ijf.f(this.a).get(ijf.e(this.a).getCurrentItem())).c());
      intent.putExtra("cantidad", str1);
      intent.putExtra("fecha", this.a.a());
      intent.putExtra("agendado", this.a.b());
      intent.putExtra("vencimiento", nak.l(ijf.c(this.a).c()));
      this.a.startActivity(intent);
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ijg.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */