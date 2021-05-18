import android.text.Html;
import android.util.Log;
import com.santander.app.MinhaConta;

class ish implements gkw {
  ish(ise paramise) {}
  
  public void a(Object paramObject) {
    paramObject = paramObject;
    if (paramObject == null) {
      ise.c(this.a).a(ise.e(this.a).n());
      return;
    } 
    if (ise.e(this.a).n() != null && ise.e(this.a).n().hasError()) {
      if (ise.e(this.a).n().getFaultstring() != null && ise.e(this.a).n().getFaultstring().contains("Senha inválida")) {
        hat.d();
        ise.c(this.a).c();
        return;
      } 
      ise.c(this.a).a(ise.e(this.a).n());
      return;
    } 
    if (paramObject.p() == null) {
      frq.d("AutenticarUsuario-Null", "AutenticarUsuario-Null");
      ise.c(this.a).c(Html.fromHtml(MinhaConta.b().getResources().getString(2131298210)).toString());
      return;
    } 
    if (paramObject.p() != null && paramObject.p().getMsgErro() != null && paramObject.p().getMsgErro().length() > 0) {
      if (paramObject.p().getCodErro().equals("1000")) {
        ise.c(this.a).a(paramObject.p().getMsgErro());
        return;
      } 
      if (paramObject.p().getCodErro().equals("1001")) {
        ise.c(this.a).a(paramObject.p().getMsgErro());
        return;
      } 
      if (paramObject.p().getCodErro().equals("1002")) {
        ise.c(this.a).a(paramObject.p().getMsgErro());
        return;
      } 
      if (paramObject.p().getCodErro().equals("18369")) {
        ise.c(this.a).a("Você excedeu as tentativas de senha e o seu acesso foi cancelado. Toque em Esqueci a Senha recadastrá-lo.");
        return;
      } 
      if (paramObject.p().getCodErro().equals("001")) {
        ise.c(this.a).a(paramObject.p().getMsgErro());
        return;
      } 
      if (paramObject.p().getCodErro().equals("416")) {
        ise.c(this.a).a(paramObject.p().getMsgErro());
        return;
      } 
      if (paramObject.p().getCodErro().equals("18370")) {
        ise.c(this.a).a("Você excedeu as tentativas de senha e o seu acesso foi cancelado. Toque em Esqueci a Senha recadastrá-lo.");
        return;
      } 
      if (paramObject.p().getCodErro().equals("18326")) {
        ise.c(this.a).a("Senha escolhida já foi utilizada e não poderá ser repetida. Por favor, escolha uma nova senha diferente.");
        return;
      } 
      if (paramObject.p().getCodErro().equals("18306")) {
        ise.c(this.a).a("Senha informada é inválida.");
        return;
      } 
      if (paramObject.p().getCodErro().equals("18358")) {
        ise.c(this.a).a("Senha inválida. Para sua segurança, a senha de acesso deve ter 6 (seis) números que não podem ser repetidos, nem sequenciais. Também não podem ser escolhidas as últimas senhas já utilizadas.");
        return;
      } 
      if (paramObject.p().getCodErro().equals("18367")) {
        ise.c(this.a).a("Senha inválida. Uma nova tentativa incorreta cancelará sua senha, e será necessário cadastrar uma nova.");
        return;
      } 
      if (paramObject.p().getCodErro().equals("18328")) {
        ise.c(this.a).a("Sua senha foi cancelada por medida preventiva de segurança. Por favor, acesse o Internet Banking com seu CPF e cadastre uma nova senha. Em caso de dúvidas, entre em contato com a Central de Atendimento.");
        return;
      } 
      if (paramObject.p().getCodErro().equals("18368")) {
        ise.c(this.a).a("Notamos que você ainda não é nosso cliente. Acesse santander.com.br e abra sua conta.");
        return;
      } 
      if (paramObject.p().getMsgErro().contains("74813")) {
        frq.d("HASHDUPLICADOLOGIN", paramObject.p().getMsgErro());
        ise.c(this.a).c(paramObject.p().getMsgErro());
        return;
      } 
      Log.e("LoginInteractorImpl", paramObject.p().getMsgErro());
      ise.c(this.a).c(Html.fromHtml(MinhaConta.b().getResources().getString(2131297122)).toString());
      return;
    } 
    if (ise.e(this.a).j() == null || ise.e(this.a).j().isEmpty()) {
      ise.c(this.a).a(ise.e(this.a).n());
      return;
    } 
    ise.e(this.a).f().v();
    ise.f(this.a);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ish.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */