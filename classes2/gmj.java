import android.content.Context;
import android.content.Intent;
import com.santander.app.emprestimo.chat.presentation.EmpChatActivity;
import com.santander.app.emprestimo.creditopessoal.presentation.CPSimulacaoActivity;

class gmj extends gml {
  gmj(Context paramContext) {
    super(paramContext, 10);
  }
  
  public String a() {
    return "Crédito Pessoal";
  }
  
  void a(@hyr int paramInt) {
    if (mzr.a()) {
      k();
      return;
    } 
    if (this.b.a() != null) {
      frq.d("CreditoFinanciamento_CarrosselHomeLogada_Acao", "CreditoPessoal");
      Intent intent = new Intent(this.a, CPSimulacaoActivity.class);
      intent.putExtra("extra_type_emprestimo", g());
      this.a.startActivity(intent);
      return;
    } 
    EmpChatActivity.a(this.a, 10);
  }
  
  public String b() {
    return "Oferta especial";
  }
  
  public String c() {
    return "Limite Disponível:";
  }
  
  public String d() {
    return (this.b.a() != null) ? naj.f(this.b.a()) : b();
  }
  
  boolean e() {
    return (this.b.a() != null);
  }
  
  public boolean f() {
    return j();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\gmj.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */