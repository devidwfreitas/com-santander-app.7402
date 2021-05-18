import android.app.Activity;
import com.santander.app.ContaMovementActivity;
import com.santander.app.contacorrente.domain.ExtratoContract;

public class fhg implements gwb {
  private boolean b;
  
  public fhg(ContaMovementActivity paramContaMovementActivity, boolean paramBoolean) {
    this.b = paramBoolean;
  }
  
  public void a() {
    ContaMovementActivity.l(this.a);
    mxn.d((Activity)ContaMovementActivity.m(this.a), this.a.getResources().getString(2131297343));
  }
  
  public void a(ExtratoContract paramExtratoContract) {
    if (paramExtratoContract.getLancamentoList().isEmpty()) {
      ContaMovementActivity.l(this.a);
      mxn.d((Activity)ContaMovementActivity.m(this.a), this.a.getResources().getString(2131297167));
      if (this.b)
        ContaMovementActivity.n(this.a); 
    } else {
      ContaMovementActivity.a(this.a, paramExtratoContract);
      ContaMovementActivity.a(this.a, this.b);
      if (paramExtratoContract instanceof fuy)
        ContaMovementActivity.o(this.a).setExtracto((fuy)paramExtratoContract); 
    } 
    ContaMovementActivity.l(this.a);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fhg.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */