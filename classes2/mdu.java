import java.util.List;

public interface mdu<Item extends mdt> extends mdm<Item> {
  <T extends mdt & mdp<T, S>, S extends mdt & mdx<Item, T>> T a(T paramT, List<S> paramList);
  
  mdu<Item> a(int paramInt1, int paramInt2);
  
  mdu<Item> a(int paramInt, List<Item> paramList);
  
  mdu<Item> a(int paramInt, Item paramItem);
  
  mdu<Item> a(int paramInt, Item... paramVarArgs);
  
  mdu<Item> a(List<Item> paramList);
  
  mdu<Item> a(Item... paramVarArgs);
  
  mdu<Item> b();
  
  mdu<Item> b(List<Item> paramList);
  
  mdu<Item> c(List<Item> paramList);
  
  mdu<Item> d(int paramInt);
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mdu.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */