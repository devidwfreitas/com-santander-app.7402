import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.santander.app.FazerPagamentoConfirmacaoActivity;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class ijp extends Fragment {
  private final String a = "FazerPagamentoConfirmacaoCartorio2BFragment";
  
  private myk b = new myk();
  
  private Intent c = null;
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle) {
    View view = paramLayoutInflater.inflate(2130969039, paramViewGroup, false);
    ((LinearLayout)view.findViewById(2131755437)).setOnClickListener(new ijq(this));
    fvh fvh = hau.a().r();
    TextView textView2 = (TextView)view.findViewById(2131757269);
    SimpleDateFormat simpleDateFormat1 = new SimpleDateFormat("dd/MM/yyyy");
    SimpleDateFormat simpleDateFormat2 = new SimpleDateFormat("yyyyMMdd");
    String str = fvh.r();
    try {
      String str1 = simpleDateFormat1.format(simpleDateFormat2.parse(str));
      str = str1;
    } catch (ParseException parseException) {
      Log.e("Error", parseException.toString());
    } 
    textView2.setText(str);
    ((TextView)view.findViewById(2131757267)).setText(naj.f(fvh.u()));
    ((TextView)view.findViewById(2131757261)).setText(fvh.w());
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


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ijp.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */