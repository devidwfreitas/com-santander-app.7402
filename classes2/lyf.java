import android.app.Dialog;
import android.app.DialogFragment;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.TextView;

public class lyf extends DialogFragment {
  private TextView a;
  
  private Button b;
  
  public static lyf a() {
    Bundle bundle = new Bundle();
    lyf lyf1 = new lyf();
    lyf1.setArguments(bundle);
    return lyf1;
  }
  
  private void a(View paramView) {
    this.a = (TextView)paramView.findViewById(2131756932);
    this.b = (Button)paramView.findViewById(2131756937);
    this.b.setOnClickListener(new lyg(this));
  }
  
  private void b() {
    this.a.setText(getResources().getString(2131297136));
  }
  
  public void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    frq.d("Seguros_Sinistro_Acionar_Documentacao_Acao", "PopUp");
  }
  
  public Dialog onCreateDialog(Bundle paramBundle) {
    Dialog dialog = super.onCreateDialog(paramBundle);
    dialog.getWindow().requestFeature(1);
    dialog.getWindow().setBackgroundDrawable((Drawable)new ColorDrawable(0));
    return dialog;
  }
  
  @Nullable
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle) {
    View view = paramLayoutInflater.inflate(2130968970, paramViewGroup, false);
    a(view);
    b();
    return view;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\lyf.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */