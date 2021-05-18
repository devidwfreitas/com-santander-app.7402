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

public class lwg extends Fragment {
  private static final String a = "sinister-key";
  
  private RecyclerView b;
  
  private MultiStateLayout c;
  
  private MySinisterActivity d;
  
  private List<kvp> e;
  
  public static lwg a(List<kvp> paramList) {
    Bundle bundle = new Bundle();
    bundle.putString("sinister-key", (new ejm()).b(paramList));
    lwg lwg1 = new lwg();
    lwg1.setArguments(bundle);
    return lwg1;
  }
  
  private void a(View paramView) {
    this.b = (RecyclerView)paramView.findViewById(2131757480);
    this.c = (MultiStateLayout)paramView.findViewById(2131755279);
  }
  
  public void onAttach(Context paramContext) {
    super.onAttach(paramContext);
    if (paramContext instanceof MySinisterActivity)
      this.d = (MySinisterActivity)paramContext; 
  }
  
  public void onCreate(@Nullable Bundle paramBundle) {
    super.onCreate(paramBundle);
    if (getArguments() != null && getArguments().containsKey("sinister-key") && getArguments().getString("sinister-key") != null)
      try {
        this.e = Arrays.asList((Object[])(new ejm()).a(getArguments().getString("sinister-key"), kvp[].class));
        return;
      } catch (Exception exception) {
        exception.printStackTrace();
        this.e = null;
        return;
      }  
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, @Nullable ViewGroup paramViewGroup, @Nullable Bundle paramBundle) {
    View view = paramLayoutInflater.inflate(2130969071, paramViewGroup, false);
    a(view);
    if (this.e == null || this.e.size() <= 0) {
      this.c.setState(aor.EMPTY);
      return view;
    } 
    this.c.setState(aor.CONTENT);
    LinearLayoutManager linearLayoutManager = new LinearLayoutManager((Context)this.d, 1, false);
    ltz ltz = new ltz(this.e, (AppCompatActivity)this.d);
    this.b.setLayoutManager((RecyclerView.LayoutManager)linearLayoutManager);
    this.b.setAdapter(ltz);
    this.b.addItemDecoration(new mgw((Context)this.d, mgx.GREY));
    ltz.a(new lwh(this));
    return view;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\lwg.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */