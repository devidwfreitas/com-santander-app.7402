import android.app.ActivityManager;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

public class ikd extends Fragment {
  private final String a = "FazerPagamentoConfirmacaoTitulos3Fragment";
  
  private myk b = new myk();
  
  private Intent c = null;
  
  private fvk d;
  
  private TextView e;
  
  private mip f = (mip)miq.C();
  
  private boolean a(Context paramContext) {
    boolean bool = false;
    List list = ((ActivityManager)paramContext.getSystemService("activity")).getRunningAppProcesses();
    for (int i = 0;; i++) {
      boolean bool1 = bool;
      if (i < list.size()) {
        if (((ActivityManager.RunningAppProcessInfo)list.get(i)).processName.equals("com.santander.app")) {
          onDestroy();
          return true;
        } 
      } else {
        return bool1;
      } 
    } 
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle) {
    View view = paramLayoutInflater.inflate(2130969044, paramViewGroup, false);
    LinearLayout linearLayout1 = (LinearLayout)view.findViewById(2131755436);
    LinearLayout linearLayout3 = (LinearLayout)view.findViewById(2131755437);
    linearLayout1.setOnClickListener(new ike(this, linearLayout1, linearLayout3));
    linearLayout3.setOnClickListener(new ikf(this));
    if (paramBundle != null) {
      this.d = (fvk)paramBundle.getSerializable("PAGAMENTO");
    } else {
      this.d = hau.a().q();
    } 
    TextView textView2 = (TextView)view.findViewById(2131757272);
    String str3 = this.d.g();
    String str2 = this.d.g().substring(0, this.d.g().length() / 2) + " " + this.d.g().substring(this.d.g().length() / 2);
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
    textView2.setText(str1);
    this.e = (TextView)view.findViewById(2131757284);
    this.e.setText(naj.f(this.d.a()));
    ((TextView)view.findViewById(2131757291)).setText(this.d.A());
    ((TextView)view.findViewById(2131757292)).setText(this.d.B());
    ((TextView)view.findViewById(2131757293)).setText(nak.l(nak.q(this.d.p())));
    ((TextView)view.findViewById(2131757294)).setText(nak.l(nak.q(this.d.o())));
    TextView textView1 = (TextView)view.findViewById(2131757290);
    LinearLayout linearLayout2 = (LinearLayout)view.findViewById(2131757296);
    if (this.d.e().equals("true")) {
      textView1.setText(nak.l(nak.q(this.d.s())));
    } else {
      linearLayout2.setVisibility(8);
    } 
    ((TextView)view.findViewById(2131757295)).setText(naj.f(this.d.S()));
    textView1 = (TextView)view.findViewById(2131757280);
    if (this.d.X()) {
      textView1.setText(getResources().getString(2131296974));
      ((LinearLayout)view.findViewById(2131757270)).setVisibility(0);
    } else {
      textView1.setText(getResources().getString(2131296975));
      ((LinearLayout)view.findViewById(2131757270)).setVisibility(8);
    } 
    ((TextView)view.findViewById(2131757297)).setText((new SimpleDateFormat("dd/MM/yyyy HH:mm:ss")).format(new Date()));
    ((TextView)view.findViewById(2131757298)).setText(this.d.E());
    textView1 = (TextView)view.findViewById(2131757260);
    if (textView1 != null && textView1.getText() != null && textView1.getText().toString().length() > 0 && hau.a().z())
      textView1.setText(textView1.getText().toString().replace("realizad", "agendad")); 
    return view;
  }
  
  public void onSaveInstanceState(Bundle paramBundle) {
    paramBundle.putSerializable("PAGAMENTO", this.d);
    super.onSaveInstanceState(paramBundle);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ikd.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */