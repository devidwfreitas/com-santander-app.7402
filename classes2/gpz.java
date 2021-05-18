import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import com.santander.app.emprestimo.antecipacaoIR.activity.SimulacaoAntecipacaoIRPasso1Activity;

final class gpz implements hxy {
  gpz(Dialog paramDialog, hya paramhya) {}
  
  public void a() {
    frq.d("CreditoFinanciamento_AnteciparIR_Elegivel", "Nao");
    this.b.a((Context)gpu.m(), 8);
    this.a.dismiss();
  }
  
  public void a(@hyr int paramInt) {
    frq.a("AntecipacaoIR", "CreditoFinanciamento");
    frq.d("CreditoFinanciamento_AnteciparIR_Elegivel", "Sim");
    Intent intent = new Intent((Context)gpu.m(), SimulacaoAntecipacaoIRPasso1Activity.class);
    intent.setFlags(67108864);
    gpu.m().startActivity(intent);
    this.a.dismiss();
  }
  
  public void b() {
    frq.d("CreditoFinanciamento_AnteciparIR_Indisponivel", "SistemaIndisponivel");
    this.b.b((Context)gpu.m(), 8);
    this.a.dismiss();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\gpz.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */