import android.content.Context;
import android.text.Html;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseExpandableListAdapter;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.santander.app.components.view.SantanderTextView;
import java.util.List;

public class idd extends BaseExpandableListAdapter {
  private LayoutInflater a;
  
  private List<ibu> b;
  
  public idd(Context paramContext, List<ibu> paramList) {
    this.a = LayoutInflater.from(paramContext);
    this.b = paramList;
  }
  
  public Object getChild(int paramInt1, int paramInt2) {
    return ((ibu)this.b.get(paramInt1)).d()[paramInt2];
  }
  
  public long getChildId(int paramInt1, int paramInt2) {
    return 0L;
  }
  
  public View getChildView(int paramInt1, int paramInt2, boolean paramBoolean, View paramView, ViewGroup paramViewGroup) {
    ide ide;
    if (paramView == null) {
      ide ide1 = new ide(this);
      paramView = this.a.inflate(2130968856, paramViewGroup, false);
      ide1.a = (ImageView)paramView.findViewById(2131756467);
      ide1.b = (SantanderTextView)paramView.findViewById(2131756469);
      ide1.c = (SantanderTextView)paramView.findViewById(2131756470);
      ide1.d = (FrameLayout)paramView.findViewById(2131756471);
      paramView.setTag(ide1);
      ide = ide1;
    } else {
      ide = (ide)paramView.getTag();
    } 
    if (paramInt2 >= (((ibu)this.b.get(paramInt1)).c()).length) {
      ide.b.setVisibility(8);
      ide.c.setText(((ibu)this.b.get(paramInt1)).d()[paramInt2]);
      ide.a.setVisibility(8);
    } else {
      ide.b.setVisibility(0);
      ide.b.setText(((ibu)this.b.get(paramInt1)).c()[paramInt2]);
      ide.c.setText(((ibu)this.b.get(paramInt1)).d()[paramInt2]);
      ide.a.setVisibility(0);
    } 
    if (paramBoolean) {
      ide.d.setVisibility(0);
      return paramView;
    } 
    ide.d.setVisibility(8);
    return paramView;
  }
  
  public int getChildrenCount(int paramInt) {
    return (((ibu)this.b.get(paramInt)).d()).length;
  }
  
  public Object getGroup(int paramInt) {
    return this.b.get(paramInt);
  }
  
  public int getGroupCount() {
    return this.b.size();
  }
  
  public long getGroupId(int paramInt) {
    return 0L;
  }
  
  public View getGroupView(int paramInt, boolean paramBoolean, View paramView, ViewGroup paramViewGroup) {
    idf idf;
    if (paramView == null) {
      idf idf1 = new idf(this);
      paramView = this.a.inflate(2130969105, paramViewGroup, false);
      idf1.b = (SantanderTextView)paramView.findViewById(2131757604);
      idf1.c = (SantanderTextView)paramView.findViewById(2131757605);
      idf1.d = (ImageView)paramView.findViewById(2131757603);
      paramView.setTag(idf1);
      idf = idf1;
    } else {
      idf = (idf)paramView.getTag();
    } 
    if ((((ibu)this.b.get(paramInt)).c()).length == 0) {
      idf.c.setVisibility(8);
    } else {
      idf.c.setVisibility(0);
    } 
    if (paramBoolean) {
      idf.d.setImageResource(2130837611);
      idf.a = paramBoolean;
      idf.b.setText(((ibu)this.b.get(paramInt)).a());
      idf.c.setText((CharSequence)Html.fromHtml(((ibu)this.b.get(paramInt)).b()));
      return paramView;
    } 
    idf.d.setImageResource(2130837601);
    idf.a = paramBoolean;
    idf.b.setText(((ibu)this.b.get(paramInt)).a());
    idf.c.setText((CharSequence)Html.fromHtml(((ibu)this.b.get(paramInt)).b()));
    return paramView;
  }
  
  public boolean hasStableIds() {
    return false;
  }
  
  public boolean isChildSelectable(int paramInt1, int paramInt2) {
    return false;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\idd.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */