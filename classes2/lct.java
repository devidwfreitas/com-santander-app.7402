import android.content.Context;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v4.app.Fragment;
import android.support.v7.widget.GridLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import br.com.zup.multistatelayout.MultiStateLayout;
import java.util.List;

public class lct extends Fragment implements law {
  private static final String a = "ASSISTANCE_SUBSERVICE_EVENT_KEY";
  
  private lcx b;
  
  private MultiStateLayout c;
  
  private RecyclerView d;
  
  private kxm e;
  
  private koj f;
  
  private List<kon> g;
  
  public static lct a(koj paramkoj) {
    lct lct1 = new lct();
    Bundle bundle = new Bundle();
    bundle.putString("ASSISTANCE_SUBSERVICE_EVENT_KEY", paramkoj.toString());
    lct1.setArguments(bundle);
    return lct1;
  }
  
  private void a() {
    if (this.g == null) {
      b();
      return;
    } 
    c();
  }
  
  private void a(View paramView) {
    this.c = (MultiStateLayout)paramView.findViewById(2131755279);
    this.d = (RecyclerView)paramView.findViewById(2131757593);
  }
  
  private void b() {
    this.c.setState(aor.LOADING);
    this.e.a(this.f, new lcu(this), new lcv(this));
  }
  
  private void c() {
    lau lau = new lau(this.g);
    lau.a(this);
    this.d.setLayoutManager((RecyclerView.LayoutManager)new GridLayoutManager((Context)getActivity(), 2));
    this.d.setAdapter(lau);
  }
  
  public void a(kon paramkon) {
    if (!TextUtils.isEmpty(paramkon.e())) {
      lay lay = lay.a(paramkon.e());
      lay.a(new lcw(this, paramkon));
      lay.show(getFragmentManager(), null);
    } 
  }
  
  public void a(lcx paramlcx) {
    this.b = paramlcx;
  }
  
  public void onCreate(@Nullable Bundle paramBundle) {
    super.onCreate(paramBundle);
    this.e = new kxn();
    if (getArguments() != null)
      this.f = (new ejm()).<koj>a(getArguments().getString("ASSISTANCE_SUBSERVICE_EVENT_KEY"), koj.class); 
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, @Nullable ViewGroup paramViewGroup, @Nullable Bundle paramBundle) {
    View view = paramLayoutInflater.inflate(2130969099, paramViewGroup, false);
    a(view);
    a();
    return view;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\lct.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */