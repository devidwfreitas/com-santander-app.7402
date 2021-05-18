import android.content.Context;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.design.widget.TabLayout;
import android.support.v4.app.Fragment;
import android.support.v4.view.PagerAdapter;
import android.support.v4.view.ViewPager;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import br.com.zup.multistatelayout.MultiStateLayout;
import java.util.ArrayList;
import java.util.List;

public class lca extends Fragment {
  private MultiStateLayout a;
  
  private TabLayout b;
  
  private ViewPager c;
  
  private kxm d;
  
  private List<kph> e = new ArrayList<kph>();
  
  private List<kph> f = new ArrayList<kph>();
  
  public static lca a() {
    return new lca();
  }
  
  private void a(View paramView) {
    this.a = (MultiStateLayout)paramView.findViewById(2131755279);
    this.b = (TabLayout)paramView.findViewById(2131755940);
    this.c = (ViewPager)paramView.findViewById(2131755941);
  }
  
  private void a(List<kph> paramList) {
    for (kph kph : kph.a(mhj.a((Context)getActivity(), "jsons/assistance/subserviceMapping.json"), paramList)) {
      if (kph.h().b()) {
        this.e.add(kph);
        continue;
      } 
      if (kph.h().c())
        this.f.add(kph); 
    } 
  }
  
  private void c() {
    this.b.setupWithViewPager(this.c);
    this.c.setAdapter((PagerAdapter)new lce(this, getChildFragmentManager()));
    this.b.addOnTabSelectedListener(new lcb(this));
    d();
  }
  
  private void d() {
    if (this.e.size() > 0 || this.f.size() > 0)
      return; 
    this.a.setState(aor.LOADING);
    this.d.a(new lcc(this), new lcd(this));
  }
  
  public void b() {
    ArrayList<kph> arrayList = new ArrayList();
    this.f = arrayList;
    this.e = arrayList;
    d();
  }
  
  public void onCreate(@Nullable Bundle paramBundle) {
    super.onCreate(paramBundle);
    this.d = new kxn();
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, @Nullable ViewGroup paramViewGroup, @Nullable Bundle paramBundle) {
    View view = paramLayoutInflater.inflate(2130969080, paramViewGroup, false);
    a(view);
    c();
    return view;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\lca.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */