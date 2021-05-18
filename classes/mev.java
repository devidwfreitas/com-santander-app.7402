import java.util.List;

public class mev<Model, Item extends mdq<Model, Item, ?>> extends mda<Item> {
  private final mea<Model, Item> c;
  
  public mev(mer<Model, Item> parammer) {
    this.c = (mea)new mea<Model, mdq<? extends Model, ?, ?>>(parammer);
    this.c.a(this);
  }
  
  public mev<Model, Item> a(int paramInt, List<Model> paramList) {
    this.c.b(paramInt, paramList);
    return this;
  }
  
  @SafeVarargs
  public final mev<Model, Item> a(int paramInt, Model... paramVarArgs) {
    this.c.a(paramInt, paramVarArgs);
    return this;
  }
  
  public mev<Model, Item> a(List<Model> paramList) {
    this.c.d(paramList);
    return this;
  }
  
  @SafeVarargs
  public final mev<Model, Item> a(Model... paramVarArgs) {
    this.c.a(paramVarArgs);
    return this;
  }
  
  public mev<Model, Item> b(int paramInt, Model paramModel) {
    this.c.a(paramInt, paramModel);
    return this;
  }
  
  public mev<Model, Item> b(List<Model> paramList) {
    this.c.e(paramList);
    return this;
  }
  
  public mev<Model, Item> c(List<Model> paramList) {
    this.c.f(paramList);
    return this;
  }
  
  public mev<Model, Item> g(int paramInt1, int paramInt2) {
    this.c.b(paramInt1, paramInt2);
    return this;
  }
  
  public mev<Model, Item> h(int paramInt1, int paramInt2) {
    this.c.c(paramInt1, paramInt2);
    return this;
  }
  
  public mea<Model, Item> p() {
    return this.c;
  }
  
  public List<Model> q() {
    return this.c.f();
  }
  
  public mev<Model, Item> q(int paramInt) {
    this.c.e(paramInt);
    return this;
  }
  
  public mev<Model, Item> r() {
    this.c.g();
    return this;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\mev.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */