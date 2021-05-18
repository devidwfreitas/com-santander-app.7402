import android.support.v7.widget.RecyclerView;
import java.util.Iterator;
import java.util.List;

public abstract class mex<Model, Parent extends mef<Model, Parent, VH> & mdp & mdx, VH extends RecyclerView.ViewHolder, SubItem extends mdt & mdx> extends mef<Model, Parent, VH> implements mdp<mex, SubItem>, mdx<mex, Parent> {
  private List<SubItem> a;
  
  private Parent i;
  
  private boolean j = false;
  
  public mex(Model paramModel) {
    super(paramModel);
  }
  
  public mex<Model, Parent, VH, SubItem> a(Parent paramParent) {
    this.i = paramParent;
    return this;
  }
  
  public mex<Model, Parent, VH, SubItem> a(boolean paramBoolean) {
    this.j = paramBoolean;
    return this;
  }
  
  public mex<Model, Parent, VH, SubItem> b(List<SubItem> paramList) {
    this.a = paramList;
    Iterator<SubItem> iterator = paramList.iterator();
    while (iterator.hasNext())
      ((mdx)iterator.next()).a(this); 
    return this;
  }
  
  public boolean e() {
    return (j_() == null);
  }
  
  public boolean f() {
    return this.j;
  }
  
  public Parent g() {
    return this.i;
  }
  
  public boolean i() {
    return true;
  }
  
  public List<SubItem> j_() {
    return this.a;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mex.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */