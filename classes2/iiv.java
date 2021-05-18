import android.app.Activity;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.TextView;
import com.santander.app.PoupancaResgateConfirmacaoActivity;

public class iiv extends Fragment {
  private final String a = "ConfirmarInvestimentoPoupancaResgatePasoUnoFragment";
  
  private PoupancaResgateConfirmacaoActivity b;
  
  private nau c = null;
  
  public void a(PoupancaResgateConfirmacaoActivity paramPoupancaResgateConfirmacaoActivity) {
    this.b = paramPoupancaResgateConfirmacaoActivity;
  }
  
  public void onAttach(Activity paramActivity) {
    super.onAttach(paramActivity);
    this.c = (nau)paramActivity;
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle) {
    View view;
    paramBundle = null;
    fts fts = this.b.c();
    ftr ftr = this.b.b();
    if (fts.a() == null || "".equals(fts.a())) {
      String str;
      view = paramLayoutInflater.inflate(2130969244, paramViewGroup, false);
      ((Button)view.findViewById(2131755118)).setOnClickListener(new iiw(this));
      ((TextView)view.findViewById(2131758465)).setText(fts.j());
      ((TextView)view.findViewById(2131758466)).setText(nai.c(fts.f()));
      ((TextView)view.findViewById(2131758467)).setText(fts.l() + " " + fts.o());
      ((TextView)view.findViewById(2131758459)).setText(naj.s(fts.x()));
      TextView textView = (TextView)view.findViewById(2131758572);
      if (ftr.d()) {
        str = ftr.e();
      } else {
        str = fts.p();
      } 
      textView.setText(nak.r(str));
    } 
    return view;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\iiv.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */