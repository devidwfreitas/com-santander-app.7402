import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import com.santander.app.emprestimo.acordo.presentation.AcordoSimulacaoActivity;
import com.santander.app.emprestimo.creditopessoal.presentation.CPSimulacaoActivity;
import com.santander.app.emprestimo.creditounificado.presentation.CPUSimulacaoActivity;

class gmk extends gml {
  private boolean d;
  
  gmk(Context paramContext) {
    super(paramContext, 3);
  }
  
  private boolean l() {
    hxq hxq = this.b.h();
    return (hxq != null && this.b.h().isEligivel() && !hxq.isMorno());
  }
  
  public String a() {
    return "Simular e Contratar";
  }
  
  @SuppressLint({"SwitchIntDef"})
  void a(@hyr int paramInt) {
    if (mzr.a()) {
      k();
      return;
    } 
    switch (paramInt) {
      default:
        return;
      case 3:
      case 10:
      case 11:
        frq.d("CreditoFinanciamento_CarrosselHomeLogada_Acao", "SimularContratar");
        intent = new Intent(this.a, CPSimulacaoActivity.class);
        intent.putExtra("extra_type_emprestimo", g());
        this.a.startActivity(intent);
        return;
      case 9:
        intent = new Intent(this.a, AcordoSimulacaoActivity.class);
        intent.putExtra("extra_type_emprestimo", g());
        this.a.startActivity(intent);
        return;
      case 12:
      case 13:
        break;
    } 
    boolean bool = hyb.j().d();
    Intent intent = new Intent(this.a, CPUSimulacaoActivity.class);
    if (bool) {
      paramInt = 12;
    } else {
      paramInt = 13;
    } 
    intent.putExtra("extra_type_emprestimo", paramInt);
    intent.setFlags(67108864);
    this.a.startActivity(intent);
  }
  
  public String b() {
    return "Oferta Especial";
  }
  
  public String c() {
    return "Limite disponível:";
  }
  
  public String d() {
    if (this.b.a() != null && this.b.h() != null && l()) {
      float f1 = hyx.b(this.b.a());
      float f2 = this.b.h().getValorLimiteMax();
      this.d = true;
      return (f1 > f2) ? naj.a(f1) : naj.f(String.valueOf(f2));
    } 
    if (this.b.a() != null) {
      this.d = true;
      return naj.f(this.b.a());
    } 
    if (this.b.h() != null && l()) {
      this.d = true;
      return naj.a(this.b.h().getValorLimiteMax());
    } 
    return "Oferta Especial";
  }
  
  boolean e() {
    return this.d;
  }
  
  public boolean f() {
    return j();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\gmk.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */