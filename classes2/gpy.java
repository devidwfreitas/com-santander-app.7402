import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import com.santander.app.emprestimo.antecipacaoDT.activity.SimulacaoAntecipacaoDTPasso1Activity;

final class gpy implements hxy {
  gpy(Dialog paramDialog, hya paramhya) {}
  
  public void a() {
    frq.d("CreditoFinanciamento_Antecipar13_Elegivel", "Nao");
    this.b.a((Context)gpu.m(), 7);
    this.a.dismiss();
  }
  
  public void a(@hyr int paramInt) {
    frq.a("Antecipacao13", "CreditoFinanciamento");
    frq.d("CreditoFinanciamento_Antecipar13_Elegivel", "Sim");
    Intent intent = new Intent((Context)gpu.m(), SimulacaoAntecipacaoDTPasso1Activity.class);
    intent.setFlags(67108864);
    gpu.m().startActivity(intent);
    this.a.dismiss();
  }
  
  public void b() {
    frq.d("CreditoFinanciamento_Antecipar13_Indisponivel", "SistemaIndisponivel");
    this.b.b((Context)gpu.m(), 7);
    this.a.dismiss();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\gpy.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */