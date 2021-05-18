import android.animation.ObjectAnimator;
import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.support.annotation.Nullable;
import android.support.v4.app.Fragment;
import android.support.v7.app.AppCompatActivity;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.santander.app.seguros.ui.sinister.activities.SinisterActivity;
import com.santander.app.seguros.ui.widgets.ExpandableLayoutV2;
import com.santander.app.seguros.ui.widgets.ImageTextButton;
import com.santander.app.seguros.utils.SmoothScrollerLinearLayoutManager;
import java.util.List;

public class lzi extends Fragment implements ltl {
  private static final String a = "response-key";
  
  private boolean b = false;
  
  private SinisterActivity c;
  
  private kvb d;
  
  private SmoothScrollerLinearLayoutManager e;
  
  private lth f;
  
  private TextView g;
  
  private RecyclerView h;
  
  private View i;
  
  private ImageTextButton j;
  
  private LinearLayout k;
  
  private ExpandableLayoutV2 l;
  
  private ImageTextButton m;
  
  public static lzi a(kvb paramkvb) {
    Bundle bundle = new Bundle();
    bundle.putString("response-key", (new ejm()).b(paramkvb));
    lzi lzi1 = new lzi();
    lzi1.setArguments(bundle);
    return lzi1;
  }
  
  private void a(View paramView) {
    this.g = (TextView)paramView.findViewById(2131757405);
    this.h = (RecyclerView)paramView.findViewById(2131757406);
    this.i = paramView.findViewById(2131757407);
    this.j = (ImageTextButton)paramView.findViewById(2131757402);
    this.k = (LinearLayout)paramView.findViewById(2131757401);
    this.l = (ExpandableLayoutV2)paramView.findViewById(2131757403);
    this.m = (ImageTextButton)paramView.findViewById(2131757404);
    if (this.d.a() != null && !this.d.a().equals("")) {
      this.m.setTextButton(this.d.a());
    } else {
      this.m.setTextButton(getResources().getString(2131298796));
    } 
    b();
  }
  
  private void a(String paramString) {
    frq.d("Seguros_Sinistro_Acionar_Cobertura_Acao", mhj.m(mhj.p(paramString).replace(" ", "").replace("ç", "c")));
  }
  
  private void a(List<kuy> paramList) {
    for (kuy kuy : paramList) {
      if (kuy.c().longValue() == 11L)
        kuy.a(2130838311); 
      if (kuy.c().longValue() == 12L)
        kuy.a(2130838411); 
      if (kuy.c().longValue() == 13L)
        kuy.a(2130838416); 
      if (kuy.c().longValue() == 14L)
        kuy.a(2130838470); 
      if (kuy.c().longValue() == 15L)
        kuy.a(2130838513); 
      if (kuy.c().longValue() == 16L)
        kuy.a(2130838585); 
      if (kuy.c().longValue() == 17L)
        kuy.a(2130838620); 
      if (kuy.c().longValue() == 18L)
        kuy.a(2130838605); 
      if (kuy.c().longValue() == 19L)
        kuy.a(2130838625); 
      if (kuy.c().longValue() == 20L)
        kuy.a(2130838671); 
      if (kuy.c().longValue() == 21L)
        kuy.a(2130838420); 
      if (kuy.c().longValue() == 23L)
        kuy.a(2130838675); 
    } 
  }
  
  private void c() {
    a(this.d.f());
    this.h.setNestedScrollingEnabled(false);
    this.l.c(false);
    this.i.setClickable(false);
    this.e = new SmoothScrollerLinearLayoutManager((Context)this.c, 1, false);
    this.f = new lth(this.d.f(), (AppCompatActivity)this.c);
    this.f.a(this);
    this.h.setLayoutManager((RecyclerView.LayoutManager)this.e);
    this.h.setAdapter((RecyclerView.Adapter)this.f);
    this.g.setText(String.format(getResources().getString(2131297571), new Object[] { mzr.g() }));
  }
  
  public void a() {
    if (this.b)
      return; 
    this.b = true;
    if (this.l.a()) {
      this.i.setClickable(false);
      ObjectAnimator objectAnimator = ObjectAnimator.ofFloat(this.i, View.ALPHA, new float[] { 0.5F, 0.0F });
      this.e.a(true);
      this.f.a(true);
      this.c.e(true);
      objectAnimator.setDuration(200L);
      objectAnimator.start();
    } else {
      this.i.setClickable(true);
      this.e.a(false);
      this.f.a(false);
      this.c.e(false);
      ObjectAnimator objectAnimator = ObjectAnimator.ofFloat(this.i, View.ALPHA, new float[] { 0.0F, 0.5F });
      objectAnimator.setDuration(400L);
      (new Handler()).postDelayed((Runnable)new lzj(this, objectAnimator), 50L);
    } 
    this.l.setOnExpansionUpdateListener((mbu)new lzk(this));
    this.l.a(true);
    this.c.E.a(true);
  }
  
  public void a(kuy paramkuy) {
    if (this.b)
      return; 
    mhv.INSTANCE.clear();
    this.c.u();
    kva kva = new kva();
    mhv.INSTANCE.setCoverageId(paramkuy.c().longValue());
    mhv.INSTANCE.setCoverageName(paramkuy.e());
    this.c.a(paramkuy);
    kva.b(paramkuy.c());
    kva.a(kuz.NEXT);
    kva.a(kuq.COVERAGE);
    a(paramkuy.e());
    this.c.a(kva);
  }
  
  @nfq
  public void a(kxd paramkxd) {
    if (!paramkxd.a)
      a(); 
  }
  
  public void b() {
    this.m.setOnClickListener((View.OnClickListener)new lzl(this));
    this.k.setOnClickListener((View.OnClickListener)new lzm(this));
    this.j.setOnClickListener((View.OnClickListener)new lzn(this));
    this.i.setOnClickListener((View.OnClickListener)new lzo(this));
  }
  
  public void b(kuy paramkuy) {
    lyj.a(paramkuy.e(), paramkuy.b(), paramkuy.a()).show(getChildFragmentManager(), "info-image-dialog-tag");
  }
  
  public void onAttach(Context paramContext) {
    super.onAttach(paramContext);
    if (paramContext instanceof SinisterActivity)
      this.c = (SinisterActivity)paramContext; 
  }
  
  public void onCreate(@Nullable Bundle paramBundle) {
    super.onCreate(paramBundle);
    this.d = (kvb)(new ejm()).a(getArguments().getString("response-key"), kvb.class);
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, @Nullable ViewGroup paramViewGroup, @Nullable Bundle paramBundle) {
    View view = paramLayoutInflater.inflate(2130969063, paramViewGroup, false);
    a(view);
    c();
    return view;
  }
  
  public void onPause() {
    super.onPause();
    kws.a().b().c(this);
  }
  
  public void onResume() {
    super.onResume();
    kws.a().b().b(this);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\lzi.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */