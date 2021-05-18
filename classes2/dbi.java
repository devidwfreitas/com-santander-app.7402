import com.google.android.gms.common.api.Status;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.WeakHashMap;

public class dbi {
  private final Map<dat<?>, Boolean> a = Collections.synchronizedMap(new WeakHashMap<dat<?>, Boolean>());
  
  private final Map<egw<?>, Boolean> b = Collections.synchronizedMap(new WeakHashMap<egw<?>, Boolean>());
  
  private void a(boolean paramBoolean, Status paramStatus) {
    synchronized (this.a) {
      HashMap<dat<?>, Boolean> hashMap = new HashMap<dat<?>, Boolean>(this.a);
      Map<egw<?>, Boolean> map = this.b;
      /* monitor enter ClassFileLocalVariableReferenceExpression{type=ObjectType{java/util/Map<[ObjectType{egw<Wildcard{?}>}, ObjectType{java/lang/Boolean}]>}, name=null} */
      try {
        null = (Map)new HashMap<Object, Boolean>(this.b);
        /* monitor exit ClassFileLocalVariableReferenceExpression{type=ObjectType{java/util/Map<[ObjectType{egw<Wildcard{?}>}, ObjectType{java/lang/Boolean}]>}, name=null} */
        for (Map.Entry<dat<?>, Boolean> entry : hashMap.entrySet()) {
          if (paramBoolean || ((Boolean)entry.getValue()).booleanValue())
            ((dat)entry.getKey()).c(paramStatus); 
        } 
      } finally {}
    } 
    /* monitor exit ClassFileLocalVariableReferenceExpression{type=InnerObjectType{ObjectType{java/util/Map}.Ljava/util/Map$Entry;<[ObjectType{dat<Wildcard{?}>}, ObjectType{java/lang/Boolean}]>}, name=null} */
    throw paramStatus;
  }
  
  void a(dat<? extends cqg> paramdat, boolean paramBoolean) {
    this.a.put(paramdat, Boolean.valueOf(paramBoolean));
    paramdat.a(new dbj(this, paramdat));
  }
  
  <TResult> void a(egw<TResult> paramegw, boolean paramBoolean) {
    this.b.put(paramegw, Boolean.valueOf(paramBoolean));
    paramegw.a().a(new dbk(this, paramegw));
  }
  
  boolean a() {
    return (!this.a.isEmpty() || !this.b.isEmpty());
  }
  
  public void b() {
    a(false, dcq.a);
  }
  
  public void c() {
    a(true, dem.a);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dbi.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */