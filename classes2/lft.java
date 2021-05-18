import android.app.Dialog;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v4.app.DialogFragment;
import android.support.v7.widget.AppCompatRadioButton;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import java.util.Date;

public class lft extends DialogFragment {
  public static final String a = "family-key";
  
  kst b = new kst();
  
  private AppCompatRadioButton c;
  
  private AppCompatRadioButton d;
  
  private AppCompatRadioButton e;
  
  private Button f;
  
  private Button g;
  
  private lge h;
  
  private FrameLayout i;
  
  private FrameLayout j;
  
  private FrameLayout k;
  
  private TextView l;
  
  private TextView m;
  
  private TextView n;
  
  private ImageView o;
  
  private String p;
  
  private int q;
  
  private lgd r;
  
  public static lft a(lgd paramlgd) {
    Bundle bundle = new Bundle();
    bundle.putString("family-key", mys.a().b(paramlgd));
    lft lft1 = new lft();
    lft1.setArguments(bundle);
    return lft1;
  }
  
  private void a() {
    new ksl("0000000001", "69", mhj.a(new Date(), "yyyy-MM-dd"));
  }
  
  private void a(View paramView) {
    this.o = (ImageView)paramView.findViewById(2131755158);
    this.c = (AppCompatRadioButton)paramView.findViewById(2131756899);
    this.d = (AppCompatRadioButton)paramView.findViewById(2131756902);
    this.e = (AppCompatRadioButton)paramView.findViewById(2131756905);
    this.g = (Button)paramView.findViewById(2131756907);
    this.f = (Button)paramView.findViewById(2131756908);
    this.i = (FrameLayout)paramView.findViewById(2131756898);
    this.j = (FrameLayout)paramView.findViewById(2131756901);
    this.k = (FrameLayout)paramView.findViewById(2131756904);
    this.l = (TextView)paramView.findViewById(2131756900);
    this.m = (TextView)paramView.findViewById(2131756903);
    this.n = (TextView)paramView.findViewById(2131756906);
    b();
    this.g.setOnClickListener(new lfu(this));
    this.f.setOnClickListener(new lfv(this));
  }
  
  private void b() {
    this.c.setOnCheckedChangeListener(new lfw(this));
    this.d.setOnCheckedChangeListener(new lfx(this));
    this.e.setOnCheckedChangeListener(new lfy(this));
    this.i.setOnClickListener(new lfz(this));
    this.j.setOnClickListener(new lga(this));
    this.k.setOnClickListener(new lgb(this));
  }
  
  public void a(lge paramlge) {
    this.h = paramlge;
  }
  
  public void onCreate(@Nullable Bundle paramBundle) {
    super.onCreate(paramBundle);
    this.r = mys.a().<lgd>a(getArguments().getString("family-key"), lgd.class);
    switch (lgc.a[this.r.ordinal()]) {
      default:
        return;
      case 1:
        this.p = "Seguros_Cancelamento_Residencia_CorrerRisco_PopUp_Acao";
        this.q = 2130838615;
        return;
      case 2:
        this.p = "Seguros_Cancelamento_Vida_AP_CorrerRisco_PopUp_Acao";
        this.q = 2130838480;
        return;
      case 3:
        break;
    } 
    this.p = "Seguros_Cancelamento_Vida_AP_CorrerRisco_PopUp_Acao";
    this.q = 2130838320;
  }
  
  public Dialog onCreateDialog(Bundle paramBundle) {
    Dialog dialog = super.onCreateDialog(paramBundle);
    dialog.getWindow().requestFeature(1);
    dialog.setCancelable(false);
    dialog.setCanceledOnTouchOutside(false);
    return dialog;
  }
  
  @Nullable
  public View onCreateView(LayoutInflater paramLayoutInflater, @Nullable ViewGroup paramViewGroup, Bundle paramBundle) {
    View view = paramLayoutInflater.inflate(2130968961, paramViewGroup, false);
    a(view);
    if (this.q > 0)
      this.o.setImageResource(this.q); 
    return view;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\lft.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */