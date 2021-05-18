import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.support.design.widget.TabLayout;
import android.support.v4.app.FragmentActivity;
import android.support.v4.view.PagerAdapter;
import android.support.v4.view.ViewPager;
import android.widget.LinearLayout;
import android.widget.TextView;

public class ahe extends akb {
  private Dialog a;
  
  private TabLayout b;
  
  private LinearLayout c;
  
  private LinearLayout d;
  
  private ViewPager e;
  
  private ajg f;
  
  private FragmentActivity g;
  
  public ahe(FragmentActivity paramFragmentActivity) {
    super((Activity)paramFragmentActivity);
    this.g = paramFragmentActivity;
    this.e = (ViewPager)d().findViewById(agg.viewpager);
    ((TextView)d().findViewById(agg.header_titulo)).setText(agl.meus_compromissos);
    this.c = (LinearLayout)d().findViewById(agg.main_content);
    this.d = (LinearLayout)d().findViewById(agg.no_debts_main);
    this.b = (TabLayout)d().findViewById(agg.main_content_tab);
    a();
    this.b.setupWithViewPager(this.e);
    this.b.setOnTabSelectedListener(new ahh(this));
    (new agz((Context)d(), new ahi(this))).a();
    this.a = ano.b((Activity)this.g);
  }
  
  private void a() {
    switch (ahj.a[ajd.a().b().ordinal()]) {
      default:
        this.b.setBackgroundColor(this.g.getResources().getColor(agd.cred_header_defaut));
        return;
      case 1:
        this.b.setBackgroundColor(this.g.getResources().getColor(agd.cred_header_private));
        return;
      case 2:
        this.b.setBackgroundColor(this.g.getResources().getColor(agd.cred_header_select));
        return;
      case 3:
      case 4:
        break;
    } 
    this.b.setBackgroundColor(this.g.getResources().getColor(agd.cred_header_van_gogh));
  }
  
  private void a(ViewPager paramViewPager) {
    if (this.f.c() == 0 && this.f.d() == 0 && this.f.e() == 0 && this.f.f() == 0 && this.f.g() == 0) {
      this.b.setVisibility(8);
      this.c.setVisibility(8);
      this.d.setVisibility(0);
      return;
    } 
    ahk ahk = new ahk(this.g.getSupportFragmentManager());
    ahk.a(new ahd(this.f), this.g.getString(agl.total));
    ahk.a(new ahc(this.f), this.g.getString(agl.mes));
    paramViewPager.setAdapter((PagerAdapter)ahk);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\ahe.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */