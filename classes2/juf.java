import android.app.Dialog;
import android.app.DialogFragment;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import java.util.ArrayList;

public class juf extends DialogFragment implements View.OnClickListener {
  private TextView a;
  
  private EditText b;
  
  private Button c;
  
  private Button d;
  
  private jsr e;
  
  private jug f;
  
  public juf(jug paramjug) {
    this.f = paramjug;
  }
  
  private String a(ArrayList<gku> paramArrayList, String paramString) {
    for (gku gku : paramArrayList) {
      if (gku.b().equals(paramString))
        return gku.c(); 
    } 
    return "";
  }
  
  private void a(View paramView) {
    this.a = (TextView)paramView.findViewById(2131756858);
    this.b = (EditText)paramView.findViewById(2131756860);
    this.c = (Button)paramView.findViewById(2131756861);
    this.d = (Button)paramView.findViewById(2131756862);
    ArrayList<gku> arrayList = this.e.m();
    this.a.setText(a(arrayList, "Beneficiário") + "\nValor atual " + a(arrayList, "Valor a receber "));
    guj guj = new guj();
    guj.a(this.b);
    this.b.addTextChangedListener(guj);
    this.c.setOnClickListener(this);
    this.d.setOnClickListener(this);
  }
  
  public void a(jsr paramjsr) {
    this.e = paramjsr;
  }
  
  public void onClick(View paramView) {
    if (paramView.getId() == 2131756861) {
      dismiss();
      return;
    } 
    if (paramView.getId() == 2131756862) {
      this.f.a(this.b.getText().toString());
      dismiss();
      return;
    } 
  }
  
  @NonNull
  public Dialog onCreateDialog(Bundle paramBundle) {
    Dialog dialog = super.onCreateDialog(paramBundle);
    dialog.getWindow().requestFeature(1);
    dialog.setCancelable(false);
    dialog.setCanceledOnTouchOutside(false);
    return dialog;
  }
  
  @Nullable
  public View onCreateView(LayoutInflater paramLayoutInflater, @Nullable ViewGroup paramViewGroup, @Nullable Bundle paramBundle) {
    View view = paramLayoutInflater.inflate(2130968948, paramViewGroup, false);
    a(view);
    return view;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\juf.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */