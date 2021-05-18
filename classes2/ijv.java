import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.santander.app.FazerPagamentoConfirmacaoActivity;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class ijv extends Fragment {
  private final String a = "FazerPagamentoConfirmacaoContas3BFragment";
  
  private myk b = new myk();
  
  private Intent c = null;
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle) {
    View view = paramLayoutInflater.inflate(2130969042, paramViewGroup, false);
    view.findViewById(2131755437).setOnClickListener(new ijw(this));
    fvi fvi = hau.a().p();
    TextView textView2 = (TextView)view.findViewById(2131757273);
    if (fvi.b().equals("true")) {
      textView2.setText(2131297109);
    } else {
      textView2.setText(2131297110);
    } 
    TextView textView3 = (TextView)view.findViewById(2131757282);
    SimpleDateFormat simpleDateFormat1 = new SimpleDateFormat("dd/MM/yyyy");
    SimpleDateFormat simpleDateFormat2 = new SimpleDateFormat("yyyyMMdd");
    String str1 = fvi.e();
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
    str1 = str2;
    if (str3 != null) {
      str1 = str2;
      if (str3.length() > 37) {
        str1 = "" + str3.substring(0, 12) + " " + str3.substring(12, 24);
        str1 = str1 + " " + str3.substring(24, 36) + " " + str3.substring(36);
      } 
    } 
    textView3.setText(str1);
    ((TextView)view.findViewById(2131757262)).setText((new SimpleDateFormat("dd/MM/yyyy HH:mm:ss")).format(new Date()));
    TextView textView1 = (TextView)view.findViewById(2131757264);
    if (((FazerPagamentoConfirmacaoActivity)getActivity()).b.length() > 0) {
      textView1.setVisibility(0);
      textView1.setText(((FazerPagamentoConfirmacaoActivity)getActivity()).b);
      mxn.c((Activity)getActivity(), ((FazerPagamentoConfirmacaoActivity)getActivity()).b);
    } 
    return view;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ijv.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */