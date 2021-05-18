import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.santander.app.PoupancaAplicacaoConfirmacaoActivity;
import java.text.SimpleDateFormat;
import java.util.Date;

public class iij extends Fragment {
  private final String a = "ConfirmarInvestimentoPoupancaAplicacaoPasoTresFragment";
  
  private myk b = new myk();
  
  private Intent c = null;
  
  private fsy d;
  
  private fsy e;
  
  private PoupancaAplicacaoConfirmacaoActivity f;
  
  public String a() {
    return this.f.a(2131756334);
  }
  
  public void a(PoupancaAplicacaoConfirmacaoActivity paramPoupancaAplicacaoConfirmacaoActivity) {
    this.f = paramPoupancaAplicacaoConfirmacaoActivity;
  }
  
  public void onAttach(Activity paramActivity) {
    super.onAttach(paramActivity);
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle) {
    View view;
    Date date;
    super.onCreateView(paramLayoutInflater, paramViewGroup, paramBundle);
    if (this.f == null)
      this.f = (PoupancaAplicacaoConfirmacaoActivity)getActivity(); 
    if (paramBundle != null) {
      this.d = (fsy)paramBundle.getSerializable("CONFIRMAR");
      this.e = (fsy)paramBundle.getSerializable("APLICAR");
    } else {
      this.d = this.f.g();
      this.e = this.f.e();
    } 
    if (this.d.m() == null) {
      view = paramLayoutInflater.inflate(2130969239, paramViewGroup, false);
      LinearLayout linearLayout1 = (LinearLayout)view.findViewById(2131755436);
      LinearLayout linearLayout2 = (LinearLayout)view.findViewById(2131755437);
      linearLayout1.setOnClickListener(new iik(this, linearLayout1, linearLayout2));
      linearLayout2.setOnClickListener(new iil(this));
      date = new Date();
      SimpleDateFormat simpleDateFormat = new SimpleDateFormat("HH:mm");
      simpleDateFormat.format(date);
      TextView textView1 = (TextView)view.findViewById(2131758558);
      TextView textView2 = (TextView)view.findViewById(2131758559);
      TextView textView3 = (TextView)view.findViewById(2131758560);
      TextView textView4 = (TextView)view.findViewById(2131758561);
      TextView textView5 = (TextView)view.findViewById(2131758563);
      TextView textView6 = (TextView)view.findViewById(2131757297);
      TextView textView7 = (TextView)view.findViewById(2131757298);
      TextView textView8 = (TextView)view.findViewById(2131756348);
      ((TextView)view.findViewById(2131755374)).setVisibility(8);
      if (this.d.n()) {
        textView8.setText(getString(2131297713));
      } else {
        textView8.setText(getString(2131297712));
      } 
      textView4.setText(naj.f(this.d.k()));
      textView1.setText(this.d.j());
      textView2.setText(nai.c(this.d.e()));
      if (this.e.o() == null || this.e.o().equals("")) {
        textView3.setText(this.e.c());
      } else {
        textView3.setText(naq.c(this.e.o(), this.e.c()));
      } 
      textView5.setText(nak.l(nak.r(this.f.b())));
      textView6.setText(nak.l(nak.q(this.d.g())) + " - " + simpleDateFormat.format(date));
      textView7.setText(this.d.b());
    } else {
      Date date1 = new Date();
      SimpleDateFormat simpleDateFormat = new SimpleDateFormat("HH:mm");
      simpleDateFormat.format(date1);
      view = view.inflate(2130969240, (ViewGroup)date, false);
      TextView textView1 = (TextView)view.findViewById(2131758564);
      TextView textView2 = (TextView)view.findViewById(2131758565);
      TextView textView3 = (TextView)view.findViewById(2131757295);
      TextView textView4 = (TextView)view.findViewById(2131758566);
      TextView textView5 = (TextView)view.findViewById(2131757297);
      view.findViewById(2131755437).setOnClickListener(new iim(this));
      textView3.setText(naj.f(this.e.k()));
      textView1.setText(this.e.j());
      textView2.setText(this.e.d());
      textView4.setText(this.d.m());
      textView5.setText(nak.l(nak.q(this.e.g())) + " - " + simpleDateFormat.format(date1));
    } 
    TextView textView = (TextView)view.findViewById(2131756348);
    if (textView != null && textView.getText() != null && textView.getText().toString().length() > 0 && hau.a().z())
      textView.setText(textView.getText().toString().replace("realizad", "agendad")); 
    return view;
  }
  
  public void onResume() {
    super.onResume();
    if (this.f == null)
      this.f = (PoupancaAplicacaoConfirmacaoActivity)getActivity(); 
  }
  
  public void onSaveInstanceState(Bundle paramBundle) {
    paramBundle.putSerializable("CONFIRMAR", this.d);
    paramBundle.putSerializable("APLICAR", this.e);
    super.onSaveInstanceState(paramBundle);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\iij.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */