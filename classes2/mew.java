import android.support.v7.widget.RecyclerView;
import java.util.Iterator;
import java.util.List;

public abstract class mew<Parent extends mdt & mdp & mdx & mdn, VH extends RecyclerView.ViewHolder, SubItem extends mdt & mdx> extends mee<Parent, VH> implements mdp<mew, SubItem>, mdx<mew, Parent> {
  private List<SubItem> a;
  
  private Parent i;
  
  private boolean j = false;
  
  public mew<Parent, VH, SubItem> b(List<SubItem> paramList) {
    this.a = paramList;
    Iterator<SubItem> iterator = paramList.iterator();
    while (iterator.hasNext())
      ((mdx)iterator.next()).a(this); 
    return this;
  }
  
  public mew<Parent, VH, SubItem> b(Parent paramParent) {
    this.i = paramParent;
    return this;
  }
  
  public boolean e() {
    return (j_() == null);
  }
  
  public boolean f() {
    return this.j;
  }
  
  public boolean i() {
    return true;
  }
  
  public List<SubItem> j_() {
    return this.a;
  }
  
  public Parent k_() {
    return this.i;
  }
  
  public mew<Parent, VH, SubItem> n(boolean paramBoolean) {
    this.j = paramBoolean;
    return this;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mew.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */