import java.lang.reflect.Constructor;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.Collection;
import java.util.EnumSet;
import java.util.Map;
import java.util.Queue;
import java.util.Set;
import java.util.SortedMap;
import java.util.SortedSet;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.ConcurrentNavigableMap;

public final class ela {
  private final Map<Type, ejv<?>> a;
  
  public ela(Map<Type, ejv<?>> paramMap) {
    this.a = paramMap;
  }
  
  private <T> eml<T> a(Class<? super T> paramClass) {
    try {
      Constructor<? super T> constructor = paramClass.getDeclaredConstructor(new Class[0]);
      if (!constructor.isAccessible())
        constructor.setAccessible(true); 
      return new eli(this, constructor);
    } catch (NoSuchMethodException noSuchMethodException) {
      return null;
    } 
  }
  
  private <T> eml<T> a(Type paramType, Class<? super T> paramClass) {
    return (eml<T>)(Collection.class.isAssignableFrom(paramClass) ? (SortedSet.class.isAssignableFrom(paramClass) ? new elj(this) : (EnumSet.class.isAssignableFrom(paramClass) ? new elk(this, paramType) : (Set.class.isAssignableFrom(paramClass) ? new ell(this) : (Queue.class.isAssignableFrom(paramClass) ? new elm(this) : new eln(this))))) : (Map.class.isAssignableFrom(paramClass) ? (ConcurrentNavigableMap.class.isAssignableFrom(paramClass) ? new elo(this) : (ConcurrentMap.class.isAssignableFrom(paramClass) ? new elc(this) : (SortedMap.class.isAssignableFrom(paramClass) ? new eld(this) : ((paramType instanceof ParameterizedType && !String.class.isAssignableFrom(epn.get(((ParameterizedType)paramType).getActualTypeArguments()[0]).getRawType())) ? new ele(this) : new elf(this))))) : null));
  }
  
  private <T> eml<T> b(Type paramType, Class<? super T> paramClass) {
    return new elg(this, paramClass, paramType);
  }
  
  public <T> eml<T> a(epn<T> paramepn) {
    Type type = paramepn.getType();
    Class<?> clazz = paramepn.getRawType();
    ejv ejv = this.a.get(type);
    if (ejv != null)
      return new elb(this, ejv, type); 
    ejv = this.a.get(clazz);
    if (ejv != null)
      return new elh(this, ejv, type); 
    eml<?> eml2 = a(clazz);
    eml<?> eml1 = eml2;
    if (eml2 == null) {
      eml2 = a(type, clazz);
      eml1 = eml2;
      if (eml2 == null)
        return b(type, (Class)clazz); 
    } 
    return (eml)eml1;
  }
  
  public String toString() {
    return this.a.toString();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ela.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */