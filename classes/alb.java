import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Random;

public class alb {
  public static bfu a;
  
  public static Uri b;
  
  private static Context c;
  
  private static alh d = new alh();
  
  private static Random e = new Random();
  
  private static int f = 0;
  
  private static int g = 99999999;
  
  static {
    a = bfz.a();
  }
  
  private static aky a(String paramString1, String paramString2) {
    ContentValues contentValues = new ContentValues();
    contentValues.put("_id", paramString1);
    contentValues.put("content", paramString2);
    c.getContentResolver().insert(b, contentValues);
    aky aky = new aky();
    aky.a(Long.valueOf(paramString1));
    return aky;
  }
  
  public static String a(Context paramContext, String paramString) {
    int i = e.nextInt(g - f);
    int j = f;
    Map map = ale.a(paramContext);
    ali ali = new ali();
    for (Map.Entry entry : map.entrySet()) {
      if (!((String)entry.getKey()).contains("0fk")) {
        aky aky = i((String)entry.getKey());
        if (aky != null)
          entry.setValue(aky.b()); 
      } 
      bfx bfx = new bfx();
      bfx.a((String)entry.getValue());
      bgb bgb = new bgb();
      a.a(bfx, bgb);
      if (a.a(c, bfx, paramString, ali.a(), ali.b()) == 0 && a.a(c, bfx, paramString, ali.a()) == 0)
        return ali.a().toString(); 
    } 
    return String.valueOf(i + j);
  }
  
  public static StringBuffer a(String paramString) {
    StringBuffer stringBuffer = new StringBuffer();
    int i = -1;
    if (paramString.contains("0fk")) {
      stringBuffer.append(f());
      return stringBuffer;
    } 
    aky aky = i(paramString);
    if (aky != null) {
      bfx bfx = new bfx(aky.b());
      i = a.a(c, bfx, stringBuffer);
    } 
    return (i != 0) ? (new StringBuffer("ErrD")).append(i) : stringBuffer;
  }
  
  public static void a(Context paramContext, Uri paramUri, ala paramala) {
    HashMap<Object, Object> hashMap;
    ArrayList<String> arrayList;
    c = paramContext;
    b = paramUri;
    try {
      int i = a.a(h("E831FB039F958F1BC6EB57E038A29945368F67824097E6075010CD576EDCE0AC"), paramContext);
      if (i != 0)
        d.a(new alg(Boolean.valueOf(true), "Outros_Init", String.valueOf(i), null)); 
      arrayList = new ArrayList();
      Iterator<aky> iterator = e().iterator();
      while (iterator.hasNext())
        arrayList.add(((aky)iterator.next()).b()); 
    } catch (Exception exception) {
      d.b("onIllegalArgument");
      d.a("Não foi possível iniciar: dados inválidos.");
      hashMap = new HashMap<Object, Object>();
      hashMap.put("log", "Não foi possível iniciar: dados inválidos.");
      d.a(new alg(Boolean.valueOf(false), "Outros_ErrInit", "catch", hashMap));
      paramala.a(d);
      return;
    } 
    a.a((Context)hashMap, arrayList, new alf(paramala, (Context)hashMap));
  }
  
  public static boolean a() {
    return a.a(c);
  }
  
  public static Boolean b(String paramString) {
    Boolean bool2 = Boolean.valueOf(false);
    Boolean bool1 = bool2;
    if (paramString != null) {
      bool1 = bool2;
      if (!paramString.isEmpty()) {
        bool1 = bool2;
        if (i(paramString) != null)
          bool1 = Boolean.valueOf(true); 
      } 
    } 
    return bool1;
  }
  
  public static boolean b() {
    return a.b(c);
  }
  
  public static int c() {
    return c.getContentResolver().delete(b, null, null);
  }
  
  public static void c(String paramString) {
    c.getContentResolver().delete(b, paramString, null);
  }
  
  public static long d(String paramString) {
    bgc bgc = new bgc(0.0F);
    bfx bfx = new bfx(i(paramString).b());
    int i = a.a(bfx, bgc);
    return (i != 0) ? i : (30000 - (int)bgc.a() * 30 / 100 * 1000);
  }
  
  private static List e() {
    ArrayList<aky> arrayList = new ArrayList();
    Cursor cursor = c.getContentResolver().query(b, null, null, null, null);
    if (cursor == null)
      return arrayList; 
    cursor.moveToFirst();
    if (cursor.getCount() > 0)
      while (!cursor.isAfterLast()) {
        arrayList.add(akx.a(cursor));
        cursor.moveToNext();
      }  
    cursor.close();
    return arrayList;
  }
  
  public static boolean e(String paramString) {
    return !a(paramString).toString().contains("ErrD");
  }
  
  private static int f() {
    return (new Random()).nextInt(900000) + 100000;
  }
  
  private static void g(String paramString) {
    d.a(paramString);
    if (b() || a()) {
      if (b())
        d.b("loginRoot"); 
      if (a())
        d.b("loginEmu"); 
    } else {
      d.b("loginDatablink");
    } 
    HashMap<Object, Object> hashMap = new HashMap<Object, Object>();
    hashMap.put("erro", paramString);
    d.a(new alg(Boolean.valueOf(false), "Erros ID Santander", "Inicialização da Biblioteca", hashMap));
  }
  
  private static byte[] h(String paramString) {
    ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
    ald ald = new ald();
    try {
      ald.a(paramString, byteArrayOutputStream);
      return byteArrayOutputStream.toByteArray();
    } catch (IOException iOException) {
      throw new RuntimeException("exception decoding Hex string: " + iOException);
    } 
  }
  
  private static aky i(String paramString) {
    aky aky;
    String str = null;
    Cursor cursor = c.getContentResolver().query(b, null, paramString, null, null);
    cursor.moveToFirst();
    paramString = str;
    if (cursor.getCount() > 0)
      aky = akx.a(cursor); 
    cursor.close();
    return aky;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\alb.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */