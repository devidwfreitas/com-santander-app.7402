import android.app.Activity;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.santander.app.PoupancaAplicacaoConfirmacaoActivity;

public class iin extends Fragment {
  private final String a = "ConfirmarInvestimentoPoupancaAplicacaoPasoUnoFragment";
  
  private nau b = null;
  
  private PoupancaAplicacaoConfirmacaoActivity c;
  
  private fsy d;
  
  public void a(PoupancaAplicacaoConfirmacaoActivity paramPoupancaAplicacaoConfirmacaoActivity) {
    this.c = paramPoupancaAplicacaoConfirmacaoActivity;
  }
  
  public void onAttach(Activity paramActivity) {
    super.onAttach(paramActivity);
    this.b = (nau)paramActivity;
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle) {
    this.d = this.c.e();
    if (this.d.m() == null) {
      view = paramLayoutInflater.inflate(2130969241, paramViewGroup, false);
      ((Button)view.findViewById(2131755118)).setOnClickListener(new iio(this));
      textView1 = (TextView)view.findViewById(2131758558);
      TextView textView3 = (TextView)view.findViewById(2131758559);
      TextView textView4 = (TextView)view.findViewById(2131758560);
      TextView textView5 = (TextView)view.findViewById(2131757279);
      TextView textView6 = (TextView)view.findViewById(2131758567);
      textView1.setText(this.d.j());
      textView3.setText(nai.c(this.d.e()));
      if (this.d.o() == null || this.d.o().equals("")) {
        textView4.setText(this.d.c());
        textView5.setText(naj.j(this.d.k()));
        textView6.setText(nak.l(nak.r(this.c.c())));
        return view;
      } 
      textView4.setText(naq.c(this.d.o(), this.d.c()));
      textView5.setText(naj.j(this.d.k()));
      textView6.setText(nak.l(nak.r(this.c.c())));
      return view;
    } 
    View view = view.inflate(2130969240, (ViewGroup)textView1, false);
    ((TextView)view.findViewById(2131758566)).setText(this.d.m());
    TextView textView1 = (TextView)view.findViewById(2131758564);
    TextView textView2 = (TextView)view.findViewById(2131758564);
    ((TextView)view.findViewById(2131757295)).setText(naj.f(this.c.d()));
    textView1.setText("");
    textView2.setText("");
    ((LinearLayout)view.findViewById(2131755437)).setOnClickListener(new iip(this));
    return view;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\iin.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */