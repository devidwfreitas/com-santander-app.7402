import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.santander.app.contacorrente.domain.Conta;
import java.util.ArrayList;
import java.util.List;

public class jwc implements jtu, jwb {
  private Activity a;
  
  private jsr b;
  
  private jvd c;
  
  private jtt d;
  
  private Conta e;
  
  private ghu f;
  
  private mip g;
  
  private boolean h;
  
  public jwc(Activity paramActivity, jsr paramjsr, jvd paramjvd) {
    this.a = paramActivity;
    this.b = paramjsr;
    this.c = paramjvd;
    this.d = new jtv(this.a, paramjsr, this);
    this.g = (mip)miq.C();
  }
  
  private boolean b(jss paramjss) {
    if (this.e == null && this.f == null) {
      this.c.a(this.a.getString(2131298192));
      return false;
    } 
    if ("S".equalsIgnoreCase(this.b.p()) && (paramjss.c() == null || paramjss.c().isEmpty())) {
      this.c.a(this.a.getString(2131298195));
      return false;
    } 
    if (paramjss.b().equals("0,00")) {
      this.c.a(this.a.getString(2131298235));
      return false;
    } 
    return true;
  }
  
  private boolean d(jsr paramjsr) {
    if (this.e == null && this.f == null) {
      this.c.a(this.a.getString(2131298192));
      return false;
    } 
    if ("S".equalsIgnoreCase(paramjsr.p()) && (paramjsr.q() == null || paramjsr.q().isEmpty())) {
      this.c.a(this.a.getString(2131298195));
      return false;
    } 
    if (paramjsr.k().equals("0,00")) {
      this.c.a(this.a.getString(2131298235));
      return false;
    } 
    if (!e() && !"S".equalsIgnoreCase(paramjsr.i())) {
      this.c.a(this.a.getString(2131298222));
      return false;
    } 
    return true;
  }
  
  private void g() {
    if (this.h)
      this.c.f(); 
  }
  
  public void a() {}
  
  public void a(Context paramContext) {
    LinearLayout linearLayout = new LinearLayout(paramContext);
    LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
    linearLayout.setOrientation(1);
    linearLayout.setLayoutParams((ViewGroup.LayoutParams)layoutParams);
    int i = (this.a.getResources().getDisplayMetrics()).widthPixels;
    for (gku gku : this.b.m()) {
      if (gku.a() == null) {
        LinearLayout linearLayout1 = new LinearLayout(paramContext);
        LinearLayout.LayoutParams layoutParams1 = new LinearLayout.LayoutParams(-1, -2);
        linearLayout1.setGravity(16);
        linearLayout1.setOrientation(0);
        linearLayout1.setLayoutParams((ViewGroup.LayoutParams)layoutParams1);
        linearLayout1.setPadding(0, 10, 0, 0);
        LinearLayout linearLayout2 = new LinearLayout(paramContext);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-1, -2);
        linearLayout2.setGravity(5);
        linearLayout2.setPadding(i / 100 * 10, 0, 0, 0);
        linearLayout2.setLayoutParams((ViewGroup.LayoutParams)layoutParams2);
        TextView textView1 = new TextView(paramContext);
        textView1.setLayoutParams(new ViewGroup.LayoutParams(-2, -2));
        textView1.setText(gku.b());
        textView1.setTextSize(14.0F);
        textView1.setTypeface(mzu.a(paramContext, 0));
        TextView textView2 = new TextView(paramContext);
        textView2.setLayoutParams(new ViewGroup.LayoutParams(-2, -2));
        textView2.setText(gku.c());
        textView2.setMaxLines(4);
        textView2.setTextSize(14.0F);
        textView2.setTextColor(-16777216);
        textView2.setTypeface(mzu.a(paramContext, 0));
        linearLayout1.addView((View)textView1);
        linearLayout2.addView((View)textView2);
        linearLayout1.addView((View)linearLayout2);
        linearLayout.addView((View)linearLayout1);
        continue;
      } 
      this.h = true;
    } 
    this.c.a(linearLayout);
  }
  
  public void a(EditText paramEditText) {
    guj guj = new guj();
    guj.a(paramEditText);
    paramEditText.addTextChangedListener(guj);
  }
  
  public void a(Conta paramConta) {
    this.e = paramConta;
    this.f = null;
  }
  
  public void a(ghu paramghu) {
    this.f = paramghu;
    this.e = null;
    this.c.d();
  }
  
  public void a(List<Conta> paramList, List<ghu> paramList1) {
    ArrayList<anb> arrayList = new ArrayList();
    arrayList.addAll(gmy.a(paramList));
    arrayList.addAll(gmy.b(paramList1));
    this.c.a(arrayList);
    c();
    d();
  }
  
  public void a(jsr paramjsr) {
    this.c.a(paramjsr);
  }
  
  public void a(jss paramjss) {
    if (b(paramjss)) {
      if (e()) {
        paramjss.setConta(this.e.getCuenta());
        paramjss.setAgencia(this.e.getAgencia());
      } else {
        paramjss.a(this.f.H());
        paramjss.setAgencia(this.g.f().f());
        paramjss.setConta(this.g.f().g());
      } 
      this.d.a(paramjss);
    } 
  }
  
  public void b() {
    f();
    a((Context)this.a);
    g();
  }
  
  public void b(jsr paramjsr) {
    if (paramjsr != null && !TextUtils.isEmpty(paramjsr.getMensagemErro())) {
      this.c.a(paramjsr.getMensagemErro());
      return;
    } 
    this.c.a(this.a.getString(2131297343));
  }
  
  public void c() {
    String str = this.b.f();
    byte b = -1;
    switch (str.hashCode()) {
      default:
        switch (b) {
          default:
            return;
          case 0:
            break;
        } 
        break;
      case 78:
        if (str.equals("N"))
          b = 0; 
      case 83:
        if (str.equals("S"))
          b = 1; 
    } 
    this.c.a();
  }
  
  public void c(jsr paramjsr) {
    if (d(paramjsr)) {
      if (e()) {
        paramjsr.b(this.e.getCuenta());
        paramjsr.c(this.e.getAgencia());
        paramjsr.d(null);
      } else {
        paramjsr.d(this.f.H());
        paramjsr.c(this.g.f().f());
        paramjsr.b(this.g.f().g());
      } 
      this.d.a(paramjsr);
    } 
  }
  
  public void d() {
    if (this.b.p() != null) {
      String str = this.b.p();
      byte b = -1;
      switch (str.hashCode()) {
        default:
          switch (b) {
            default:
              return;
            case 0:
              break;
          } 
          break;
        case 78:
          if (str.equals("N"))
            b = 0; 
        case 83:
          if (str.equals("S"))
            b = 1; 
      } 
      this.c.b();
      return;
    } 
    this.c.b();
  }
  
  public boolean e() {
    return (this.e != null);
  }
  
  public void f() {
    this.d.c();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jwc.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */