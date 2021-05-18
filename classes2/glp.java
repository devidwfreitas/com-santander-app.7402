import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.support.v4.view.PagerAdapter;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.santander.app.ContaMovementActivity;
import com.santander.app.contacorrente.domain.Conta;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

class glp extends PagerAdapter {
  private List<View> d = new ArrayList<View>();
  
  private List<View> e = new ArrayList<View>();
  
  private List<ImageView> f = new ArrayList<ImageView>();
  
  glp(gln paramgln, Context paramContext, List paramList) {}
  
  private void a() {
    Conta conta = this.b.get(this.c.c());
    this.c.a(conta);
    if (gln.e(this.c) == null)
      this.c.a(conta); 
    this.c.a(gln.f(this.c));
    frq.d("ContaCorrente_Acao", "acessoCarroselHome");
    Intent intent = new Intent(gln.c(this.c), ContaMovementActivity.class);
    intent.putExtra("conta_selected", (Serializable)conta);
    gln.c(this.c).startActivity(intent);
  }
  
  private void b() {
    for (View view : this.d) {
      if (gln.d(this.c)) {
        view.setVisibility(8);
        continue;
      } 
      view.setVisibility(0);
    } 
    for (View view : this.e) {
      if (gln.d(this.c)) {
        view.setVisibility(0);
        continue;
      } 
      view.setVisibility(8);
    } 
    for (ImageView imageView : this.f) {
      if (gln.d(this.c)) {
        imageView.setImageResource(2130838739);
        continue;
      } 
      imageView.setImageResource(2130838775);
    } 
  }
  
  private void c() {
    SharedPreferences sharedPreferences = gln.c(this.c).getSharedPreferences("ContaPreferences", 0);
    for (View view : this.d) {
      if (sharedPreferences.getBoolean("state_carrossel_conta", false)) {
        view.setVisibility(8);
        continue;
      } 
      view.setVisibility(0);
    } 
    for (View view : this.e) {
      if (sharedPreferences.getBoolean("state_carrossel_conta", false)) {
        view.setVisibility(0);
        continue;
      } 
      view.setVisibility(8);
    } 
    for (ImageView imageView : this.f) {
      if (sharedPreferences.getBoolean("state_carrossel_conta", false)) {
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
      gln.a(this.c, new glt(this.c, null));
      glt.a(gln.b(this.c), (LinearLayout)view.findViewById(2131756445));
      glt.a(gln.b(this.c), (TextView)view.findViewById(2131756441));
      glt.b(gln.b(this.c), (TextView)view.findViewById(2131756443));
      glt.a(gln.b(this.c), (ImageView)view.findViewById(2131756442));
      glt.a(gln.b(this.c), (Button)view.findViewById(2131756444));
      glt.a(gln.b(this.c), (RelativeLayout)view.findViewById(2131756440));
      glt.c(gln.b(this.c), (TextView)view.findViewById(2131756448));
      glt.d(gln.b(this.c), (TextView)view.findViewById(2131756449));
      glt.e(gln.b(this.c), (TextView)view.findViewById(2131756450));
      glt.f(gln.b(this.c), (TextView)view.findViewById(2131756451));
      view.setTag(gln.b(this.c));
    } else {
      gln.a(this.c, (glt)view.getTag());
    } 
    this.d.add(glt.a(gln.b(this.c)));
    this.e.add(glt.b(gln.b(this.c)));
    this.f.add(glt.c(gln.b(this.c)));
    glt.b(gln.b(this.c)).setText(gln.c(this.c).getString(2131298001));
    SharedPreferences sharedPreferences = gln.c(this.c).getSharedPreferences("ContaPreferences", 0);
    SharedPreferences.Editor editor = sharedPreferences.edit();
    if (sharedPreferences.getBoolean("state_carrossel_conta", false)) {
      if (gln.d(this.c)) {
        gln.a(this.c, false);
      } else {
        gln.a(this.c, true);
      } 
      c();
    } 
    Conta conta = this.b.get(paramInt);
    glt.d(gln.b(this.c)).setOnClickListener(new glq(this, editor));
    glt.a(gln.b(this.c)).setOnClickListener(new glr(this));
    glt.b(gln.b(this.c)).setOnClickListener(new gls(this));
    glt.e(gln.b(this.c)).setVisibility(8);
    glt.f(gln.b(this.c)).setText(naq.c(conta.getAgencia(), conta.getCuenta()));
    glt.f(gln.b(this.c)).setPadding(0, 25, 0, 35);
    glt.c(gln.b(this.c)).setPadding(0, 0, 0, 20);
    glt.g(gln.b(this.c)).setText(this.a.getString(2131298002));
    glt.h(gln.b(this.c)).setText(naj.f(conta.getExtractoHome().u()));
    glt.i(gln.b(this.c)).setText(this.a.getString(2131298003));
    glt.j(gln.b(this.c)).setText(naj.f(conta.getValor()));
    paramViewGroup.addView(view);
    return view;
  }
  
  public boolean isViewFromObject(View paramView, Object paramObject) {
    return (paramView == paramObject);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\glp.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */