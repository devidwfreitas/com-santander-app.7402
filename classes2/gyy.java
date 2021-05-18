import android.content.Context;
import android.util.Log;
import com.santander.app.MinhaConta;
import java.util.List;
import java.util.Vector;

public class gyy {
  public static boolean a = false;
  
  private static gyx b;
  
  public static gzs a(List<gyv> paramList, gzs paramgzs, String paramString) {
    int i = 0;
    while (true) {
      if (i < paramList.size()) {
        bfx bfx = new bfx();
        bfx.a(((gyv)paramList.get(i)).b());
        if (alb.a.a(MinhaConta.b(), bfx, paramString, paramgzs.a()) != 0) {
          i++;
          continue;
        } 
      } 
      return paramgzs;
    } 
  }
  
  public static gzs a(List<gyv> paramList, String paramString) {
    gzs gzs = new gzs();
    for (int i = 0; i < paramList.size(); i++) {
      bfx bfx = new bfx();
      bfx.a(((gyv)paramList.get(i)).b());
      gzs = new gzs();
      StringBuffer stringBuffer = new StringBuffer();
      bgb bgb = new bgb();
      alb.a.a(bfx, bgb);
      Log.i("SEED_SERIAL", bgb.e());
      if (alb.a.a(MinhaConta.b(), bfx, paramString, stringBuffer, gzs.b()) == 0)
        return gzs; 
    } 
    return gzs;
  }
  
  public static List<gyv> a(Context paramContext, String paramString) {
    gyu gyu = new gyu(paramContext);
    gyu.a();
    List<gyv> list = gyu.c();
    for (int i = 0; i < list.size(); i++) {
      if (!nag.b(((gyv)list.get(i)).c()).equals(nai.c(paramString)))
        list.remove(i); 
    } 
    gyu.close();
    return list;
  }
  
  public static void a(Context paramContext, gyv paramgyv) {
    gyu gyu = new gyu(paramContext);
    gyu.a();
    gyu.a(paramgyv);
    gyu.close();
  }
  
  public static void a(Context paramContext, gyx paramgyx, String paramString, gzr paramgzr) {
    String str1;
    String str2;
    bfx bfx;
    gyx gyx1;
    String str4;
    if (!a) {
      a = true;
      try {
        b = paramgyx;
        bfx = new bfx();
        gzs gzs = new gzs();
        alb.a.a(bfx);
        gzs.b().add(miq.C().k().e());
        int i = alb.a.a(bfx, gzs.b(), gzs.a());
        if (i == 0) {
          Vector<String> vector;
          String str;
          gyx1 = b;
          switch (gzc.a[paramgzr.ordinal()]) {
            case 1:
              (new gzy(new gyz(bfx, paramContext, paramgzr, gyx1))).d(gzs.a().toString());
              return;
            case 2:
              vector = new Vector();
              alb.a.d(paramString, vector);
              str4 = gzs.a().toString();
              if (vector.size() >= 4) {
                str1 = vector.get(1);
              } else {
                str1 = "";
              } 
              if (vector.size() >= 4) {
                paramString = vector.get(2);
              } else {
                paramString = "";
              } 
              if (vector.size() >= 4) {
                str2 = vector.get(0);
              } else {
                str2 = "";
              } 
              if (vector.size() >= 4) {
                str = vector.get(3);
              } else {
                break;
              } 
              (new gzy(new gzd(bfx, paramContext, paramgzr, gyx1))).a(str4, str1, paramString, str2, str);
              return;
            default:
              (new gzy(new gze(bfx, paramContext, paramgzr, gyx1))).a(str1.a().toString());
              return;
          } 
        } else {
          a = false;
          b.a("d" + i);
          return;
        } 
      } catch (Exception exception) {
        a = false;
        Log.e("Error", exception.getMessage());
        return;
      } 
    } else {
      return;
    } 
    String str3 = "";
    (new gzy(new gzd(bfx, (Context)exception, paramgzr, gyx1))).a(str4, str1, paramString, str2, str3);
  }
  
  public static void a(Context paramContext, String paramString, gyx<String> paramgyx) {
    gzs gzs = new gzs();
    gyu gyu = new gyu(paramContext);
    gyu.a();
    gyv gyv = gyu.a(Long.valueOf(paramString));
    gyu.close();
    bfx bfx = new bfx(gyv.b());
    int i = alb.a.b(bfx, gzs.b(), gzs.a());
    if (i == 0) {
      (new gzy(new gza(bfx, paramContext, gyv, paramgyx, gzs))).a();
      return;
    } 
    paramgyx.a("d" + i);
  }
  
  public static void a(Context paramContext, String paramString1, String paramString2) {
    gyu gyu = new gyu(paramContext);
    gyu.a();
    gyv gyv = gyu.a(Long.valueOf(paramString1));
    if (gyv.c() != null && !gyv.c().isEmpty()) {
      gyu.close();
      return;
    } 
    gyu.a(paramString1, nag.a(nai.c(paramString2)));
    gyu.close();
  }
  
  private static void a(bfx parambfx, String paramString1, Context paramContext, String paramString2, gzr paramgzr) {
    if (!a) {
      int i;
      a = true;
      try {
        i = alb.a.a(parambfx, paramString1);
        if (i == 0) {
          gyx gyx1 = b;
          switch (gzc.a[paramgzr.ordinal()]) {
            case 1:
              a = false;
              b(paramContext, paramString2, parambfx, gyx1, "0", paramgzr);
              return;
            case 2:
              (new gzy(new gzi(paramContext, paramString2, parambfx, gyx1, paramgzr))).g(paramString2);
              return;
          } 
          (new gzy(new gzj(paramContext, paramString2, parambfx, gyx1, paramgzr))).c(paramString2);
          return;
        } 
      } catch (bfy bfy) {
        a = false;
        Log.e("Error", bfy.getMessage());
        return;
      } 
      a = false;
      b.a("d" + i);
      return;
    } 
  }
  
  private static void a(bfx parambfx, String paramString, Context paramContext, Vector<String> paramVector, gzr paramgzr) {
    if (!a) {
      int i;
      a = true;
      gzs gzs = new gzs();
      gzs.b().add(paramVector.get(1));
      String str = paramVector.get(2);
      try {
        i = alb.a.a(parambfx, paramString, gzs.b(), gzs.a());
        if (i == 0) {
          gyx gyx1 = b;
          switch (gzc.a[paramgzr.ordinal()]) {
            case 1:
              (new gzy(new gzf(parambfx, paramContext, str, paramgzr, gyx1))).e(gzs.a().toString());
              return;
            case 2:
              (new gzy(new gzg(parambfx, paramContext, str, paramgzr, gyx1))).f(gzs.a().toString());
              return;
          } 
          (new gzy(new gzh(parambfx, paramContext, str, paramgzr, gyx1))).b(gzs.a().toString());
          return;
        } 
      } catch (bfy bfy) {
        a = false;
        Log.e("Error", bfy.getMessage());
        return;
      } 
      a = false;
      b.a("d" + i);
      return;
    } 
  }
  
  private static kku b() {
    kku kku = new kku();
    kku.setConnUuid(miq.C().i());
    kku.setTokenSessao(miq.C().j());
    kku.a(miq.C().f().m());
    return kku;
  }
  
  private static void b(Context paramContext, String paramString1, bfx parambfx, gyx paramgyx, String paramString2, gzr paramgzr) {
    gyu gyu = new gyu(paramContext);
    gyu.a();
    gyv gyv = gyu.a(Long.valueOf(Long.parseLong(paramString1)), parambfx.a(), nag.a(nai.c(miq.C().f().k())));
    gyu.close();
    if (gyv != null) {
      paramContext.getSharedPreferences("qrPreferences", 0).edit().putBoolean(mzr.n(), false).commit();
      miq.C().f().y().c().a(paramString1);
      miq.C().f().j(naz.TRANSACIONAL_COM_ID_OU_OTIMIZACAO.getValue());
      switch (gzc.a[paramgzr.ordinal()]) {
        default:
          miq.C().f().y().a(naz.TRANSACIONAL_COM_ID_OU_OTIMIZACAO.getValue());
          break;
        case 1:
        case 2:
          break;
      } 
      (new nea(new gzk(paramgyx, paramString2))).a();
    } 
  }
  
  private static void b(bfx parambfx, gzw paramgzw, Context paramContext, gyv paramgyv, gyx<String> paramgyx) {
    try {
      if (alb.a.b(parambfx, paramgzw.c()) == 0) {
        gyu gyu = new gyu(paramContext);
        gyu.a();
        gyu.a(paramgyv);
        gyv gyv1 = gyu.a(paramgyv.a(), parambfx.a(), nag.a(nai.c(miq.C().f().k())));
        gyu.close();
        if (gyv1 != null) {
          miq.C().f().y().a(naz.TRANSACIONAL_COM_ID_OU_OTIMIZACAO.getValue());
          paramgyx.a(paramgzw.a());
          return;
        } 
      } else {
        paramgyx.a(paramgzw.a());
        return;
      } 
    } catch (bfy bfy) {
      Log.e("Error", bfy.getMessage());
    } 
  }
  
  private static void b(Object paramObject, bfx parambfx, Context paramContext, gzr paramgzr, gyx paramgyx) {
    Vector<String> vector;
    if (paramObject != null) {
      paramObject = paramObject;
      if (paramObject.a() != null && paramObject.a().equals("0")) {
        vector = new Vector();
        alb.a.d(paramObject.c(), vector);
        a(parambfx, paramObject.c(), paramContext, vector, paramgzr);
        return;
      } 
    } else {
      return;
    } 
    if (paramObject.a() != null) {
      paramObject = paramObject.a();
    } else {
      paramObject = "";
    } 
    vector.a(paramObject);
  }
  
  private static void b(Object paramObject, bfx parambfx, Context paramContext, String paramString, gzr paramgzr, gyx<Object> paramgyx) {
    if (paramObject != null) {
      paramObject = paramObject;
      if (paramObject.a() != null && paramObject.a().equals("0")) {
        a(parambfx, paramObject.c(), paramContext, paramString, paramgzr);
        return;
      } 
    } else {
      return;
    } 
    if (paramObject.a() != null) {
      paramObject = paramObject.a();
    } else {
      paramObject = "";
    } 
    paramgyx.a(paramObject);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\gyy.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */