import android.content.Context;
import android.content.Intent;
import com.santander.app.emprestimo.antecipacaoDT.activity.SimulacaoAntecipacaoDTPasso1Activity;
import com.santander.app.emprestimo.chat.presentation.EmpChatActivity;

class gmg extends gml {
  gmg(Context paramContext) {
    super(paramContext, 7);
  }
  
  public String a() {
    return "Antecipação de 13º";
  }
  
  void a(@hyr int paramInt) {
    if (mzr.a()) {
      k();
      return;
    } 
    if (this.b.e() != null && this.b.e().c().equalsIgnoreCase("S")) {
      Intent intent = new Intent(this.a, SimulacaoAntecipacaoDTPasso1Activity.class);
      this.a.startActivity(intent);
      return;
    } 
    EmpChatActivity.a(this.a, 7);
  }
  
  public String b() {
    return "Antecipe já";
  }
  
  public String c() {
    return "";
  }
  
  public String d() {
    return b();
  }
  
  boolean e() {
    return false;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\gmg.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */