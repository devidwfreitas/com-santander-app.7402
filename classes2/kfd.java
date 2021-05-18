import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseExpandableListAdapter;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;

public class kfd extends BaseExpandableListAdapter {
  private LayoutInflater a;
  
  private kcy b;
  
  private Context c;
  
  private kdg d;
  
  public kfd(Context paramContext) {
    this.a = LayoutInflater.from(paramContext);
    this.c = paramContext;
  }
  
  public kfd(Context paramContext, kcy paramkcy) {
    this.a = LayoutInflater.from(paramContext);
    this.b = paramkcy;
    this.c = paramContext;
  }
  
  private View.OnClickListener a(int paramInt1, int paramInt2) {
    return new kfe(this, paramInt1, paramInt2);
  }
  
  private View.OnClickListener b(int paramInt1, int paramInt2) {
    return new kff(this, paramInt1, paramInt2);
  }
  
  public Object getChild(int paramInt1, int paramInt2) {
    return ((kdf)this.b.a().get(paramInt1)).c().get(paramInt2);
  }
  
  public long getChildId(int paramInt1, int paramInt2) {
    return paramInt2;
  }
  
  public View getChildView(int paramInt1, int paramInt2, boolean paramBoolean, View paramView, ViewGroup paramViewGroup) {
    kfg kfg;
    if (paramView == null) {
      paramView = this.a.inflate(2130968777, null);
      kfg = new kfg(null);
      kfg.a(kfg, (TextView)paramView.findViewById(2131756167));
      kfg.b(kfg, (TextView)paramView.findViewById(2131755265));
      kfg.c(kfg, (TextView)paramView.findViewById(2131756170));
      kfg.a(kfg, (Button)paramView.findViewById(2131756172));
      kfg.b(kfg, (Button)paramView.findViewById(2131756173));
      kfg.a(kfg, (LinearLayout)paramView.findViewById(2131756174));
      paramView.setTag(kfg);
    } else {
      kfg = (kfg)paramView.getTag();
    } 
    kdh kdh = ((kdf)this.b.a().get(paramInt1)).c().get(paramInt2);
    if (kdh.f() != null) {
      kfg.a(kfg).setText(kdh.f());
    } else {
      kfg.a(kfg).setText("");
    } 
    if (kdh.g() != null) {
      kfg.b(kfg).setText(kdh.g());
    } else {
      kfg.b(kfg).setText("");
    } 
    if (kdh.h() != null) {
      kfg.c(kfg).setText(kdh.h());
    } else {
      kfg.c(kfg).setText("");
    } 
    if (paramBoolean) {
      kfg.d(kfg).setVisibility(4);
    } else {
      kfg.d(kfg).setVisibility(0);
    } 
    if (miq.C().b()) {
      kfg.e(kfg).setEnabled(false);
      kfg.e(kfg).setOnClickListener(a(paramInt1, paramInt2));
      kfg.f(kfg).setOnClickListener(b(paramInt1, paramInt2));
      return paramView;
    } 
    kfg.e(kfg).setEnabled(true);
    kfg.e(kfg).setOnClickListener(a(paramInt1, paramInt2));
    kfg.f(kfg).setOnClickListener(b(paramInt1, paramInt2));
    return paramView;
  }
  
  public int getChildrenCount(int paramInt) {
    return ((kdf)this.b.a().get(paramInt)).c().size();
  }
  
  public Object getGroup(int paramInt) {
    return this.b.a().get(paramInt);
  }
  
  public int getGroupCount() {
    return this.b.a().size();
  }
  
  public long getGroupId(int paramInt) {
    return paramInt;
  }
  
  public View getGroupView(int paramInt, boolean paramBoolean, View paramView, ViewGroup paramViewGroup) {
    kfh kfh;
    if (paramView == null) {
      paramView = this.a.inflate(2130968774, null);
      kfh = new kfh(null);
      kfh.a(kfh, (TextView)paramView.findViewById(2131756156));
      kfh.b(kfh, (TextView)paramView.findViewById(2131756157));
      paramView.setTag(kfh);
    } else {
      kfh = (kfh)paramView.getTag();
    } 
    kdf kdf = this.b.a().get(paramInt);
    if (kdf.a() != null) {
      kfh.a(kfh).setText(kdf.a());
    } else {
      kfh.a(kfh).setText("");
    } 
    if (kdf.b() != null) {
      kfh.b(kfh).setText(kdf.b());
      paramView.setOnClickListener(null);
      return paramView;
    } 
    kfh.b(kfh).setText("");
    paramView.setOnClickListener(null);
    return paramView;
  }
  
  public boolean hasStableIds() {
    return false;
  }
  
  public boolean isChildSelectable(int paramInt1, int paramInt2) {
    return false;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\kfd.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */