import android.app.Dialog;
import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v4.app.DialogFragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.TextView;

public class lxv extends DialogFragment {
  private static String a = "sinister-assistance";
  
  private kvq b;
  
  private TextView c;
  
  private TextView d;
  
  private Button e;
  
  public static lxv a(kvq paramkvq) {
    Bundle bundle = new Bundle();
    bundle.putString(a, (new ejm()).b(paramkvq));
    lxv lxv1 = new lxv();
    lxv1.setArguments(bundle);
    return lxv1;
  }
  
  private void a() {
    this.d.setText(this.b.c());
    this.c.setText((CharSequence)mhj.a((Context)getActivity(), "fonts/opensans_semibold.ttf", Integer.valueOf(getResources().getColor(2131624035)), this.b.d(), new String[] { "COZINHA", "LAVANDERIA", "Eliminação de Vazamentos em:" }));
  }
  
  private void a(View paramView) {
    this.c = (TextView)paramView.findViewById(2131756864);
    this.d = (TextView)paramView.findViewById(2131756863);
    this.e = (Button)paramView.findViewById(2131756865);
    this.e.setOnClickListener(new lxw(this));
  }
  
  public void onCreate(@Nullable Bundle paramBundle) {
    super.onCreate(paramBundle);
    if (getArguments() != null && getArguments().containsKey(a))
      this.b = (new ejm()).<kvq>a(getArguments().getString(a), kvq.class); 
    frq.d("Seguros_Sinistro_Acionar_PopUpAssistencia24h_Informativo_Acao", this.b.c());
  }
  
  @NonNull
  public Dialog onCreateDialog(Bundle paramBundle) {
    Dialog dialog = super.onCreateDialog(paramBundle);
    dialog.getWindow().requestFeature(1);
    dialog.getWindow().setBackgroundDrawable((Drawable)new ColorDrawable(0));
    dialog.setCancelable(false);
    dialog.setCanceledOnTouchOutside(false);
    return dialog;
  }
  
  @Nullable
  public View onCreateView(LayoutInflater paramLayoutInflater, @Nullable ViewGroup paramViewGroup, @Nullable Bundle paramBundle) {
    View view = paramLayoutInflater.inflate(2130968950, paramViewGroup, false);
    a(view);
    a();
    return view;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\lxv.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */