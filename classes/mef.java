import android.support.v7.widget.RecyclerView;

public abstract class mef<Model, Item extends mef<?, ?, ?>, VH extends RecyclerView.ViewHolder> extends mee<Item, VH> implements mdq<Model, Item, VH> {
  private Model a;
  
  public mef(Model paramModel) {
    this.a = paramModel;
  }
  
  public Model a() {
    return this.a;
  }
  
  @Deprecated
  public mef<?, ?, ?> d(Model paramModel) {
    return e(paramModel);
  }
  
  public mef<?, ?, ?> e(Model paramModel) {
    this.a = paramModel;
    return this;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\mef.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */