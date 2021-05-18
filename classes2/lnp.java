import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v4.app.DialogFragment;
import android.support.v4.app.FragmentActivity;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class lnp extends DialogFragment {
  private static String a = "contract-coverage-list";
  
  private FragmentActivity b;
  
  private List<krn> c;
  
  private RecyclerView d;
  
  private lme e;
  
  private Button f;
  
  private lns g;
  
  public static lnp a(List<krn> paramList) {
    Bundle bundle = new Bundle();
    bundle.putString(a, (new ejm()).b(paramList));
    lnp lnp1 = new lnp();
    lnp1.setArguments(bundle);
    return lnp1;
  }
  
  private void a() {
    b(this.c);
  }
  
  private void a(View paramView) {
    this.d = (RecyclerView)paramView.findViewById(2131756919);
    this.f = (Button)paramView.findViewById(2131756921);
  }
  
  private void b(List<krn> paramList) {
    this.e = new lme(paramList);
    LinearLayoutManager linearLayoutManager = new LinearLayoutManager((Context)getActivity(), 1, false);
    this.d.setLayoutManager((RecyclerView.LayoutManager)linearLayoutManager);
    this.d.setAdapter(this.e);
    this.e.a(new lnr(this, paramList));
  }
  
  public void a(lns paramlns) {
    this.g = paramlns;
  }
  
  public void onAttach(Context paramContext) {
    super.onAttach(paramContext);
    this.b = getActivity();
  }
  
  public void onCreate(@Nullable Bundle paramBundle) {
    super.onCreate(paramBundle);
    if (getArguments() != null && getArguments().containsKey(a))
      this.c = new ArrayList<krn>(Arrays.asList((Object[])(new ejm()).a(getArguments().getString(a), krn[].class))); 
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
    View view = paramLayoutInflater.inflate(2130968965, paramViewGroup, false);
    a(view);
    a();
    this.f.setOnClickListener(new lnq(this));
    return view;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\lnp.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */