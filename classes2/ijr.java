import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import java.text.SimpleDateFormat;
import java.util.Date;

public class ijr extends Fragment {
  private final String a = "FazerPagamentoConfirmacaoCartorio2Fragment";
  
  private myk b = new myk();
  
  private Intent c = null;
  
  private mip d = (mip)miq.C();
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle) {
    View view = paramLayoutInflater.inflate(2130969038, paramViewGroup, false);
    view.findViewById(2131755436).setOnClickListener(new ijs(this));
    view.findViewById(2131755437).setOnClickListener(new ijt(this));
    fvh fvh = hau.a().r();
    ((TextView)view.findViewById(2131757261)).setText(fvh.w());
    ((TextView)view.findViewById(2131757262)).setText((new SimpleDateFormat("dd/MM/yyyy HH:mm:ss")).format(new Date()));
    TextView textView = (TextView)view.findViewById(2131756348);
    if (textView != null && textView.getText() != null && textView.getText().toString().length() > 0 && hau.a().z())
      textView.setText(textView.getText().toString().replace("realizad", "agendad")); 
    ((TextView)view.findViewById(2131757243)).setText(naj.f(fvh.u()));
    ((TextView)view.findViewById(2131757244)).setText(naj.f(fvh.a()));
    ((TextView)view.findViewById(2131757245)).setText(naj.f(fvh.m()));
    ((TextView)view.findViewById(2131757246)).setText(nai.c(fvh.z()));
    ((TextView)view.findViewById(2131757247)).setText(fvh.v());
    ((TextView)view.findViewById(2131757248)).setText(fvh.k());
    ((TextView)view.findViewById(2131757249)).setText(fvh.b());
    ((TextView)view.findViewById(2131757250)).setText(fvh.f());
    ((TextView)view.findViewById(2131757251)).setText(fvh.j());
    ((TextView)view.findViewById(2131757252)).setText(nak.l(fvh.d()));
    ((TextView)view.findViewById(2131757253)).setText(nak.l(fvh.c()));
    ((TextView)view.findViewById(2131757254)).setText(fvh.l());
    ((TextView)view.findViewById(2131757255)).setText(fvh.g());
    ((TextView)view.findViewById(2131757256)).setText(fvh.y());
    ((TextView)view.findViewById(2131757257)).setText(fvh.i());
    ((TextView)view.findViewById(2131757258)).setText(fvh.h());
    ((TextView)view.findViewById(2131757263)).setText(fvh.x());
    return view;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ijr.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */