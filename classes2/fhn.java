import android.widget.RadioGroup;
import com.santander.app.FazerPagamentoBoletoVR;

public class fhn implements RadioGroup.OnCheckedChangeListener {
  public fhn(FazerPagamentoBoletoVR paramFazerPagamentoBoletoVR) {}
  
  public void onCheckedChanged(RadioGroup paramRadioGroup, int paramInt) {
    if (FazerPagamentoBoletoVR.a(this.a) != null && FazerPagamentoBoletoVR.b(this.a) != null)
      FazerPagamentoBoletoVR.b(this.a).removeTextChangedListener(FazerPagamentoBoletoVR.a(this.a)); 
    FazerPagamentoBoletoVR.b(this.a).setText("");
    if (paramInt == 2131757230) {
      FazerPagamentoBoletoVR.a(this.a, new guk("F"));
    } else {
      FazerPagamentoBoletoVR.a(this.a, new guk("J"));
    } 
    FazerPagamentoBoletoVR.a(this.a).a(FazerPagamentoBoletoVR.b(this.a));
    FazerPagamentoBoletoVR.b(this.a).addTextChangedListener(FazerPagamentoBoletoVR.a(this.a));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fhn.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */