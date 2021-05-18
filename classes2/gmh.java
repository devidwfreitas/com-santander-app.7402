import android.content.Context;
import android.content.Intent;
import com.santander.app.emprestimo.antecipacaoIR.activity.SimulacaoAntecipacaoIRPasso1Activity;
import com.santander.app.emprestimo.chat.presentation.EmpChatActivity;

class gmh extends gml {
  gmh(Context paramContext) {
    super(paramContext, 8);
  }
  
  public String a() {
    return "Antecipação de IR";
  }
  
  void a(@hyr int paramInt) {
    if (mzr.a()) {
      k();
      return;
    } 
    if (this.b.f() != null && this.b.f().c().equalsIgnoreCase("S")) {
      Intent intent = new Intent(this.a, SimulacaoAntecipacaoIRPasso1Activity.class);
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


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\gmh.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */