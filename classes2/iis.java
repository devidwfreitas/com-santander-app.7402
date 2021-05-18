import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.santander.app.PoupancaResgateConfirmacaoActivity;
import java.text.SimpleDateFormat;
import java.util.Date;

public class iis extends Fragment {
  private final String a = "ConfirmarInvestimentoPoupancaResgatePasoTresFragment";
  
  private myk b = new myk();
  
  private Intent c = null;
  
  private PoupancaResgateConfirmacaoActivity d;
  
  public String a() {
    return this.d.a(2131756334);
  }
  
  public void a(PoupancaResgateConfirmacaoActivity paramPoupancaResgateConfirmacaoActivity) {
    this.d = paramPoupancaResgateConfirmacaoActivity;
  }
  
  public void onAttach(Activity paramActivity) {
    super.onAttach(paramActivity);
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle) {
    View view = paramLayoutInflater.inflate(2130969242, paramViewGroup, false);
    if (this.d == null)
      this.d = (PoupancaResgateConfirmacaoActivity)getActivity(); 
    LinearLayout linearLayout1 = (LinearLayout)view.findViewById(2131755436);
    LinearLayout linearLayout2 = (LinearLayout)view.findViewById(2131755437);
    linearLayout1.setOnClickListener(new iit(this, linearLayout1, linearLayout2));
    linearLayout2.setOnClickListener(new iiu(this));
    fts fts = this.d.d();
    ((TextView)view.findViewById(2131758465)).setText(fts.j());
    ((TextView)view.findViewById(2131758466)).setText(nai.c(nai.c(fts.f())));
    ((TextView)view.findViewById(2131758467)).setText(fts.l() + " " + fts.o());
    ((TextView)view.findViewById(2131758459)).setText(naj.f(fts.x()));
    ((TextView)view.findViewById(2131757297)).setText((new SimpleDateFormat("dd/MM/yyyy HH:mm:ss")).format(new Date()));
    ((TextView)view.findViewById(2131758568)).setText(nak.r(fts.p()));
    ((TextView)view.findViewById(2131758569)).setText(fts.d());
    TextView textView = (TextView)view.findViewById(2131756348);
    if (textView != null && textView.getText() != null && textView.getText().toString().length() > 0 && hau.a().z()) {
      textView.setText(textView.getText().toString().replace("realizad", "agendad"));
      hau.a().a(false);
    } 
    return view;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\iis.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */