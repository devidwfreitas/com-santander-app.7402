import java.lang.reflect.Field;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

public final class enl implements ekp {
  private final ela a;
  
  private final ejl b;
  
  private final elp c;
  
  private final enb d;
  
  public enl(ela paramela, ejl paramejl, elp paramelp, enb paramenb) {
    this.a = paramela;
    this.b = paramejl;
    this.c = paramelp;
    this.d = paramenb;
  }
  
  private eno a(ejm paramejm, Field paramField, String paramString, epn<?> paramepn, boolean paramBoolean1, boolean paramBoolean2) {
    boolean bool;
    boolean bool1 = emm.a(paramepn.getRawType());
    ekr ekr = paramField.<ekr>getAnnotation(ekr.class);
    ekn<?> ekn1 = null;
    if (ekr != null)
      ekn1 = this.d.a(this.a, paramejm, paramepn, ekr); 
    if (ekn1 != null) {
      bool = true;
    } else {
      bool = false;
    } 
    ekn<?> ekn2 = ekn1;
    if (ekn1 == null)
      ekn2 = paramejm.a(paramepn); 
    return new enm(this, paramString, paramBoolean1, paramBoolean2, paramField, bool, ekn2, paramejm, paramepn, bool1);
  }
  
  private List<String> a(Field paramField) {
    eks eks = paramField.<eks>getAnnotation(eks.class);
    if (eks == null)
      return Collections.singletonList(this.b.translateName(paramField)); 
    String str = eks.a();
    String[] arrayOfString = eks.b();
    if (arrayOfString.length == 0)
      return Collections.singletonList(str); 
    ArrayList<String> arrayList = new ArrayList(arrayOfString.length + 1);
    arrayList.add(str);
    int j = arrayOfString.length;
    int i = 0;
    while (true) {
      ArrayList<String> arrayList1 = arrayList;
      if (i < j) {
        arrayList.add(arrayOfString[i]);
        i++;
        continue;
      } 
      return arrayList1;
    } 
  }
  
  private Map<String, eno> a(ejm paramejm, epn<?> paramepn, Class<?> paramClass) {
    LinkedHashMap<Object, Object> linkedHashMap = new LinkedHashMap<Object, Object>();
    if (paramClass.isInterface())
      return (Map)linkedHashMap; 
    Type type = paramepn.getType();
    Class<?> clazz = paramClass;
    epn<?> epn1 = paramepn;
    while (clazz != Object.class) {
      for (Field field : clazz.getDeclaredFields()) {
        boolean bool1 = a(field, true);
        boolean bool2 = a(field, false);
        if (bool1 || bool2) {
          eno eno;
          field.setAccessible(true);
          Type type1 = ekw.a(epn1.getType(), clazz, field.getGenericType());
          List<String> list = a(field);
          paramepn = null;
          int i;
          for (i = 0; i < list.size(); i++) {
            String str = list.get(i);
            if (i != 0)
              bool1 = false; 
            eno eno1 = (eno)linkedHashMap.put(str, a(paramejm, field, str, epn.get(type1), bool1, bool2));
            if (paramepn == null)
              eno = eno1; 
          } 
          if (eno != null)
            throw new IllegalArgumentException(type + " declares multiple JSON fields named " + eno.h); 
        } 
      } 
      epn1 = epn.get(ekw.a(epn1.getType(), clazz, clazz.getGenericSuperclass()));
      clazz = epn1.getRawType();
    } 
    return (Map)linkedHashMap;
  }
  
  static boolean a(Field paramField, boolean paramBoolean, elp paramelp) {
    return (!paramelp.a(paramField.getType(), paramBoolean) && !paramelp.a(paramField, paramBoolean));
  }
  
  public <T> ekn<T> a(ejm paramejm, epn<T> paramepn) {
    Class<?> clazz = paramepn.getRawType();
    return !Object.class.isAssignableFrom(clazz) ? null : new enn<T>(this.a.a(paramepn), a(paramejm, paramepn, clazz));
  }
  
  public boolean a(Field paramField, boolean paramBoolean) {
    return a(paramField, paramBoolean, this.c);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\enl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */