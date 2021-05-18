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

public class ikb extends Fragment {
  private final String a = "FazerPagamentoConfirmacaoTitulos3BFragment";
  
  private myk b = new myk();
  
  private Intent c = null;
  
  private TextView d;
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle) {
    View view = paramLayoutInflater.inflate(2130969045, paramViewGroup, false);
    view.findViewById(2131755437).setOnClickListener(new ikc(this));
    fvk fvk = hau.a().q();
    TextView textView3 = (TextView)view.findViewById(2131757282);
    SimpleDateFormat simpleDateFormat1 = new SimpleDateFormat("dd/MM/yyyy");
    SimpleDateFormat simpleDateFormat2 = new SimpleDateFormat("yyyyMMdd");
    if (fvk.e().equals("true")) {
      str1 = fvk.s();
    } else {
      str1 = fvk.n();
    } 
    try {
      String str = simpleDateFormat1.format(simpleDateFormat2.parse(str1));
      str1 = str;
    } catch (ParseException parseException) {
      Log.e("Error", parseException.toString());
    } 
    textView3.setText(str1);
    textView3 = (TextView)view.findViewById(2131757277);
    String str1 = fvk.p();
    try {
      String str = simpleDateFormat1.format(simpleDateFormat2.parse(str1));
      str1 = str;
    } catch (ParseException parseException) {
      Log.e("Error", parseException.getMessage());
    } 
    textView3.setText(str1);
    ((TextView)view.findViewById(2131757106)).setText(naj.f(fvk.S()));
    TextView textView2 = (TextView)view.findViewById(2131757272);
    String str3 = fvk.g();
    String str2 = fvk.g().substring(0, fvk.g().length() / 2) + " " + fvk.g().substring(fvk.g().length() / 2);
    str1 = str2;
    if (str3 != null) {
      str1 = str2;
      if (str3.length() > 35) {
        str1 = "" + str3.substring(0, 5) + "." + str3.substring(5, 10);
        str1 = str1 + " " + str3.substring(10, 15) + "." + str3.substring(15, 21);
        str1 = str1 + " " + str3.substring(21, 26) + "." + str3.substring(26, 32);
        str1 = str1 + " " + str3.substring(32, 33) + " " + str3.substring(33);
      } 
    } 
    textView2.setText(str1);
    ((TextView)view.findViewById(2131757279)).setText(fvk.A());
    ((TextView)view.findViewById(2131755374)).setText(fvk.B());
    ((TextView)view.findViewById(2131757107)).setText((new SimpleDateFormat("dd/MM/yyyy HH:mm:ss")).format(new Date()));
    TextView textView1 = (TextView)view.findViewById(2131757264);
    if (((FazerPagamentoConfirmacaoActivity)getActivity()).b.length() > 0) {
      textView1.setVisibility(0);
      textView1.setText(((FazerPagamentoConfirmacaoActivity)getActivity()).b);
      mxn.c((Activity)getActivity(), ((FazerPagamentoConfirmacaoActivity)getActivity()).b);
    } 
    return view;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ikb.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */