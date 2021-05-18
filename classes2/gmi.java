import android.content.Context;
import android.content.Intent;
import com.santander.app.emprestimo.chat.presentation.EmpChatActivity;
import com.santander.app.emprestimo.creditopessoal.presentation.CPSimulacaoActivity;

class gmi extends gml {
  gmi(Context paramContext) {
    super(paramContext, 11);
  }
  
  private void a(hxq paramhxq) {}
  
  private boolean l() {
    hxq hxq = this.b.h();
    ipi ipi = miq.C().f().C();
    return (hxq != null && !hxq.isMorno() && ipi.b("00000071"));
  }
  
  public String a() {
    return "Consignado";
  }
  
  void a(@hyr int paramInt) {
    if (mzr.a()) {
      k();
      return;
    } 
    if (this.b.h() != null && this.b.h().isEligivel()) {
      frq.d("CreditoFinanciamento_CarrosselHomeLogada_Acao", "CreditoConsignado");
      Intent intent = new Intent(this.a, CPSimulacaoActivity.class);
      intent.putExtra("extra_type_emprestimo", g());
      this.a.startActivity(intent);
      return;
    } 
    EmpChatActivity.a(this.a, 11);
  }
  
  public String b() {
    return "Oferta Especial";
  }
  
  public String c() {
    return "Limite disponível:";
  }
  
  public String d() {
    return l() ? ((this.b.h().getValorLimiteMax() > 0.0F) ? naj.a(this.b.h().getValorLimiteMax()) : b()) : b();
  }
  
  boolean e() {
    return l();
  }
  
  public boolean f() {
    return j();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\gmi.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */