import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class ijx extends Fragment {
  private final String a = "FazerPagamentoConfirmacaoContas3Fragment";
  
  private myk b = new myk();
  
  private Intent c = null;
  
  private mip d = (mip)miq.C();
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle) {
    View view = paramLayoutInflater.inflate(2130969041, paramViewGroup, false);
    LinearLayout linearLayout1 = (LinearLayout)view.findViewById(2131755436);
    LinearLayout linearLayout2 = (LinearLayout)view.findViewById(2131755437);
    linearLayout1.setOnClickListener(new ijy(this, linearLayout1, linearLayout2));
    linearLayout2.setOnClickListener(new ijz(this));
    fvi fvi = hau.a().p();
    TextView textView2 = (TextView)view.findViewById(2131757281);
    if (fvi.b().equals("true")) {
      textView2.setText(2131297109);
    } else {
      textView2.setText(2131297110);
    } 
    TextView textView3 = (TextView)view.findViewById(2131757282);
    SimpleDateFormat simpleDateFormat1 = new SimpleDateFormat("dd/MM/yyyy");
    SimpleDateFormat simpleDateFormat2 = new SimpleDateFormat("yyyyMMdd");
    if (hau.a().z()) {
      str1 = fvi.g();
    } else {
      str1 = fvi.e();
    } 
    try {
      String str = simpleDateFormat1.format(simpleDateFormat2.parse(str1));
      str1 = str;
    } catch (ParseException parseException) {
      Log.e("Error", parseException.toString());
    } 
    textView3.setText(str1);
    ((TextView)view.findViewById(2131757271)).setText(fvi.f());
    ((TextView)view.findViewById(2131757279)).setText(naj.s(naj.t(fvi.q())));
    textView3 = (TextView)view.findViewById(2131757272);
    String str3 = fvi.c();
    String str2 = fvi.c().substring(0, fvi.c().length() / 2) + " " + fvi.c().substring(fvi.c().length() / 2);
    String str1 = str2;
    if (str3 != null) {
      str1 = str2;
      if (str3.length() > 37) {
        str1 = "" + str3.substring(0, 12) + " " + str3.substring(12, 24);
        str1 = str1 + " " + str3.substring(24, 36) + " " + str3.substring(36);
      } 
    } 
    textView3.setText(str1);
    ((TextView)view.findViewById(2131757262)).setText((new SimpleDateFormat("dd/MM/yyyy HH:mm:ss")).format(new Date()));
    ((TextView)view.findViewById(2131757283)).setText(fvi.l());
    TextView textView1 = (TextView)view.findViewById(2131757280);
    if (fvi.h().equals("C1")) {
      textView1.setText(getResources().getString(2131296974));
      ((LinearLayout)view.findViewById(2131757270)).setVisibility(0);
    } else {
      textView1.setText(getResources().getString(2131296975));
      ((LinearLayout)view.findViewById(2131757270)).setVisibility(8);
    } 
    textView1 = (TextView)view.findViewById(2131757260);
    if (textView1 != null && textView1.getText() != null && textView1.getText().toString().length() > 0 && hau.a().z())
      textView1.setText(textView1.getText().toString().replace("realizad", "agendad")); 
    return view;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ijx.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */