import android.content.Context;
import android.support.v4.content.ContextCompat;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseExpandableListAdapter;
import android.widget.Button;
import android.widget.ExpandableListView;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import android.widget.TextView;
import java.util.List;

public class jhw extends BaseExpandableListAdapter {
  private Context a;
  
  private List<jdl> b;
  
  private jie c;
  
  private jem d;
  
  public jhw(Context paramContext, List<jdl> paramList, jie paramjie, jem paramjem) {
    this.a = paramContext;
    this.b = paramList;
    this.c = paramjie;
    this.d = paramjem;
  }
  
  private LinearLayout a(jdx paramjdx) {
    LinearLayout linearLayout = new LinearLayout(this.a);
    linearLayout.setLayoutParams((ViewGroup.LayoutParams)new LinearLayout.LayoutParams(-2, -2, 1.0F));
    linearLayout.setOrientation(0);
    linearLayout.setGravity(17);
    linearLayout.setBackground(ContextCompat.getDrawable(this.a, 2130837626));
    Button button = new Button(this.a);
    button.setTextColor(ContextCompat.getColor(this.a, 2131624003));
    button.setBackgroundColor(ContextCompat.getColor(this.a, 2131623972));
    button.setLayoutParams((ViewGroup.LayoutParams)new LinearLayout.LayoutParams(-2, -2));
    button.setText(paramjdx.t().label());
    button.setTag(paramjdx);
    button.setOnClickListener(new jhy(this));
    linearLayout.addView((View)button);
    return linearLayout;
  }
  
  private void a(jdx paramjdx, jic paramjic) {
    jdx jdx2 = new jdx();
    jdx jdx1 = jdx2;
    if (paramjdx.o()) {
      try {
        jdx1 = paramjdx.a();
      } catch (CloneNotSupportedException cloneNotSupportedException) {
        Log.e("Error", cloneNotSupportedException.getMessage());
        jdx1 = jdx2;
      } 
      jdx1.a(jdk.RESGATAR);
      jic.k(paramjic).addView((View)a(jdx1));
    } 
    jdx2 = jdx1;
    if (paramjdx.p()) {
      try {
        jdx2 = paramjdx.a();
        jdx1 = jdx2;
      } catch (CloneNotSupportedException cloneNotSupportedException) {
        Log.e("Error", cloneNotSupportedException.getMessage());
      } 
      jdx1.a(jdk.APLICAR);
      jic.k(paramjic).addView((View)a(jdx1));
      jdx2 = jdx1;
    } 
    jdx1 = jdx2;
    if (paramjdx.q()) {
      try {
        jdx1 = paramjdx.a();
      } catch (CloneNotSupportedException cloneNotSupportedException) {
        Log.e("Error", cloneNotSupportedException.getMessage());
        jdx1 = jdx2;
      } 
      jdx1.a(jdk.CANCELAR);
      jic.k(paramjic).addView((View)a(jdx1));
    } 
    jdx2 = jdx1;
    if (paramjdx.s()) {
      try {
        jdx2 = paramjdx.a();
        jdx1 = jdx2;
      } catch (CloneNotSupportedException cloneNotSupportedException) {
        Log.e("Error", cloneNotSupportedException.getMessage());
      } 
      jdx1.a(jdk.EXTRATO);
      jic.k(paramjic).addView((View)a(jdx1));
      jdx2 = jdx1;
    } 
    if (paramjdx.r()) {
      jdx jdx3;
      try {
        paramjdx = paramjdx.a();
      } catch (CloneNotSupportedException cloneNotSupportedException) {
        Log.e("Error", cloneNotSupportedException.getMessage());
        jdx3 = jdx2;
      } 
      jdx3.a(jdk.REAPLICAR);
      jic.k(paramjic).addView((View)a(jdx3));
    } 
  }
  
  public void a() {
    this.b.clear();
    notifyDataSetChanged();
  }
  
  public Object getChild(int paramInt1, int paramInt2) {
    return ((jdl)this.b.get(paramInt1)).d().get(paramInt2);
  }
  
  public long getChildId(int paramInt1, int paramInt2) {
    return paramInt2;
  }
  
  public View getChildView(int paramInt1, int paramInt2, boolean paramBoolean, View paramView, ViewGroup paramViewGroup) {
    jic jic;
    String str;
    if (paramView == null) {
      paramView = ((LayoutInflater)this.a.getSystemService("layout_inflater")).inflate(2130969344, null);
      jic = new jic(null);
      jic.a(jic, (LinearLayout)paramView.findViewById(2131759024));
      jic.a(jic, (TextView)paramView.findViewById(2131759025));
      jic.b(jic, (LinearLayout)paramView.findViewById(2131757572));
      jic.b(jic, (TextView)paramView.findViewById(2131759026));
      jic.c(jic, (LinearLayout)paramView.findViewById(2131759030));
      jic.c(jic, (TextView)paramView.findViewById(2131759031));
      jic.d(jic, (TextView)paramView.findViewById(2131756191));
      jic.e(jic, (TextView)paramView.findViewById(2131758129));
      jic.f(jic, (TextView)paramView.findViewById(2131759028));
      jic.g(jic, (TextView)paramView.findViewById(2131759029));
      jic.h(jic, (TextView)paramView.findViewById(2131759027));
      jic.d(jic, (LinearLayout)paramView.findViewById(2131759032));
      paramView.setTag(jic);
    } else {
      jic = (jic)paramView.getTag();
    } 
    jdx jdx = ((jdl)this.b.get(paramInt1)).d().get(paramInt2);
    jic.a(jic).setText(jdx.M());
    jic.b(jic).setText(naj.K(jdx.N()));
    jic.c(jic).setText(naj.L(jdx.C()));
    jic.d(jic).setText(jdx.h());
    switch (jib.a[this.d.ordinal()]) {
      default:
        a(jdx, jic);
        paramView.setOnClickListener(new jhx(this, jic, paramInt1, paramInt2));
        return paramView;
      case 1:
        jdx.f(true);
        jdx.c(true);
        jic.e(jic).setVisibility(0);
        jic.f(jic).setText(naj.f(jdx.X()));
        jic.g(jic).setVisibility(0);
        jic.h(jic).setText(naj.f(jdx.Y()));
        jic.i(jic).setText("Aplicação mínima adicional");
        textView = jic.j(jic);
        if (jdx.u().equalsIgnoreCase("NAO DISPONIVEL")) {
          str = "Não se aplica";
        } else {
          str = naj.f(jdx.u());
        } 
        textView.setText(str);
      case 2:
        break;
    } 
    jdx.d(true);
    jic.e(jic).setVisibility(8);
    jic.g(jic).setVisibility(8);
    jic.i(jic).setText("Aplicação mínima");
    TextView textView = jic.j(jic);
    if (jdx.v().equalsIgnoreCase("NAO DISPONIVEL")) {
      str = "Não se aplica";
    } else {
      str = naj.f(jdx.v());
    } 
    textView.setText(str);
  }
  
  public int getChildrenCount(int paramInt) {
    return ((jdl)this.b.get(paramInt)).d().size();
  }
  
  public Object getGroup(int paramInt) {
    return this.b.get(paramInt);
  }
  
  public int getGroupCount() {
    return this.b.size();
  }
  
  public long getGroupId(int paramInt) {
    return paramInt;
  }
  
  public View getGroupView(int paramInt, boolean paramBoolean, View paramView, ViewGroup paramViewGroup) {
    if (paramView == null) {
      paramView = ((LayoutInflater)this.a.getSystemService("layout_inflater")).inflate(2130969340, null);
      jid jid1 = new jid(null);
      jid.a(jid1, (TextView)paramView.findViewById(2131755821));
      jid.a(jid1, (ImageButton)paramView.findViewById(2131759015));
      paramView.setTag(jid1);
      jdl jdl1 = this.b.get(paramInt);
      jid.a(jid1).setText(jdl1.b());
      jid.b(jid1).setOnClickListener(new jhz(this, paramInt));
      ((ExpandableListView)paramViewGroup).expandGroup(paramInt);
      paramView.setOnClickListener(new jia(this, paramInt));
      return paramView;
    } 
    jid jid = (jid)paramView.getTag();
    jdl jdl = this.b.get(paramInt);
    jid.a(jid).setText(jdl.b());
    jid.b(jid).setOnClickListener(new jhz(this, paramInt));
    ((ExpandableListView)paramViewGroup).expandGroup(paramInt);
    paramView.setOnClickListener(new jia(this, paramInt));
    return paramView;
  }
  
  public boolean hasStableIds() {
    return false;
  }
  
  public boolean isChildSelectable(int paramInt1, int paramInt2) {
    return true;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jhw.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */