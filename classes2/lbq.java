import android.animation.ObjectAnimator;
import android.content.Context;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v4.app.Fragment;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import br.com.zup.multistatelayout.MultiStateLayout;
import com.santander.app.seguros.ui.assistance.activities.MyAssistancesActivity;
import com.santander.app.widget.BottomExapandableView;
import java.util.List;

public class lbq extends Fragment implements lal {
  private static final int a = 1002;
  
  private static final String b = "SCHEDULING_NUMBER_KEY";
  
  private MultiStateLayout c;
  
  private TextView d;
  
  private RelativeLayout e;
  
  private RelativeLayout f;
  
  private ImageButton g;
  
  private ImageButton h;
  
  private RecyclerView i;
  
  private LinearLayout j;
  
  private TextView k;
  
  private TextView l;
  
  private BottomExapandableView m;
  
  private MyAssistancesActivity n;
  
  private kxm o;
  
  private kph p;
  
  private List<kpo> q;
  
  private View.OnClickListener a(ImageButton paramImageButton, View paramView, int paramInt, RelativeLayout paramRelativeLayout) {
    return new lbt(this, paramView, paramRelativeLayout, paramInt, paramImageButton);
  }
  
  public static lbq a(kph paramkph) {
    lbq lbq1 = new lbq();
    Bundle bundle = new Bundle();
    bundle.putString("SCHEDULING_NUMBER_KEY", paramkph.toString());
    lbq1.setArguments(bundle);
    return lbq1;
  }
  
  private void a(View paramView) {
    this.c = (MultiStateLayout)paramView.findViewById(2131755279);
    this.d = (TextView)paramView.findViewById(2131757498);
    this.e = (RelativeLayout)paramView.findViewById(2131757499);
    this.f = (RelativeLayout)paramView.findViewById(2131757503);
    this.g = (ImageButton)paramView.findViewById(2131757501);
    this.h = (ImageButton)paramView.findViewById(2131757504);
    this.i = (RecyclerView)paramView.findViewById(2131757502);
    this.j = (LinearLayout)paramView.findViewById(2131757505);
    this.k = (TextView)paramView.findViewById(2131757506);
    this.l = (TextView)paramView.findViewById(2131756855);
    this.m = (BottomExapandableView)paramView.findViewById(2131757507);
  }
  
  private void a(View paramView, int paramInt) {
    ObjectAnimator objectAnimator = ObjectAnimator.ofFloat(paramView, View.ROTATION, new float[] { paramInt });
    objectAnimator.setDuration(300L);
    objectAnimator.start();
  }
  
  private void a(View paramView, int paramInt1, int paramInt2) {
    AlphaAnimation alphaAnimation = new AlphaAnimation(paramInt1, paramInt2);
    alphaAnimation.setDuration(300L);
    paramView.startAnimation((Animation)alphaAnimation);
  }
  
  private void a(String paramString) {
    lbl lbl = lbl.a(this.p.i().b(), paramString);
    lbl.a(new lbx(this));
    this.n.a(lbl);
  }
  
  private void c() {
    this.c.setState(aor.LOADING);
    this.o.a(this.p.f(), new lbr(this), new lbs(this));
  }
  
  private void d() {
    this.d.setText(this.p.i().b());
    if (this.q.size() > 0) {
      int j = this.q.size() - 1;
      kpo kpo = this.q.get(j);
      this.k.setText(kpo.a());
      this.l.setText(kpo.c());
      this.q.remove(j);
    } 
    this.i.setLayoutManager((RecyclerView.LayoutManager)new LinearLayoutManager((Context)getActivity()));
    lak lak = new lak((Context)getActivity(), this.q, this.p.h().b());
    lak.a(this);
    this.i.setAdapter(lak);
    int i = (int)getResources().getDimension(2131361889);
    this.g.setOnClickListener(a(this.g, (View)this.i, i, this.e));
    i = (int)getResources().getDimension(2131361888);
    this.h.setOnClickListener(a(this.h, (View)this.j, i, this.f));
    koh koh = new koh();
    koh.a(this.p.i().b());
    koh.b(this.p.f());
    koh.c(this.p.c());
    lbp lbp = lbp.a(koh);
    this.m.setContentFragment(lbp);
    this.m.setTitleText(koh.a());
  }
  
  private void e() {
    this.c.setState(aor.LOADING);
    this.o.b(this.p.f(), new lbv(this), new lbw(this));
  }
  
  public void a() {
    lay lay = lay.a(getString(2131298918));
    lay.a(new lbu(this));
    lay.show(getFragmentManager(), null);
  }
  
  public void b() {
    lay lay = lay.a(getString(2131298920));
    lay.a(new lby(this));
    lay.show(getFragmentManager(), null);
  }
  
  public void onAttach(Context paramContext) {
    super.onAttach(paramContext);
    this.n = (MyAssistancesActivity)paramContext;
  }
  
  public void onCreate(@Nullable Bundle paramBundle) {
    super.onCreate(paramBundle);
    if (getArguments() != null)
      this.p = (new ejm()).<kph>a(getArguments().getString("SCHEDULING_NUMBER_KEY"), kph.class); 
    this.o = new kxn();
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, @Nullable ViewGroup paramViewGroup, @Nullable Bundle paramBundle) {
    View view = paramLayoutInflater.inflate(2130969077, paramViewGroup, false);
    a(view);
    c();
    return view;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\lbq.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */