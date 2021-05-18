import android.content.Context;
import android.content.Intent;
import com.santander.app.ContaMovementActivity;
import com.santander.app.SaldoActivity;

class hbz extends hbt {
  public hbz(hbv paramhbv) {
    super(paramhbv);
  }
  
  private void b() {
    frq.d("DeepLink_ContaCorrenteSaldoDetalhado", "Elegivel");
  }
  
  private void c() {
    frq.d("DeepLink_ContaCorrenteExtrato", "Elegivel");
  }
  
  private void c(Context paramContext) {
    b();
    Intent intent = new Intent(paramContext, SaldoActivity.class);
    intent.setFlags(67108864);
    hbu hbu = new hbu(intent);
    this.a.a(paramContext, hbu);
  }
  
  private void d(Context paramContext) {
    c();
    Intent intent = new Intent(paramContext, ContaMovementActivity.class);
    intent.setFlags(67108864);
    hbu hbu = new hbu(intent);
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
            c(paramContext);
            return;
          case 1:
            break;
        } 
        break;
      case 1241187150:
        if (str.equals("contaCorrenteSaldoDetalhado"))
          b = 0; 
      case 1232894390:
        if (str.equals("contaCorrenteExtrato"))
          b = 1; 
    } 
    d(paramContext);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hbz.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */