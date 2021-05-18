import android.content.Context;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.santander.app.seguros.ui.sinister.activities.SinisterActivity;
import java.util.Date;

public class lzp extends Fragment {
  private static final String a = "response-key";
  
  private SinisterActivity b;
  
  private kvb c;
  
  private Date d;
  
  private TextView e;
  
  private FrameLayout f;
  
  private TextView g;
  
  private TextView h;
  
  private Button i;
  
  public static lzp a(kvb paramkvb) {
    Bundle bundle = new Bundle();
    bundle.putString("response-key", (new ejm()).b(paramkvb));
    lzp lzp1 = new lzp();
    lzp1.setArguments(bundle);
    return lzp1;
  }
  
  private void a() {
    this.e.setText(getResources().getString(2131299295));
    this.g.setText(this.c.e());
    if (mhv.INSTANCE.containsRequest(kuq.DATE)) {
      kva kva = mhv.INSTANCE.getRequest(kuq.DATE);
      if (kva != null && kva.j() != null)
        this.d = kva.j(); 
    } else {
      this.d = new Date();
    } 
    this.h.setText(mhj.a(this.d, "dd/MM/yyyy"));
    this.f.setOnClickListener(new lzq(this));
  }
  
  private void a(View paramView) {
    this.e = (TextView)paramView.findViewById(2131757472);
    this.f = (FrameLayout)paramView.findViewById(2131756083);
    this.g = (TextView)paramView.findViewById(2131757471);
    this.h = (TextView)paramView.findViewById(2131756084);
    this.i = (Button)paramView.findViewById(2131755733);
    this.i.setOnClickListener(new lzs(this));
  }
  
  private void b() {
    frq.d("Seguros_Sinistro_Acionar_QuandoAconteceu_Acao", String.valueOf(mhj.a(this.d, "ddMMyyyy")));
    String str = String.valueOf(mhj.a(this.d, "yyyyMMdd"));
    kva kva = new kva();
    if (mhv.INSTANCE.getCoverageId() != -1L)
      kva.b(Long.valueOf(mhv.INSTANCE.getCoverageId())); 
    kva.a(kuq.DATE);
    kva.b(this.d);
    kva.a(kuz.NEXT);
    kva.a(str);
    kva.a(this.c.q());
    kva.b(this.d);
    this.b.a(kva);
  }
  
  public void onAttach(Context paramContext) {
    super.onAttach(paramContext);
    if (paramContext instanceof SinisterActivity)
      this.b = (SinisterActivity)paramContext; 
  }
  
  public void onCreate(@Nullable Bundle paramBundle) {
    super.onCreate(paramBundle);
    if (getArguments() != null && getArguments().containsKey("response-key"))
      this.c = (new ejm()).<kvb>a(getArguments().getString("response-key"), kvb.class); 
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, @Nullable ViewGroup paramViewGroup, @Nullable Bundle paramBundle) {
    View view = paramLayoutInflater.inflate(2130969066, paramViewGroup, false);
    a(view);
    a();
    return view;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\lzp.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */