import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseExpandableListAdapter;
import android.widget.TextView;
import java.text.NumberFormat;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;

public class ua extends BaseExpandableListAdapter {
  public HashMap<String, List<to>> a;
  
  private Context b;
  
  private List<String> c;
  
  public ua(Context paramContext, List<String> paramList, HashMap<String, List<to>> paramHashMap) {
    this.b = paramContext;
    this.c = paramList;
    this.a = paramHashMap;
  }
  
  public String a(double paramDouble) {
    return NumberFormat.getCurrencyInstance(new Locale("pt", "BR")).format(paramDouble).replace("R$", "");
  }
  
  public Object getChild(int paramInt1, int paramInt2) {
    return ((List)this.a.get(this.c.get(paramInt1))).get(paramInt2);
  }
  
  public long getChildId(int paramInt1, int paramInt2) {
    return paramInt2;
  }
  
  public View getChildView(int paramInt1, int paramInt2, boolean paramBoolean, View paramView, ViewGroup paramViewGroup) {
    to to = (to)getChild(paramInt1, paramInt2);
    View view1 = paramView;
    if (paramView == null)
      view1 = ((LayoutInflater)this.b.getSystemService("layout_inflater")).inflate(lc.layout_card_produtos_children, null); 
    TextView textView1 = (TextView)view1.findViewById(la.portifolio_produtos_filho_nome);
    TextView textView2 = (TextView)view1.findViewById(la.portifolio_produtos_filho_valor);
    View view2 = view1.findViewById(la.portifolio_produtos_filho_divider);
    textView1.setText(to.k());
    textView2.setText("R$ " + a(to.s().b().doubleValue()));
    if (paramBoolean)
      view2.setVisibility(8); 
    return view1;
  }
  
  public int getChildrenCount(int paramInt) {
    return ((List)this.a.get(this.c.get(paramInt))).size();
  }
  
  public Object getGroup(int paramInt) {
    return this.c.get(paramInt);
  }
  
  public int getGroupCount() {
    return this.c.size();
  }
  
  public long getGroupId(int paramInt) {
    return paramInt;
  }
  
  public View getGroupView(int paramInt, boolean paramBoolean, View paramView, ViewGroup paramViewGroup) {
    View view = paramView;
    if (paramView == null)
      view = ((LayoutInflater)this.b.getSystemService("layout_inflater")).inflate(lc.layout_card_produtos_title, null); 
    return view;
  }
  
  public boolean hasStableIds() {
    return false;
  }
  
  public boolean isChildSelectable(int paramInt1, int paramInt2) {
    return true;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar\\ua.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */