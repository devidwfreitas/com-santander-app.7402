import android.util.Log;
import java.util.HashMap;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

public class kzf implements kze {
  public void a(String paramString, kxl<List<ktt>> paramkxl, kxl<String> paramkxl1) {
    // Byte code:
    //   0: new org/json/JSONObject
    //   3: dup
    //   4: invokespecial <init> : ()V
    //   7: astore_1
    //   8: aload_1
    //   9: ldc 'X-Application-Key'
    //   11: invokestatic a : ()Lmzx;
    //   14: invokevirtual c : ()Ljava/util/Properties;
    //   17: ldc 'appKey'
    //   19: invokevirtual get : (Ljava/lang/Object;)Ljava/lang/Object;
    //   22: invokestatic valueOf : (Ljava/lang/Object;)Ljava/lang/String;
    //   25: invokevirtual put : (Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   28: pop
    //   29: aload_1
    //   30: ldc 'Content-Type'
    //   32: ldc 'application/json'
    //   34: invokevirtual put : (Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   37: pop
    //   38: invokestatic a : ()Lgnp;
    //   41: getstatic kwr.INSURANCE_FAMILY : Lkwr;
    //   44: invokevirtual getEndpoint : ()Ljava/lang/String;
    //   47: getstatic im.GET : Lim;
    //   50: aload_1
    //   51: new org/json/JSONObject
    //   54: dup
    //   55: invokespecial <init> : ()V
    //   58: iconst_1
    //   59: invokevirtual a : (Ljava/lang/String;Lim;Lorg/json/JSONObject;Lorg/json/JSONObject;Z)Lir;
    //   62: astore_1
    //   63: new gnv
    //   66: dup
    //   67: new kzg
    //   70: dup
    //   71: aload_0
    //   72: aload_3
    //   73: aload_2
    //   74: invokespecial <init> : (Lkzf;Lkxl;Lkxl;)V
    //   77: aload_1
    //   78: invokespecial <init> : (Lgkw;Lir;)V
    //   81: astore_2
    //   82: invokestatic a : ()Lgnp;
    //   85: invokevirtual b : ()Lie;
    //   88: ifnull -> 133
    //   91: invokestatic a : ()Lgnp;
    //   94: invokevirtual b : ()Lie;
    //   97: aload_1
    //   98: aload_2
    //   99: invokevirtual a : (Lir;Lih;)V
    //   102: return
    //   103: astore #4
    //   105: aload #4
    //   107: invokevirtual printStackTrace : ()V
    //   110: goto -> 38
    //   113: astore_1
    //   114: ldc 'ERROR_SERV'
    //   116: aload_1
    //   117: invokevirtual getMessage : ()Ljava/lang/String;
    //   120: invokestatic e : (Ljava/lang/String;Ljava/lang/String;)I
    //   123: pop
    //   124: aload_3
    //   125: ldc ''
    //   127: invokeinterface a : (Ljava/lang/Object;)V
    //   132: return
    //   133: aload_3
    //   134: ldc ''
    //   136: invokeinterface a : (Ljava/lang/Object;)V
    //   141: return
    // Exception table:
    //   from	to	target	type
    //   8	38	103	org/json/JSONException
    //   91	102	113	java/lang/Exception
  }
  
  public void a(kxl<kuh> paramkxl, kxl<String> paramkxl1) {
    JSONObject jSONObject1 = new JSONObject();
    try {
      jSONObject1.put("X-Application-Key", mzx.a().c().get("appKey"));
      jSONObject1.put("Content-Type", "application/json");
    } catch (Exception exception) {
      exception.printStackTrace();
    } 
    JSONObject jSONObject2 = new JSONObject();
    try {
      JSONObject jSONObject = new JSONObject();
      jSONObject.put("code", "0000000003");
      jSONObject2.put("option", jSONObject);
    } catch (JSONException jSONException) {
      jSONException.printStackTrace();
    } 
    ir ir = gnp.a().a(kwr.GET_INSURANCE_POSITION.getEndpoint(), im.POST, jSONObject1, jSONObject2, true);
    gnv gnv = new gnv(new kzi(this, paramkxl, paramkxl1), ir);
    if (gnp.a().b() != null)
      try {
        gnp.a().b().a(ir, gnv);
        return;
      } catch (Exception exception) {
        Log.e("ERROR_SERV", exception.getMessage());
        exception.printStackTrace();
        paramkxl1.a("");
        return;
      }  
  }
  
  public void b(String paramString, kxl<ktp> paramkxl, kxl<String> paramkxl1) {
    HashMap<Object, Object> hashMap = new HashMap<Object, Object>();
    hashMap.put("certificateKey", paramString);
    hashMap.put("gw-app-key", String.valueOf(mzx.a().c().get("appKey")));
    paramString = gnp.a(hashMap);
    ir ir = gnp.a().a(kwr.INSURANCE_DETAILS.getEndpoint() + "?" + paramString, im.GET, null, new JSONObject(), true);
    gnv gnv = new gnv(new kzh(this, paramkxl1, paramkxl), ir);
    if (gnp.a().b() != null)
      try {
        gnp.a().b().a(ir, gnv);
        return;
      } catch (Exception exception) {
        Log.e("ERROR_SERV", exception.getMessage());
        paramkxl1.a("");
        return;
      }  
    paramkxl1.a("");
  }
  
  public void b(kxl<ktx> paramkxl, kxl<String> paramkxl1) {
    HashMap<Object, Object> hashMap = new HashMap<Object, Object>();
    hashMap.put("gw-app-key", String.valueOf(mzx.a().c().get("appKey")));
    String str = gnp.a(hashMap);
    str = kwr.MODULE_CONDITIONS.getEndpoint() + "?" + str;
    ir ir = gnp.a().a(str, im.GET, null, new JSONObject(), true);
    gnv gnv = new gnv(new kzj(this, paramkxl, paramkxl1), ir);
    if (gnp.a().b() != null)
      try {
        gnp.a().b().a(ir, gnv);
        return;
      } catch (Exception exception) {
        Log.e("ERROR_SERV", exception.getMessage());
        paramkxl1.a("");
        return;
      }  
    paramkxl1.a("");
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\kzf.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */