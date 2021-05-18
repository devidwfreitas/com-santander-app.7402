import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;

public class ika extends Fragment {
  private final String a = "FazerPagamentoConfirmacaoTitulos1Fragment";
  
  private TextView b;
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle) {
    View view = paramLayoutInflater.inflate(2130969043, paramViewGroup, false);
    fvk fvk = hau.a().q();
    TextView textView2 = (TextView)view.findViewById(2131757282);
    this.b = (TextView)view.findViewById(2131757284);
    this.b.setText(naj.f(fvk.a()));
    textView2.setText(nak.r(fvk.p()));
    ((TextView)view.findViewById(2131757106)).setText(naj.f(fvk.S()));
    TextView textView4 = (TextView)view.findViewById(2131757272);
    String str3 = fvk.g();
    String str2 = fvk.g().substring(0, fvk.g().length() / 2) + " " + fvk.g().substring(fvk.g().length() / 2);
    String str1 = str2;
    if (str3 != null) {
      str1 = str2;
      if (str3.length() > 35) {
        str1 = "" + str3.substring(0, 5) + "." + str3.substring(5, 10);
        str1 = str1 + " " + str3.substring(10, 15) + "." + str3.substring(15, 21);
        str1 = str1 + " " + str3.substring(21, 26) + "." + str3.substring(26, 32);
        str1 = str1 + " " + str3.substring(32, 33) + " " + str3.substring(33);
      } 
    } 
    textView4.setText(str1);
    ((TextView)view.findViewById(2131757286)).setText(fvk.B());
    ((TextView)view.findViewById(2131757285)).setText(fvk.A());
    TextView textView1 = (TextView)view.findViewById(2131757289);
    if (fvk.X()) {
      textView1.setText(getResources().getString(2131296974));
      ((LinearLayout)view.findViewById(2131757270)).setVisibility(0);
    } else {
      textView1.setText(getResources().getString(2131296975));
      ((LinearLayout)view.findViewById(2131757270)).setVisibility(8);
    } 
    textView1 = (TextView)view.findViewById(2131757290);
    TextView textView3 = (TextView)view.findViewById(2131757273);
    if (fvk.e().equals("true")) {
      textView3.setText(2131297109);
      textView1.setText(nak.r(fvk.s()));
      return view;
    } 
    textView3.setText(2131297110);
    textView1.setText(nak.r(fvk.n()));
    return view;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ika.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */