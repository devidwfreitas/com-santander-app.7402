import android.widget.RadioGroup;
import com.santander.app.FazerPagamentoBoletoVR;

public class fho implements RadioGroup.OnCheckedChangeListener {
  public fho(FazerPagamentoBoletoVR paramFazerPagamentoBoletoVR) {}
  
  public void onCheckedChanged(RadioGroup paramRadioGroup, int paramInt) {
    if (FazerPagamentoBoletoVR.c(this.a) != null && FazerPagamentoBoletoVR.d(this.a) != null)
      FazerPagamentoBoletoVR.d(this.a).removeTextChangedListener(FazerPagamentoBoletoVR.c(this.a)); 
    FazerPagamentoBoletoVR.d(this.a).setText("");
    if (paramInt == 2131757235) {
      FazerPagamentoBoletoVR.b(this.a, new guk("F"));
    } else {
      FazerPagamentoBoletoVR.b(this.a, new guk("J"));
    } 
    FazerPagamentoBoletoVR.c(this.a).a(FazerPagamentoBoletoVR.d(this.a));
    FazerPagamentoBoletoVR.d(this.a).addTextChangedListener(FazerPagamentoBoletoVR.c(this.a));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fho.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */