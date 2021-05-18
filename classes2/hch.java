import android.content.Context;
import android.content.Intent;
import com.santander.app.seguros.ui.consultative.activities.HireInsuranceActivity;

class hch extends hbt {
  hch(hbv paramhbv) {
    super(paramhbv);
  }
  
  private void b() {
    frq.d("DeepLink_SegurosVida", "Elegivel");
  }
  
  private void c() {
    frq.d("DeepLink_SegurosAcidentePessoal", "Elegivel");
  }
  
  private void c(Context paramContext) {
    Intent intent = new Intent(paramContext, HireInsuranceActivity.class);
    intent.putExtra("extra_deeplink", "deeplink_lista_produtos");
    hbu hbu = new hbu(intent);
    this.a.a(paramContext, hbu);
  }
  
  private void d(Context paramContext) {
    if (a()) {
      b(paramContext);
      return;
    } 
    c();
    Intent intent = new Intent(paramContext, HireInsuranceActivity.class);
    intent.putExtra("extra_deeplink", "deeplink_acidente_pessoal");
    hbu hbu = new hbu(intent);
    this.a.a(paramContext, hbu);
  }
  
  private void e(Context paramContext) {
    if (a()) {
      b(paramContext);
      return;
    } 
    b();
    Intent intent = new Intent(paramContext, HireInsuranceActivity.class);
    intent.putExtra("extra_deeplink", "deeplink_vida");
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
            d(paramContext);
            return;
          case 1:
            e(paramContext);
            return;
          case 2:
            break;
        } 
        break;
      case -2002643816:
        if (str.equals("segurosAcidentePessoal"))
          b = 0; 
      case -1214929242:
        if (str.equals("segurosVida"))
          b = 1; 
      case -2034985529:
        if (str.equals("segurosListaProdutos"))
          b = 2; 
    } 
    c(paramContext);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hch.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */