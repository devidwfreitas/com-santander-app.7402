import android.app.Activity;
import android.util.Log;
import android.view.View;
import com.santander.app.contacorrente.domain.Conta;
import com.santander.app.dpp.DPPPreenchimentoActivity;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

public class hea implements View.OnClickListener {
  public hea(DPPPreenchimentoActivity paramDPPPreenchimentoActivity) {}
  
  public void onClick(View paramView) {
    String str2;
    if (DPPPreenchimentoActivity.a(this.a)) {
      str2 = "Investimentos_Poupanca_DepositoProgramado_ProprioCliente_Acao";
    } else {
      str2 = "Investimentos_Poupanca_DepositoProgramado_Terceiros_Acao";
    } 
    frq.d(str2, "Confirmar");
    String str4 = DPPPreenchimentoActivity.h(this.a).getItemAtPosition(DPPPreenchimentoActivity.h(this.a).getSelectedItemPosition()).toString();
    if (DPPPreenchimentoActivity.g(this.a).getText() == null) {
      mxn.b((Activity)DPPPreenchimentoActivity.i(this.a), "Por favor informe o valor.");
      DPPPreenchimentoActivity.g(this.a).requestFocus();
      return;
    } 
    if (DPPPreenchimentoActivity.g(this.a).getText().toString().trim().equals("")) {
      mxn.b((Activity)DPPPreenchimentoActivity.i(this.a), "Por favor informe o valor.");
      DPPPreenchimentoActivity.g(this.a).requestFocus();
      return;
    } 
    String str5 = DPPPreenchimentoActivity.g(this.a).getText().toString().trim().replace("R", "").replace("$", "").replace(".", "").replace(",", ".");
    if (Double.parseDouble(str5) <= 0.0D) {
      mxn.b((Activity)DPPPreenchimentoActivity.i(this.a), "O valor tem que ser maior que zero.");
      DPPPreenchimentoActivity.g(this.a).requestFocus();
      return;
    } 
    if (DPPPreenchimentoActivity.f(this.a).getText() == null) {
      mxn.b((Activity)DPPPreenchimentoActivity.i(this.a), "Preenchimento do campo Inicio (mm/aaaa) obrigatório.");
      DPPPreenchimentoActivity.f(this.a).requestFocus();
      return;
    } 
    if (DPPPreenchimentoActivity.f(this.a).getText().toString().trim().equals("")) {
      mxn.b((Activity)DPPPreenchimentoActivity.i(this.a), "Preenchimento do campo Inicio (mm/aaaa) obrigatório.");
      DPPPreenchimentoActivity.f(this.a).requestFocus();
      return;
    } 
    String str6 = DPPPreenchimentoActivity.f(this.a).getText().toString().trim();
    if (str6.length() != 7) {
      mxn.b((Activity)DPPPreenchimentoActivity.i(this.a), "Digite uma data válida.");
      DPPPreenchimentoActivity.f(this.a).requestFocus();
      return;
    } 
    String[] arrayOfString = str6.split("/");
    int i = Integer.parseInt(arrayOfString[0]);
    int j = Integer.parseInt(arrayOfString[1]);
    Date date = new Date();
    Calendar calendar1 = Calendar.getInstance();
    calendar1.setTime(date);
    int k = calendar1.get(1);
    int m = calendar1.get(2) + 1;
    int n = calendar1.get(5);
    if (k > j) {
      mxn.b((Activity)DPPPreenchimentoActivity.i(this.a), "Digite um ano válido.");
      DPPPreenchimentoActivity.f(this.a).requestFocus();
      return;
    } 
    if (i <= 0 || i > 12) {
      mxn.b((Activity)DPPPreenchimentoActivity.i(this.a), "Digite um mês válido.");
      DPPPreenchimentoActivity.f(this.a).requestFocus();
      return;
    } 
    if (m > i) {
      mxn.b((Activity)DPPPreenchimentoActivity.i(this.a), "Digite um mês válido.");
      DPPPreenchimentoActivity.f(this.a).requestFocus();
      return;
    } 
    if (m == i && n > Integer.parseInt(str4)) {
      mxn.b((Activity)DPPPreenchimentoActivity.i(this.a), "Selecione um dia válido.");
      DPPPreenchimentoActivity.f(this.a).requestFocus();
      return;
    } 
    if (DPPPreenchimentoActivity.b(this.a).getText().toString().trim().equals("0")) {
      mxn.b((Activity)DPPPreenchimentoActivity.i(this.a), "O campo Nº de meses não pode ser zero.");
      DPPPreenchimentoActivity.b(this.a).requestFocus();
      return;
    } 
    String str3 = DPPPreenchimentoActivity.b(this.a).getText().toString().trim();
    String str1 = str3;
    if (str3.isEmpty())
      str1 = "0"; 
    if (this.a.d.getVisibility() == 0 && DPPPreenchimentoActivity.j(this.a) && DPPPreenchimentoActivity.c(this.a) != 1) {
      if (DPPPreenchimentoActivity.k(this.a).getText() == null) {
        mxn.b((Activity)DPPPreenchimentoActivity.i(this.a), "Preenchimento do campo agência obrigatório.");
        DPPPreenchimentoActivity.k(this.a).requestFocus();
        return;
      } 
      if (DPPPreenchimentoActivity.k(this.a).getText().toString().trim().equals("")) {
        mxn.b((Activity)DPPPreenchimentoActivity.i(this.a), "Preenchimento do campo agência obrigatório.");
        DPPPreenchimentoActivity.k(this.a).requestFocus();
        return;
      } 
      if (DPPPreenchimentoActivity.l(this.a).getText() == null) {
        mxn.b((Activity)DPPPreenchimentoActivity.i(this.a), "Preenchimento do campo conta obrigatório.");
        DPPPreenchimentoActivity.l(this.a).requestFocus();
        return;
      } 
      if (DPPPreenchimentoActivity.l(this.a).getText().toString().trim().equals("")) {
        mxn.b((Activity)DPPPreenchimentoActivity.i(this.a), "Preenchimento do campo conta obrigatório.");
        DPPPreenchimentoActivity.l(this.a).requestFocus();
        return;
      } 
      DPPPreenchimentoActivity.m(this.a).c(DPPPreenchimentoActivity.k(this.a).getText().toString());
      DPPPreenchimentoActivity.m(this.a).f(DPPPreenchimentoActivity.l(this.a).getText().toString());
    } 
    j = Integer.parseInt(str1);
    Calendar calendar2 = Calendar.getInstance();
    calendar2.set(2, i - 1);
    calendar2.add(2, j);
    str3 = "";
    try {
      String str = (new SimpleDateFormat("MM/yyyy")).format(calendar2.getTime());
      str3 = str;
    } catch (Exception exception) {
      Log.e("ERROR_FORMAT_DATE", exception.getMessage());
      mxn.b((Activity)this.a, exception.getMessage());
    } 
    DPPPreenchimentoActivity.n(this.a).s(str5);
    DPPPreenchimentoActivity.n(this.a).n(str4);
    DPPPreenchimentoActivity.n(this.a).a(str6);
    DPPPreenchimentoActivity.n(this.a).k(str6);
    DPPPreenchimentoActivity.n(this.a).r(str1);
    DPPPreenchimentoActivity.n(this.a).b(str3);
    i = DPPPreenchimentoActivity.o(this.a).a();
    if (DPPPreenchimentoActivity.c(this.a) == 0)
      if (!DPPPreenchimentoActivity.k(this.a).getText().toString().trim().equals("") && !DPPPreenchimentoActivity.l(this.a).getText().toString().trim().equals("")) {
        DPPPreenchimentoActivity.n(this.a).d(DPPPreenchimentoActivity.k(this.a).getText().toString());
        DPPPreenchimentoActivity.n(this.a).g(DPPPreenchimentoActivity.l(this.a).getText().toString());
      } else {
        DPPPreenchimentoActivity.n(this.a).d(((ftl)DPPPreenchimentoActivity.p(this.a).g().get(DPPPreenchimentoActivity.p(this.a).a())).c().a());
        DPPPreenchimentoActivity.n(this.a).g(((ftl)DPPPreenchimentoActivity.p(this.a).g().get(DPPPreenchimentoActivity.p(this.a).a())).c().d());
      }  
    DPPPreenchimentoActivity.n(this.a).c(((Conta)DPPPreenchimentoActivity.o(this.a).g().get(i)).getAgencia());
    DPPPreenchimentoActivity.n(this.a).f(((Conta)DPPPreenchimentoActivity.o(this.a).g().get(i)).getCuenta());
    (new hef(this.a)).execute((Object[])new Void[0]);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hea.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */