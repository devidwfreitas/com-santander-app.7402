import android.app.Activity;
import android.content.Context;
import android.support.v7.app.AlertDialog;
import com.santander.app.emprestimo.creditopessoal.domain.CPContratacao;
import java.util.ArrayList;

public class hrm implements hrl {
  private hql a;
  
  private hox b;
  
  private Activity c;
  
  public hrm(hql paramhql) {
    this.a = paramhql;
    this.c = (Activity)paramhql;
    this.b = new hoz(this.c, this);
  }
  
  private String l() {
    return this.b.h() ? "Refinanciamento" : ((this.b.g() == 11) ? "Consignado" : "CreditoPessoal");
  }
  
  private void m() {
    if (this.b.f() == 0)
      this.a.c(); 
    if (this.b.i()) {
      this.a.e();
      return;
    } 
    this.a.d();
    this.a.c();
  }
  
  private String n() {
    boolean bool = this.b.i();
    if (this.b.g() == 11) {
      switch (this.b.f()) {
        default:
          return "";
        case 0:
          return this.c.getString(2131298910);
        case 1:
          return bool ? this.c.getString(2131298909) : this.c.getString(2131298913);
        case 2:
          break;
      } 
      return bool ? this.c.getString(2131298908) : this.c.getString(2131298912);
    } 
    return bool ? this.c.getString(2131298907) : this.c.getString(2131298911);
  }
  
  public void a() {
    boolean bool;
    frq.d("CreditoFinanciamento_Emprestimos_Contratacao_ContratarComSeguro_Acao", l());
    miq miq = miq.C();
    if (this.b.g() == 11) {
      bool = true;
    } else {
      bool = false;
    } 
    miq.f(bool);
    a(this.b.a());
  }
  
  public void a(CPContratacao paramCPContratacao) {
    this.a.b(n());
    this.a.a(paramCPContratacao);
    this.a.a();
    m();
  }
  
  public void a(gvb paramgvb) {
    if (paramgvb != null) {
      frq.d("CreditoFinanciamento_Emprestimos_Contratacao_Produto", l());
      this.a.a(paramgvb);
    } 
  }
  
  public void a(String paramString) {
    hys.a(this.c, paramString, true);
  }
  
  public void a(boolean paramBoolean) {
    if (paramBoolean) {
      frq.d("CreditoFinanciamento_Emprestimos_Contratacao_SimularComSeguro_Acao", l());
      return;
    } 
    frq.d("CreditoFinanciamento_Emprestimos_Contratacao_ContratarSemSeguro_Acao", l());
  }
  
  public void a(boolean paramBoolean, ArrayList<gky> paramArrayList) {
    if (paramBoolean) {
      this.a.a(paramArrayList);
      return;
    } 
    this.a.b(paramArrayList);
  }
  
  public void b() {
    miq.C().f(false);
  }
  
  public void c() {
    this.b.b();
  }
  
  public void d() {
    this.b.c();
  }
  
  public void e() {
    frq.d("CreditoFinanciamento_Emprestimos_Contratacao_InformativoResumoContratual_Acao", l());
    this.b.a(new String[] { "condicoes_gerais_emprestimo", "2", "2" });
  }
  
  public void f() {
    frq.d("CreditoFinanciamento_Emprestimos_Contratacao_InformativoCondicoesGeraisEmprestimo_Acao", l());
    this.b.a(new String[] { "condicoes_gerais_contrato", "1", "1" });
  }
  
  public void g() {
    frq.d("CreditoFinanciamento_Emprestimos_Contratacao_InformativoCondicoesGeraisSeguro_Acao", l());
    this.b.a(new String[] { "condicoes_seguro", "3", "4" });
  }
  
  public void h() {
    frq.d("CreditoFinanciamento_Emprestimos_Contratacao_InformativoCET_Acao", l());
    this.b.e();
  }
  
  public void i() {
    this.b.d();
  }
  
  public void j() {
    AlertDialog alertDialog = (new AlertDialog.Builder((Context)this.c)).setTitle(2131297207).setMessage(2131298984).setPositiveButton(2131298900, new hrn(this)).create();
    alertDialog.setOnShowListener(new hro(this));
    alertDialog.show();
  }
  
  public void k() {
    frq.d("CreditoFinanciamento_Emprestimos_Contratacao_SimularComSeguro_Acao", l());
    d();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hrm.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */