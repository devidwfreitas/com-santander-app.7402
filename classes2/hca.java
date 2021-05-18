import android.content.Context;
import android.content.Intent;
import com.santander.app.emprestimo.acordo.presentation.AcordoSimulacaoActivity;
import com.santander.app.emprestimo.chat.presentation.EmpChatActivity;
import com.santander.app.emprestimo.creditopessoal.presentation.CPSimulacaoActivity;
import com.santander.app.emprestimo.creditounificado.presentation.CPUSimulacaoActivity;

class hca extends hbt {
  private hya b = hyb.j();
  
  hca(hbv paramhbv) {
    super(paramhbv);
  }
  
  private void a(Context paramContext, @hxu int paramInt, Runnable paramRunnable) {
    hyb.j().a(paramInt, new hcd(this, paramRunnable, paramContext));
  }
  
  private void b() {
    frq.d("DeepLink_Emprestimos", "Elegivel");
  }
  
  private void c() {
    frq.d("DeepLink_Renegociacao", "Elegivel");
  }
  
  private void c(Context paramContext) {
    hbu hbu;
    if (a()) {
      b(paramContext);
      return;
    } 
    b();
    if (this.b.c()) {
      hbu = new hbu(new Intent(paramContext, AcordoSimulacaoActivity.class));
    } else if (this.b.b() || this.b.a()) {
      Intent intent = new Intent(paramContext, CPSimulacaoActivity.class);
      intent.putExtra("extra_type_emprestimo", 3);
      hbu = new hbu(intent);
    } else {
      Intent intent = new Intent(paramContext, EmpChatActivity.class);
      intent.putExtra("EXTRA_TYPE", 3);
      hbu = new hbu(intent);
    } 
    this.a.a(paramContext, hbu);
  }
  
  private void d(Context paramContext) {
    hbu hbu;
    byte b = 12;
    if (a()) {
      b(paramContext);
      return;
    } 
    c();
    if (this.b.c()) {
      hbu = new hbu(new Intent(paramContext, AcordoSimulacaoActivity.class));
    } else if (this.b.d()) {
      Intent intent = new Intent(paramContext, CPUSimulacaoActivity.class);
      if (!this.b.d())
        b = 13; 
      intent.putExtra("extra_type_emprestimo", b);
      hbu = new hbu(intent);
    } else {
      Intent intent = new Intent(paramContext, EmpChatActivity.class);
      intent.putExtra("EXTRA_TYPE", 12);
      hbu = new hbu(intent);
    } 
    this.a.a(paramContext, hbu);
  }
  
  public void a(Context paramContext, hbp paramhbp) {
    String str = paramhbp.a();
    byte b = -1;
    switch (str.hashCode()) {
      default:
        switch (b) {
          default:
            return;
          case 0:
            a(paramContext, 3, new hcb(this, paramContext));
            return;
          case 1:
            break;
        } 
        break;
      case -1956842332:
        if (str.equals("emprestimos"))
          b = 0; 
      case 204886344:
        if (str.equals("renegociacao"))
          b = 1; 
    } 
    a(paramContext, 12, new hcc(this, paramContext));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hca.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */