import android.content.Context;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v4.app.Fragment;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import com.santander.app.seguros.ui.assistance.activities.MyAssistancesActivity;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class lbz extends Fragment implements las {
  private static final String a = "SCHEDULING_LIST_KEY";
  
  private LinearLayout b;
  
  private RecyclerView c;
  
  private MyAssistancesActivity d;
  
  private List<kph> e;
  
  public static lbz a(List<kph> paramList) {
    lbz lbz1 = new lbz();
    Bundle bundle = new Bundle();
    bundle.putString("SCHEDULING_LIST_KEY", (new ejm()).b(paramList));
    lbz1.setArguments(bundle);
    return lbz1;
  }
  
  private void a() {
    if (this.e.size() == 0) {
      this.b.setVisibility(0);
      return;
    } 
    this.c.setLayoutManager((RecyclerView.LayoutManager)new LinearLayoutManager((Context)getActivity()));
    laq laq = new laq(this.e);
    laq.a(this);
    this.c.setAdapter(laq);
  }
  
  private void a(View paramView) {
    this.b = (LinearLayout)paramView.findViewById(2131757512);
    this.c = (RecyclerView)paramView.findViewById(2131757511);
  }
  
  public void a(kph paramkph) {
    this.d.a(lbq.a(paramkph));
  }
  
  public void onAttach(Context paramContext) {
    super.onAttach(paramContext);
    this.d = (MyAssistancesActivity)paramContext;
  }
  
  public void onCreate(@Nullable Bundle paramBundle) {
    super.onCreate(paramBundle);
    if (getArguments() != null)
      this.e = new ArrayList<kph>(Arrays.asList((Object[])(new ejm()).a(getArguments().getString("SCHEDULING_LIST_KEY"), kph[].class))); 
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, @Nullable ViewGroup paramViewGroup, @Nullable Bundle paramBundle) {
    View view = paramLayoutInflater.inflate(2130969079, paramViewGroup, false);
    a(view);
    a();
    return view;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\lbz.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */