import java.lang.annotation.Annotation;
import java.lang.reflect.Field;
import java.lang.reflect.Type;
import java.util.Arrays;
import java.util.Collection;

public final class eje {
  private final Field a;
  
  public eje(Field paramField) {
    ekv.a(paramField);
    this.a = paramField;
  }
  
  public Class<?> a() {
    return this.a.getDeclaringClass();
  }
  
  Object a(Object paramObject) {
    return this.a.get(paramObject);
  }
  
  public <T extends Annotation> T a(Class<T> paramClass) {
    return this.a.getAnnotation(paramClass);
  }
  
  public boolean a(int paramInt) {
    return ((this.a.getModifiers() & paramInt) != 0);
  }
  
  public String b() {
    return this.a.getName();
  }
  
  public Type c() {
    return this.a.getGenericType();
  }
  
  public Class<?> d() {
    return this.a.getType();
  }
  
  public Collection<Annotation> e() {
    return Arrays.asList(this.a.getAnnotations());
  }
  
  boolean f() {
    return this.a.isSynthetic();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\eje.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */