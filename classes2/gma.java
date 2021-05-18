import android.content.Context;
import android.support.v4.view.PagerAdapter;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import java.util.ArrayList;
import java.util.List;

class gma extends PagerAdapter {
  private List<View> d = new ArrayList<View>();
  
  private List<View> e = new ArrayList<View>();
  
  private List<ImageView> f = new ArrayList<ImageView>();
  
  gma(gly paramgly, Context paramContext, List paramList) {}
  
  private void a() {
    for (View view : this.d) {
      if (gly.c(this.c)) {
        view.setVisibility(8);
        continue;
      } 
      view.setVisibility(0);
    } 
    for (View view : this.e) {
      if (gly.c(this.c)) {
        view.setVisibility(0);
        continue;
      } 
      view.setVisibility(8);
    } 
    for (ImageView imageView : this.f) {
      if (gly.c(this.c)) {
        imageView.setImageResource(2130838739);
        continue;
      } 
      imageView.setImageResource(2130838775);
    } 
  }
  
  private void b() {
    for (View view : this.d) {
      if (gly.c(this.c)) {
        view.setVisibility(8);
        continue;
      } 
      view.setVisibility(0);
    } 
    for (View view : this.e) {
      if (gly.c(this.c)) {
        view.setVisibility(0);
        continue;
      } 
      view.setVisibility(8);
    } 
    for (ImageView imageView : this.f) {
      if (gly.c(this.c)) {
        imageView.setImageResource(2130838739);
        continue;
      } 
      imageView.setImageResource(2130838775);
    } 
  }
  
  public void destroyItem(ViewGroup paramViewGroup, int paramInt, Object paramObject) {}
  
  public int getCount() {
    return this.b.size();
  }
  
  public Object instantiateItem(ViewGroup paramViewGroup, int paramInt) {
    View view = paramViewGroup.getChildAt(paramInt);
    if (view == null) {
      view = ((LayoutInflater)this.a.getSystemService("layout_inflater")).inflate(2130968838, null);
      gly.a(this.c, new gme(this.c, null));
      gme.a(gly.b(this.c), (LinearLayout)view.findViewById(2131756445));
      gme.b(gly.b(this.c), (LinearLayout)view.findViewById(2131756445));
      gme.a(gly.b(this.c), (TextView)view.findViewById(2131756441));
      gme.b(gly.b(this.c), (TextView)view.findViewById(2131756443));
      gme.a(gly.b(this.c)).setVisibility(4);
      gme.a(gly.b(this.c), (ImageView)view.findViewById(2131756442));
      gme.a(gly.b(this.c), (Button)view.findViewById(2131756444));
      gme.a(gly.b(this.c), (RelativeLayout)view.findViewById(2131756440));
      gme.c(gly.b(this.c), (TextView)view.findViewById(2131756448));
      gme.d(gly.b(this.c), (TextView)view.findViewById(2131756449));
      gme.e(gly.b(this.c), (TextView)view.findViewById(2131756450));
      gme.f(gly.b(this.c), (TextView)view.findViewById(2131756451));
      view.setTag(gly.b(this.c));
    } else {
      gly.a(this.c, (gme)view.getTag());
    } 
    this.d.add(gme.b(gly.b(this.c)));
    this.e.add(gme.c(gly.b(this.c)));
    this.f.add(gme.d(gly.b(this.c)));
    if (gly.c(this.c)) {
      gly.a(this.c, false);
    } else {
      gly.a(this.c, true);
    } 
    b();
    jde jde = this.b.get(paramInt);
    this.c.a(jde);
    if (gly.d(this.c) == null)
      this.c.a(jde); 
    gme.e(gly.b(this.c)).setOnClickListener(new gmb(this));
    gme.c(gly.b(this.c)).setOnClickListener(new gmc(this, paramInt));
    gme.b(gly.b(this.c)).setOnClickListener(new gmd(this, paramInt));
    gme.c(gly.b(this.c)).setText(gly.g(this.c).getString(2131297977));
    gme.f(gly.b(this.c)).setText(jde.d());
    gme.a(gly.b(this.c)).setText(gly.g(this.c).getString(2131297977));
    gme.g(gly.b(this.c)).setText(this.a.getString(2131298002));
    gme.h(gly.b(this.c)).setText(naj.f(jde.b().a()));
    gme.i(gly.b(this.c)).setVisibility(8);
    gme.j(gly.b(this.c)).setVisibility(8);
    paramViewGroup.addView(view);
    return view;
  }
  
  public boolean isViewFromObject(View paramView, Object paramObject) {
    return (paramView == paramObject);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\gma.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */