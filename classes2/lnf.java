import android.content.Context;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v4.app.DialogFragment;
import android.support.v4.widget.NestedScrollView;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import com.santander.app.seguros.ui.contract.activities.ContractActivity;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class lnf extends DialogFragment {
  public static final String a = "checking-account";
  
  private NestedScrollView b;
  
  private Button c;
  
  private List<kqi> d = new ArrayList<kqi>();
  
  private RecyclerView e;
  
  private ContractActivity f;
  
  private lni g;
  
  public static lnf a(List<kqi> paramList) {
    Bundle bundle = new Bundle();
    bundle.putString("checking-account", (new ejm()).b(paramList));
    lnf lnf1 = new lnf();
    lnf1.setArguments(bundle);
    return lnf1;
  }
  
  private void a() {
    this.b.smoothScrollTo(0, 0);
    this.e.setNestedScrollingEnabled(false);
    this.e.setLayoutManager((RecyclerView.LayoutManager)new LinearLayoutManager((Context)this.f, 1, false));
    lke lke = new lke(this.d);
    lke.a(new lng(this));
    this.e.setAdapter(lke);
    this.e.addItemDecoration(new mgw((Context)this.f, mgx.GRAY_REP));
  }
  
  private void a(View paramView) {
    this.b = (NestedScrollView)paramView.findViewById(2131756113);
    this.c = (Button)paramView.findViewById(2131756846);
    this.e = (RecyclerView)paramView.findViewById(2131757549);
    this.c.setOnClickListener(new lnh(this));
  }
  
  public void a(lni paramlni) {
    this.g = paramlni;
  }
  
  public void onAttach(Context paramContext) {
    super.onAttach(paramContext);
    if (paramContext instanceof ContractActivity)
      this.f = (ContractActivity)paramContext; 
  }
  
  public void onCreate(@Nullable Bundle paramBundle) {
    super.onCreate(paramBundle);
    this.d = new ArrayList<kqi>();
    if (getArguments() != null && getArguments().containsKey("checking-account"))
      this.d = new ArrayList<kqi>(Arrays.asList((Object[])(new ejm()).a(getArguments().getString("checking-account"), kqi[].class))); 
  }
  
  @Nullable
  public View onCreateView(LayoutInflater paramLayoutInflater, @Nullable ViewGroup paramViewGroup, @Nullable Bundle paramBundle) {
    View view = paramLayoutInflater.inflate(2130969086, paramViewGroup, false);
    a(view);
    a();
    return view;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\lnf.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */