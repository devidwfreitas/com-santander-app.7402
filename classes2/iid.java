import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.santander.app.RendaFixaAplicacaoConfirmacaoActivity;

public class iid extends Fragment {
  private final String a = "ConfirmarInvestimentoAplicacaoPasoTresFragment";
  
  private myk b = new myk();
  
  private Intent c = null;
  
  private RendaFixaAplicacaoConfirmacaoActivity d;
  
  private void a() {
    String str;
    frq.d("Investimentos_RendaFixa_Aplicar", this.d.a().b());
    frq.d("Investimentos_RendaFixa_Aplicar_Prazo", this.d.e());
    frq.d("Investimentos_RendaFixa_Aplicar_Valor", naj.f(this.d.g().j()));
    if (this.d.f()) {
      str = "DataAgendada";
    } else {
      str = "Hoje";
    } 
    frq.d("Investimentos_RendaFixa_Aplicar_DataOpcao", str);
    frq.d("Investimentos_RendaFixa_Aplicar_Data", this.d.g().c());
    frq.d("Investimentos_RendaFixa_Aplicar_ReferOper", this.d.g().a());
  }
  
  public void a(RendaFixaAplicacaoConfirmacaoActivity paramRendaFixaAplicacaoConfirmacaoActivity) {
    this.d = paramRendaFixaAplicacaoConfirmacaoActivity;
  }
  
  public void onAttach(Activity paramActivity) {
    super.onAttach(paramActivity);
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle) {
    View view;
    LinearLayout linearLayout;
    fsz fsz = this.d.g();
    if (fsz.k() != null && fsz.k().equals("0")) {
      view = paramLayoutInflater.inflate(2130969217, paramViewGroup, false);
      linearLayout = (LinearLayout)view.findViewById(2131755436);
      LinearLayout linearLayout1 = (LinearLayout)view.findViewById(2131755437);
      TextView textView1 = (TextView)view.findViewById(2131758449);
      TextView textView2 = (TextView)view.findViewById(2131758451);
      TextView textView3 = (TextView)view.findViewById(2131758453);
      TextView textView4 = (TextView)view.findViewById(2131758454);
      TextView textView5 = (TextView)view.findViewById(2131758455);
      TextView textView6 = (TextView)view.findViewById(2131758457);
      TextView textView7 = (TextView)view.findViewById(2131758459);
      TextView textView8 = (TextView)view.findViewById(2131757298);
      TextView textView9 = (TextView)view.findViewById(2131757297);
      textView1.setText(getResources().getString(2131297702) + " " + this.d.a().b());
      textView2.setText(this.d.a().b());
      textView3.setText(this.d.e() + " " + getResources().getString(2131297693));
      if (this.d.f()) {
        textView4.setText(getResources().getString(2131297691));
        textView5.setText(nak.l(this.d.i()));
      } else {
        textView4.setText(getResources().getString(2131297692));
        textView5.setText(nak.l(this.d.b().a()));
      } 
      textView6.setText(naj.f(this.d.b().g()));
      textView7.setText(naj.q(this.d.g().h()));
      textView8.setText(this.d.g().a());
      textView9.setText(this.d.g().c() + " " + this.d.g().e());
      a();
      linearLayout.setOnClickListener(new iie(this, linearLayout, linearLayout1));
      linearLayout1.setOnClickListener(new iif(this));
    } else {
      view = view.inflate(2130969218, (ViewGroup)linearLayout, false);
      ((LinearLayout)view.findViewById(2131755437)).setOnClickListener(new iig(this));
      TextView textView1 = (TextView)view.findViewById(2131758461);
      TextView textView2 = (TextView)view.findViewById(2131758453);
      TextView textView3 = (TextView)view.findViewById(2131758459);
      TextView textView4 = (TextView)view.findViewById(2131758462);
      textView1.setText(this.d.a().b());
      textView2.setText(this.d.e() + " " + getResources().getString(2131297693));
      textView3.setText(naj.q(this.d.g().h()));
      textView4.setText(naj.f(this.d.b().g()));
      textView1 = (TextView)view.findViewById(2131756495);
      textView1.setVisibility(8);
      if (this.d.g() != null && this.d.g().l() != null && this.d.g().l().length() > 0) {
        textView1.setText(this.d.g().l());
        textView1.setVisibility(0);
      } 
    } 
    TextView textView = (TextView)view.findViewById(2131756348);
    if (textView != null && textView.getText() != null && textView.getText().toString().length() > 0 && hau.a().z())
      textView.setText(textView.getText().toString().replace("realizad", "agendad")); 
    return view;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\iid.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */