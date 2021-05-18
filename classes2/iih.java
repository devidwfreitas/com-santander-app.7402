import android.app.Activity;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.santander.app.RendaFixaAplicacaoConfirmacaoActivity;
import org.apache.commons.codec.binary.Base64;

public class iih extends Fragment {
  private final String a = "ConfirmarInvestimentoAplicacaoPasoUnoFragment";
  
  private RendaFixaAplicacaoConfirmacaoActivity b;
  
  private nau c = null;
  
  private ftq d;
  
  private ftt e;
  
  private fuu f;
  
  private String g;
  
  private void a() {
    SharedPreferences sharedPreferences2 = this.b.getSharedPreferences("CDBPreferences", 0);
    SharedPreferences sharedPreferences1 = this.b.getSharedPreferences("cardPreferences", 0);
    try {
      SharedPreferences.Editor editor2 = sharedPreferences2.edit();
      String str2 = new String(Base64.encodeBase64(this.f.getAgencia().getBytes()));
      String str3 = new String(Base64.encodeBase64(this.f.getAgencia().getBytes()));
      String str4 = new String(Base64.encodeBase64(this.e.g().getBytes()));
      String str5 = new String(Base64.encodeBase64(this.d.a().getBytes()));
      String str6 = new String(Base64.encodeBase64(this.d.b().getBytes()));
      String str7 = new String(Base64.encodeBase64(this.e.d().getBytes()));
      String str8 = new String(Base64.encodeBase64(this.g.getBytes()));
      editor2.putString("contaCDB", str2);
      editor2.putString("agenciaCDB", str3);
      editor2.putString("valorCDB", str4);
      editor2.putString("codigoProdutoCDB", str5);
      editor2.putString("nomeProdutoCDB", str6);
      editor2.putString("prazoCDB", str7);
      editor2.putString("agendadoCDB", str8);
      editor2.commit();
      String str1 = new String(Base64.encodeBase64(miq.C().f().k().getBytes("UTF-8")));
      SharedPreferences.Editor editor1 = sharedPreferences1.edit();
      editor1.putBoolean("isCardCDB", true);
      editor1.putString("cpfCDB", str1);
      editor1.commit();
      return;
    } catch (Exception exception) {
      Log.e("ERROR", exception.getMessage());
      return;
    } 
  }
  
  private void b() {
    SharedPreferences.Editor editor1 = this.b.getSharedPreferences("CDBPreferences", 0).edit();
    SharedPreferences.Editor editor2 = this.b.getSharedPreferences("cardPreferences", 0).edit();
    editor1.putString("contaCDB", "");
    editor1.putString("agenciaCDB", "");
    editor1.putString("valorCDB", "");
    editor1.putString("codigoProdutoCDB", "");
    editor1.putString("nomeProdutoCDB", "");
    editor1.putString("prazoCDB", "");
    editor1.putString("agendadoCDB", "");
    editor2.putString("cpfCDB", "");
    editor2.putBoolean("isCardCDB", false);
    editor1.commit();
    editor2.commit();
  }
  
  public void a(RendaFixaAplicacaoConfirmacaoActivity paramRendaFixaAplicacaoConfirmacaoActivity) {
    this.b = paramRendaFixaAplicacaoConfirmacaoActivity;
  }
  
  public void a(ftq paramftq) {
    this.d = paramftq;
  }
  
  public void a(ftt paramftt) {
    this.e = paramftt;
  }
  
  public void a(fuu paramfuu) {
    this.f = paramfuu;
  }
  
  public void a(String paramString) {
    this.g = paramString;
  }
  
  public void onAttach(Activity paramActivity) {
    super.onAttach(paramActivity);
    this.c = (nau)paramActivity;
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle) {
    View view = paramLayoutInflater.inflate(2130969219, paramViewGroup, false);
    TextView textView1 = (TextView)view.findViewById(2131758464);
    TextView textView2 = (TextView)view.findViewById(2131758465);
    TextView textView3 = (TextView)view.findViewById(2131758454);
    TextView textView4 = (TextView)view.findViewById(2131758466);
    TextView textView5 = (TextView)view.findViewById(2131758467);
    TextView textView6 = (TextView)view.findViewById(2131758459);
    textView1.setText(this.d.b());
    textView2.setText(this.e.d() + " " + getResources().getString(2131297693));
    if (this.b.f()) {
      textView3.setText(getResources().getString(2131297691));
      textView4.setText(nak.l(this.b.i()));
    } else {
      textView3.setText(getResources().getString(2131297692));
      textView4.setText(nak.l(this.b.b().a()));
    } 
    textView5.setText(naj.f(this.e.g()));
    textView6.setText(naj.q(this.e.e()));
    LinearLayout linearLayout = (LinearLayout)view.findViewById(2131758468);
    if (this.e.i().size() == 0) {
      linearLayout.setVisibility(8);
      ((Button)view.findViewById(2131755118)).setOnClickListener(new iii(this));
      a();
      return view;
    } 
    linearLayout.setVisibility(0);
    int i = 0;
    while (true) {
      if (i < this.e.i().size()) {
        ftu ftu = this.e.i().get(i);
        View view1 = paramLayoutInflater.inflate(2130969438, null);
        ((TextView)view1.findViewById(2131758470)).setText(nak.l(ftu.d()) + " a " + nak.l(ftu.c()));
        ((TextView)view1.findViewById(2131758471)).setText(naj.r(ftu.a()));
        ((TextView)view1.findViewById(2131758472)).setText(ftu.b());
        linearLayout.addView(view1);
        i++;
        continue;
      } 
      ((Button)view.findViewById(2131755118)).setOnClickListener(new iii(this));
      a();
      return view;
    } 
  }
  
  public void onDestroy() {
    super.onDestroy();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\iih.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */