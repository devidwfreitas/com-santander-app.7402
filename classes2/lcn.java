import android.content.Context;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v4.app.Fragment;
import android.support.v4.view.ViewPager;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import br.com.zup.multistatelayout.MultiStateLayout;
import com.santander.app.seguros.ui.widgets.AssistanceAvailabilityView;
import com.santander.app.seguros.ui.widgets.MultiViewPager;
import java.util.List;

public class lcn extends Fragment {
  private static final String a = "CERTIFICATE_ID_KEY";
  
  private static final String b = "PRODUCT_CODE_KEY";
  
  private MultiStateLayout c;
  
  private MultiViewPager d;
  
  private TextView e;
  
  private TextView f;
  
  private TextView g;
  
  private LinearLayout h;
  
  private LinearLayout i;
  
  private AssistanceAvailabilityView j;
  
  private AssistanceAvailabilityView k;
  
  private Button l;
  
  private List<kps> m;
  
  private int n = 0;
  
  private kxm o;
  
  private String p;
  
  private String q;
  
  private lcs r;
  
  public static lcn a(String paramString1, String paramString2) {
    lcn lcn1 = new lcn();
    Bundle bundle = new Bundle();
    bundle.putString("CERTIFICATE_ID_KEY", paramString1);
    bundle.putString("PRODUCT_CODE_KEY", paramString2);
    lcn1.setArguments(bundle);
    return lcn1;
  }
  
  private void a() {
    if (miq.C().f() != null) {
      String str = miq.C().f().j();
      this.e.setText(getString(2131297569, new Object[] { str }));
    } 
    if (this.m == null) {
      b();
      return;
    } 
    c();
  }
  
  private void a(int paramInt) {
    kps kps = this.m.get(paramInt);
    this.f.setText(kps.d());
    this.g.setText(kps.b());
    if (kps.f() != null) {
      paramInt = kps.f().a();
      if (paramInt == 0)
        this.h.setVisibility(8); 
      this.j.a(0, paramInt);
      paramInt = kps.f().b();
      if (paramInt == 0)
        this.i.setVisibility(8); 
      this.k.a(1, paramInt);
    } 
  }
  
  private void a(View paramView) {
    this.c = (MultiStateLayout)paramView.findViewById(2131755279);
    this.d = (MultiViewPager)paramView.findViewById(2131757541);
    this.e = (TextView)paramView.findViewById(2131757405);
    this.f = (TextView)paramView.findViewById(2131757542);
    this.g = (TextView)paramView.findViewById(2131757543);
    this.h = (LinearLayout)paramView.findViewById(2131757544);
    this.i = (LinearLayout)paramView.findViewById(2131757546);
    this.j = (AssistanceAvailabilityView)paramView.findViewById(2131757545);
    this.k = (AssistanceAvailabilityView)paramView.findViewById(2131757548);
    this.l = (Button)paramView.findViewById(2131756955);
  }
  
  private void b() {
    this.c.setState(aor.LOADING);
    this.o.a(this.p, this.q, new lco(this), new lcp(this));
  }
  
  private void c() {
    lae lae = new lae((Context)getActivity(), this.m);
    lae.a((ViewPager)this.d);
    this.d.setAdapter(lae);
    this.d.setClipToPadding(false);
    this.d.setPageTransformer(false, new mhy());
    this.d.setScrollDurationFactor(2.0D);
    this.d.addOnPageChangeListener(new lcq(this));
    a(this.n);
    this.l.setOnClickListener(new lcr(this));
  }
  
  public void a(lcs paramlcs) {
    this.r = paramlcs;
  }
  
  public void onCreate(@Nullable Bundle paramBundle) {
    super.onCreate(paramBundle);
    this.o = new kxn();
    if (getArguments() != null) {
      this.p = getArguments().getString("CERTIFICATE_ID_KEY");
      this.q = getArguments().getString("PRODUCT_CODE_KEY");
    } 
  }
  
  @Nullable
  public View onCreateView(LayoutInflater paramLayoutInflater, @Nullable ViewGroup paramViewGroup, @Nullable Bundle paramBundle) {
    View view = paramLayoutInflater.inflate(2130969085, paramViewGroup, false);
    a(view);
    a();
    return view;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\lcn.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */