import android.os.Handler;
import com.facebook.GraphRequest;
import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;

public class biu extends AbstractList<GraphRequest> {
  private static AtomicInteger a = new AtomicInteger();
  
  private Handler b;
  
  private List<GraphRequest> c = new ArrayList<GraphRequest>();
  
  private int d = 0;
  
  private final String e = Integer.valueOf(a.incrementAndGet()).toString();
  
  private List<biv> f = new ArrayList<biv>();
  
  private String g;
  
  public biu() {
    this.c = new ArrayList<GraphRequest>();
  }
  
  public biu(biu parambiu) {
    this.c = new ArrayList<GraphRequest>(parambiu);
    this.b = parambiu.b;
    this.d = parambiu.d;
    this.f = new ArrayList<biv>(parambiu.f);
  }
  
  public biu(Collection<GraphRequest> paramCollection) {
    this.c = new ArrayList<GraphRequest>(paramCollection);
  }
  
  public biu(GraphRequest... paramVarArgs) {
    this.c = Arrays.asList(paramVarArgs);
  }
  
  public int a() {
    return this.d;
  }
  
  public void a(int paramInt) {
    if (paramInt < 0)
      throw new IllegalArgumentException("Argument timeoutInMilliseconds must be >= 0."); 
    this.d = paramInt;
  }
  
  public final void a(int paramInt, GraphRequest paramGraphRequest) {
    this.c.add(paramInt, paramGraphRequest);
  }
  
  public final void a(Handler paramHandler) {
    this.b = paramHandler;
  }
  
  public void a(biv parambiv) {
    if (!this.f.contains(parambiv))
      this.f.add(parambiv); 
  }
  
  public final void a(String paramString) {
    this.g = paramString;
  }
  
  public final boolean a(GraphRequest paramGraphRequest) {
    return this.c.add(paramGraphRequest);
  }
  
  public final GraphRequest b(int paramInt) {
    return this.c.get(paramInt);
  }
  
  public final GraphRequest b(int paramInt, GraphRequest paramGraphRequest) {
    return this.c.set(paramInt, paramGraphRequest);
  }
  
  public final String b() {
    return this.e;
  }
  
  public void b(biv parambiv) {
    this.f.remove(parambiv);
  }
  
  public final Handler c() {
    return this.b;
  }
  
  public final GraphRequest c(int paramInt) {
    return this.c.remove(paramInt);
  }
  
  public final void clear() {
    this.c.clear();
  }
  
  public final List<GraphRequest> d() {
    return this.c;
  }
  
  public final List<biv> e() {
    return this.f;
  }
  
  public final String f() {
    return this.g;
  }
  
  public final List<bix> g() {
    return i();
  }
  
  public final bit h() {
    return j();
  }
  
  List<bix> i() {
    return GraphRequest.b(this);
  }
  
  bit j() {
    return GraphRequest.c(this);
  }
  
  public final int size() {
    return this.c.size();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\biu.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */