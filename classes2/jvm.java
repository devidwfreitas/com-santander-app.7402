import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseExpandableListAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import java.util.List;

public class jvm extends BaseExpandableListAdapter {
  private Context a;
  
  private List<jst> b;
  
  public jvm(Context paramContext, List<jst> paramList) {
    this.a = paramContext;
    this.b = paramList;
  }
  
  private String a(gku paramgku) {
    String str2 = paramgku.c();
    String str1 = str2;
    if (paramgku.b() != null) {
      str1 = str2;
      if (paramgku.b().trim().equals("CNPJ/CPF")) {
        if (str2 != null && str2.substring(0, 4).equals("0000"))
          return aes.c(str2.substring(4)); 
      } else {
        return str1;
      } 
    } else {
      return str1;
    } 
    str1 = str2;
    if (str2 != null) {
      str1 = str2;
      if (str2.length() == 15)
        return aes.a(str2); 
    } 
    return str1;
  }
  
  public Object getChild(int paramInt1, int paramInt2) {
    return ((jst)this.b.get(paramInt1)).b().get(paramInt2);
  }
  
  public long getChildId(int paramInt1, int paramInt2) {
    return paramInt2;
  }
  
  public View getChildView(int paramInt1, int paramInt2, boolean paramBoolean, View paramView, ViewGroup paramViewGroup) {
    if (paramView == null) {
      paramView = ((LayoutInflater)this.a.getSystemService("layout_inflater")).inflate(2130969345, null);
      jvo jvo1 = new jvo(null);
      jvo.a(jvo1, (TextView)paramView.findViewById(2131756194));
      jvo.b(jvo1, (TextView)paramView.findViewById(2131759033));
      paramView.setTag(jvo1);
      gku gku1 = ((jst)this.b.get(paramInt1)).b().get(paramInt2);
      jvo.a(jvo1).setText(gku1.b());
      jvo.b(jvo1).setText(a(gku1));
      return paramView;
    } 
    jvo jvo = (jvo)paramView.getTag();
    gku gku = ((jst)this.b.get(paramInt1)).b().get(paramInt2);
    jvo.a(jvo).setText(gku.b());
    jvo.b(jvo).setText(a(gku));
    return paramView;
  }
  
  public int getChildrenCount(int paramInt) {
    return ((jst)this.b.get(paramInt)).b().size();
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
    jvp jvp;
    if (paramView == null) {
      paramView = ((LayoutInflater)this.a.getSystemService("layout_inflater")).inflate(2130969341, paramViewGroup, false);
      jvp = new jvp(null);
      jvp.a(jvp, (TextView)paramView.findViewById(2131755821));
      jvp.a(jvp, (ImageView)paramView.findViewById(2131759016));
      paramView.setTag(jvp);
    } else {
      jvp = (jvp)paramView.getTag();
    } 
    jst jst = this.b.get(paramInt);
    if (paramBoolean) {
      jvp.a(jvp).setImageResource(2130837611);
      jvp.a(jvp, paramBoolean);
      jvp.b(jvp).setText(jst.a());
      return paramView;
    } 
    jvp.a(jvp).setImageResource(2130837601);
    jvp.a(jvp, paramBoolean);
    jvp.b(jvp).setText(jst.a());
    return paramView;
  }
  
  public boolean hasStableIds() {
    return false;
  }
  
  public boolean isChildSelectable(int paramInt1, int paramInt2) {
    return true;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jvm.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */