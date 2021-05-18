import android.app.Activity;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.TextView;
import com.santander.app.RendaFixaResgateConfirmacaoActivity;

public class ijc extends Fragment {
  private final String a = "ConfirmarInvestimentoResgatePasoUnoFragment";
  
  private nau b = null;
  
  private RendaFixaResgateConfirmacaoActivity c;
  
  public void a(RendaFixaResgateConfirmacaoActivity paramRendaFixaResgateConfirmacaoActivity) {
    this.c = paramRendaFixaResgateConfirmacaoActivity;
  }
  
  public void onAttach(Activity paramActivity) {
    super.onAttach(paramActivity);
    this.b = (nau)paramActivity;
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle) {
    View view = paramLayoutInflater.inflate(2130969248, paramViewGroup, false);
    ((Button)view.findViewById(2131755118)).setOnClickListener(new ijd(this));
    ftw ftw = this.c.a();
    ftv ftv = this.c.b();
    fte fte = this.c.d();
    TextView textView1 = (TextView)view.findViewById(2131758464);
    TextView textView2 = (TextView)view.findViewById(2131758465);
    TextView textView3 = (TextView)view.findViewById(2131758466);
    TextView textView4 = (TextView)view.findViewById(2131758467);
    TextView textView5 = (TextView)view.findViewById(2131758459);
    TextView textView6 = (TextView)view.findViewById(2131758592);
    TextView textView7 = (TextView)view.findViewById(2131758594);
    TextView textView8 = (TextView)view.findViewById(2131758596);
    TextView textView9 = (TextView)view.findViewById(2131758598);
    TextView textView10 = (TextView)view.findViewById(2131758600);
    TextView textView11 = (TextView)view.findViewById(2131758581);
    if (ftw.k()) {
      String str1 = getResources().getString(2131297778);
      textView1.setText(str1);
      textView2.setText(ftw.m().trim());
      textView3.setText(nak.l(fte.a()));
      textView4.setText(naj.f(fte.e()));
      textView5.setText(naj.q(fte.d()));
      textView6.setText(nak.l(fte.b()));
      textView7.setText(ftv.c());
      textView8.setText(naj.f(ftv.h()));
      textView9.setText(naj.f(ftv.j()));
      textView10.setText(naj.f(ftv.k()));
      textView11.setText(naj.f(ftv.l()));
      return view;
    } 
    String str = getResources().getString(2131297779);
    textView1.setText(str);
    textView2.setText(ftw.m().trim());
    textView3.setText(nak.l(fte.a()));
    textView4.setText(naj.f(fte.e()));
    textView5.setText(naj.q(fte.d()));
    textView6.setText(nak.l(fte.b()));
    textView7.setText(ftv.c());
    textView8.setText(naj.f(ftv.h()));
    textView9.setText(naj.f(ftv.j()));
    textView10.setText(naj.f(ftv.k()));
    textView11.setText(naj.f(ftv.l()));
    return view;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ijc.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */