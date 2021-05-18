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
import java.util.Iterator;
import java.util.List;

class glf extends PagerAdapter {
  private List<View> d = new ArrayList<View>();
  
  private List<View> e = new ArrayList<View>();
  
  private List<ImageView> f = new ArrayList<ImageView>();
  
  private List<Boolean> g = new ArrayList<Boolean>();
  
  glf(gld paramgld, Context paramContext, List paramList) {}
  
  private void a() {
    for (View view : this.d) {
      if (gld.c(this.c)) {
        view.setVisibility(8);
        continue;
      } 
      view.setVisibility(0);
    } 
    for (View view : this.e) {
      Iterator<Boolean> iterator = this.g.iterator();
      while (iterator.hasNext()) {
        if (!((Boolean)iterator.next()).booleanValue()) {
          if (gld.c(this.c)) {
            view.setVisibility(0);
            continue;
          } 
          view.setVisibility(8);
          continue;
        } 
        view.setVisibility(0);
      } 
    } 
    for (ImageView imageView : this.f) {
      if (gld.c(this.c)) {
        imageView.setImageResource(2130838739);
        continue;
      } 
      imageView.setImageResource(2130838775);
    } 
  }
  
  private void b() {
    for (View view : this.d) {
      if (gld.c(this.c)) {
        view.setVisibility(8);
        continue;
      } 
      view.setVisibility(0);
    } 
    for (View view : this.e) {
      Iterator<Boolean> iterator = this.g.iterator();
      while (iterator.hasNext()) {
        if (((Boolean)iterator.next()).booleanValue()) {
          if (gld.c(this.c)) {
            view.setVisibility(8);
            continue;
          } 
          view.setVisibility(0);
          continue;
        } 
        view.setVisibility(0);
      } 
    } 
    for (ImageView imageView : this.f) {
      if (gld.c(this.c)) {
        imageView.setImageResource(2130838739);
        continue;
      } 
      imageView.setImageResource(2130838775);
    } 
  }
  
  public void destroyItem(ViewGroup paramViewGroup, int paramInt, Object paramObject) {}
  
  public int getCount() {
    return (this.b != null) ? this.b.size() : 1;
  }
  
  public Object instantiateItem(ViewGroup paramViewGroup, int paramInt) {
    View view = paramViewGroup.getChildAt(paramInt);
    if (view == null) {
      view = ((LayoutInflater)this.a.getSystemService("layout_inflater")).inflate(2130968838, null);
      gld.a(this.c, new glm(this.c, null));
      glm.a(gld.b(this.c), (LinearLayout)view.findViewById(2131756445));
      glm.b(gld.b(this.c), (LinearLayout)view.findViewById(2131756445));
      glm.a(gld.b(this.c), (TextView)view.findViewById(2131756441));
      glm.b(gld.b(this.c), (TextView)view.findViewById(2131756443));
      glm.a(gld.b(this.c), (ImageView)view.findViewById(2131756442));
      glm.a(gld.b(this.c), (Button)view.findViewById(2131756444));
      glm.a(gld.b(this.c), (RelativeLayout)view.findViewById(2131756440));
      glm.c(gld.b(this.c), (TextView)view.findViewById(2131756448));
      glm.d(gld.b(this.c), (TextView)view.findViewById(2131756449));
      glm.e(gld.b(this.c), (TextView)view.findViewById(2131756450));
      glm.f(gld.b(this.c), (TextView)view.findViewById(2131756451));
      view.setTag(gld.b(this.c));
    } else {
      gld.a(this.c, (glm)view.getTag());
    } 
    this.e.add(glm.a(gld.b(this.c)));
    this.f.add(glm.b(gld.b(this.c)));
    glm.c(gld.b(this.c)).setOnClickListener(new glg(this));
    if (this.b != null) {
      ghu ghu = this.b.get(paramInt);
      this.c.a(ghu);
      if (gld.f(this.c) == null)
        this.c.a(ghu); 
      if (ghu.u().equals("TI")) {
        this.g.add(Boolean.valueOf(false));
        if (ghu.z() != null) {
          glm.a(gld.b(this.c)).setVisibility(0);
          glm.d(gld.b(this.c)).setVisibility(8);
          glm.a(gld.b(this.c)).setText(gld.g(this.c).getString(2131297909));
          this.g.add(Boolean.valueOf(true));
          glm.a(gld.b(this.c)).setOnClickListener(new glh(this, paramInt));
        } else {
          if (ghu.a().contains("UNLIMITED")) {
            glm.a(gld.b(this.c)).setText(gld.g(this.c).getString(2131298045));
            glm.a(gld.b(this.c)).setVisibility(0);
            glm.d(gld.b(this.c)).setVisibility(8);
          } else {
            glm.a(gld.b(this.c)).setText(gld.g(this.c).getString(2131297954));
            glm.a(gld.b(this.c)).setVisibility(8);
            glm.d(gld.b(this.c)).setVisibility(0);
            this.d.add(glm.d(gld.b(this.c)));
          } 
          glm.e(gld.b(this.c)).setText(this.a.getString(2131297953));
          glm.f(gld.b(this.c)).setText(naj.f(ghu.c()));
          gli gli = new gli(this, paramInt);
          glm.d(gld.b(this.c)).setOnClickListener(gli);
          glm.a(gld.b(this.c)).setOnClickListener(gli);
        } 
      } else if (ghu.u().equals("BE")) {
        this.g.add(Boolean.valueOf(true));
        if (ghu.z() != null) {
          glm.a(gld.b(this.c)).setVisibility(0);
          glm.d(gld.b(this.c)).setVisibility(8);
          glm.a(gld.b(this.c)).setText(gld.g(this.c).getString(2131297909));
          glm.a(gld.b(this.c)).setOnClickListener(new glj(this, paramInt));
        } else {
          this.g.add(Boolean.valueOf(true));
          glm.a(gld.b(this.c)).setVisibility(0);
          glm.d(gld.b(this.c)).setVisibility(8);
          glm.a(gld.b(this.c)).setText(gld.g(this.c).getString(2131297863));
          glm.a(gld.b(this.c)).setOnClickListener(new glk(this, paramInt));
        } 
      } 
      glm.g(gld.b(this.c)).setText(ghu.a());
      glm.h(gld.b(this.c)).setText("Final " + ghu.I());
    } else {
      glm.d(gld.b(this.c)).setVisibility(8);
      glm.a(gld.b(this.c)).setVisibility(0);
      glm.a(gld.b(this.c)).setText("Ver fatura");
      glm.g(gld.b(this.c)).setText("Cartão Santander");
      glm.h(gld.b(this.c)).setText("");
      glm.e(gld.b(this.c)).setText("");
      glm.f(gld.b(this.c)).setText("");
      glm.b(gld.b(this.c)).setImageResource(2130838739);
      glm.a(gld.b(this.c)).setOnClickListener(new gll(this));
    } 
    if (gld.c(this.c)) {
      gld.a(this.c, false);
      glm.g(gld.b(this.c)).setTextSize(16.0F);
      glm.g(gld.b(this.c)).setPadding(0, 0, 0, 10);
      glm.i(gld.b(this.c)).setVisibility(8);
      glm.j(gld.b(this.c)).setVisibility(8);
      paramViewGroup.addView(view);
      return view;
    } 
    gld.a(this.c, true);
    glm.g(gld.b(this.c)).setTextSize(16.0F);
    glm.g(gld.b(this.c)).setPadding(0, 0, 0, 10);
    glm.i(gld.b(this.c)).setVisibility(8);
    glm.j(gld.b(this.c)).setVisibility(8);
    paramViewGroup.addView(view);
    return view;
  }
  
  public boolean isViewFromObject(View paramView, Object paramObject) {
    return (paramView == paramObject);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\glf.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */