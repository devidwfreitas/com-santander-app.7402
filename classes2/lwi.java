import android.content.Context;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v4.app.Fragment;
import android.support.v7.app.AppCompatActivity;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import br.com.zup.multistatelayout.MultiStateLayout;
import com.santander.app.seguros.ui.sinister.activities.MySinisterActivity;
import java.util.Arrays;
import java.util.List;

public class lwi extends Fragment {
  private static final String a = "sinister-key";
  
  private RecyclerView b;
  
  private MySinisterActivity c;
  
  private List<kvp> d;
  
  private MultiStateLayout e;
  
  public static lwi a(List<kvp> paramList) {
    Bundle bundle = new Bundle();
    bundle.putString("sinister-key", (new ejm()).b(paramList));
    lwi lwi1 = new lwi();
    lwi1.setArguments(bundle);
    return lwi1;
  }
  
  private void a(View paramView) {
    this.b = (RecyclerView)paramView.findViewById(2131757480);
    this.e = (MultiStateLayout)paramView.findViewById(2131755279);
  }
  
  public void onAttach(Context paramContext) {
    super.onAttach(paramContext);
    if (paramContext instanceof MySinisterActivity)
      this.c = (MySinisterActivity)paramContext; 
  }
  
  public void onCreate(@Nullable Bundle paramBundle) {
    super.onCreate(paramBundle);
    if (getArguments() != null && getArguments().containsKey("sinister-key") && getArguments().getString("sinister-key") != null)
      try {
        this.d = Arrays.asList((Object[])(new ejm()).a(getArguments().getString("sinister-key"), kvp[].class));
        return;
      } catch (Exception exception) {
        exception.printStackTrace();
        this.d = null;
        return;
      }  
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, @Nullable ViewGroup paramViewGroup, @Nullable Bundle paramBundle) {
    View view = paramLayoutInflater.inflate(2130969081, paramViewGroup, false);
    a(view);
    if (this.d == null || this.d.size() <= 0) {
      this.e.setState(aor.EMPTY);
      return view;
    } 
    this.e.setState(aor.CONTENT);
    LinearLayoutManager linearLayoutManager = new LinearLayoutManager((Context)this.c, 1, false);
    ltz ltz = new ltz(this.d, (AppCompatActivity)this.c);
    this.b.setLayoutManager((RecyclerView.LayoutManager)linearLayoutManager);
    this.b.setAdapter(ltz);
    this.b.addItemDecoration(new mgw((Context)this.c, mgx.GREY));
    ltz.a(new lwj(this));
    return view;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\lwi.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */