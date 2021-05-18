import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.santander.app.RendaFixaResgateConfirmacaoActivity;
import java.text.SimpleDateFormat;
import java.util.Date;

public class iix extends Fragment {
  private final String a = "ConfirmarInvestimentoResgatePasoTresFragment";
  
  private myk b = new myk();
  
  private Intent c = null;
  
  private RendaFixaResgateConfirmacaoActivity d;
  
  public String a() {
    return this.d.a(2131756356);
  }
  
  public void a(RendaFixaResgateConfirmacaoActivity paramRendaFixaResgateConfirmacaoActivity) {
    this.d = paramRendaFixaResgateConfirmacaoActivity;
  }
  
  public void onAttach(Activity paramActivity) {
    super.onAttach(paramActivity);
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle) {
    View view;
    ftv ftv = this.d.c();
    ftw ftw = this.d.a();
    if (ftv.a().equals("0")) {
      view = paramLayoutInflater.inflate(2130969246, paramViewGroup, false);
      LinearLayout linearLayout1 = (LinearLayout)view.findViewById(2131755436);
      LinearLayout linearLayout2 = (LinearLayout)view.findViewById(2131755437);
      linearLayout1.setOnClickListener(new iiy(this, linearLayout1, linearLayout2));
      linearLayout2.setOnClickListener(new iiz(this));
      textView = (TextView)view.findViewById(2131758449);
      TextView textView1 = (TextView)view.findViewById(2131758580);
      TextView textView2 = (TextView)view.findViewById(2131758581);
      TextView textView3 = (TextView)view.findViewById(2131758582);
      TextView textView4 = (TextView)view.findViewById(2131758583);
      TextView textView5 = (TextView)view.findViewById(2131758584);
      TextView textView6 = (TextView)view.findViewById(2131758563);
      TextView textView7 = (TextView)view.findViewById(2131757297);
      TextView textView8 = (TextView)view.findViewById(2131757298);
      textView.setText(getResources().getString(2131297773) + " " + ftw.m());
      textView1.setText(ftw.m().trim());
      textView2.setText(naj.f(ftv.l()));
      textView3.setText(naj.q(ftv.f()));
      textView4.setText(ftv.c());
      if (ftw.k()) {
        textView5.setText(naj.f(ftw.h()));
      } else {
        textView5.setText(naj.f(ftw.l()));
      } 
      textView6.setText(nak.l(ftv.b()));
      textView7.setText((new SimpleDateFormat("dd/MM/yyyy HH:mm:ss")).format(new Date()));
      textView8.setText(ftv.o());
    } else {
      String str;
      View view1 = view.inflate(2130969247, (ViewGroup)textView, false);
      ((LinearLayout)view1.findViewById(2131755436)).setOnClickListener(new ija(this));
      ((LinearLayout)view1.findViewById(2131755437)).setOnClickListener(new ijb(this));
      TextView textView3 = (TextView)view1.findViewById(2131758586);
      TextView textView4 = (TextView)view1.findViewById(2131758588);
      TextView textView2 = (TextView)view1.findViewById(2131757295);
      TextView textView1 = (TextView)view1.findViewById(2131758566);
      if (ftw.k()) {
        str = getResources().getString(2131297778);
      } else {
        str = getResources().getString(2131297779);
      } 
      textView3.setText(str);
      textView4.setText(naj.q(ftw.g()));
      if (ftw.k()) {
        str = naj.f(ftw.h());
      } else {
        str = naj.f(ftw.l());
      } 
      textView2.setText(str);
      if (ftv.n() != null) {
        str = ftv.n();
      } else {
        str = "";
      } 
      textView1.setText(str);
      view = view1;
    } 
    TextView textView = (TextView)view.findViewById(2131756348);
    if (textView != null && textView.getText() != null && textView.getText().toString().length() > 0 && hau.a().z())
      textView.setText(textView.getText().toString().replace("realizad", "agendad")); 
    return view;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\iix.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */