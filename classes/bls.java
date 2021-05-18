import android.content.Context;
import android.os.Bundle;
import com.facebook.GraphRequest;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

class bls {
  private List<bkl> a = new ArrayList<bkl>();
  
  private List<bkl> b = new ArrayList<bkl>();
  
  private int c;
  
  private bmv d;
  
  private String e;
  
  private final int f = 1000;
  
  public bls(bmv parambmv, String paramString) {
    this.d = parambmv;
    this.e = paramString;
  }
  
  private void a(GraphRequest paramGraphRequest, Context paramContext, int paramInt, JSONArray paramJSONArray, boolean paramBoolean) {
    JSONObject jSONObject;
    try {
      JSONObject jSONObject1 = bms.a(bmu.CUSTOM_APP_EVENTS, this.d, this.e, paramBoolean, paramContext);
      jSONObject = jSONObject1;
      if (this.c > 0) {
        jSONObject1.put("num_skipped_events", paramInt);
        jSONObject = jSONObject1;
      } 
    } catch (JSONException jSONException) {
      jSONObject = new JSONObject();
    } 
    paramGraphRequest.a(jSONObject);
    Bundle bundle2 = paramGraphRequest.e();
    Bundle bundle1 = bundle2;
    if (bundle2 == null)
      bundle1 = new Bundle(); 
    String str = paramJSONArray.toString();
    if (str != null) {
      bundle1.putByteArray("custom_events_file", a(str));
      paramGraphRequest.a(str);
    } 
    paramGraphRequest.a(bundle1);
  }
  
  private byte[] a(String paramString) {
    try {
      return paramString.getBytes("UTF-8");
    } catch (UnsupportedEncodingException unsupportedEncodingException) {
      bqq.a("Encoding exception: ", unsupportedEncodingException);
      return null;
    } 
  }
  
  public int a() {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield a : Ljava/util/List;
    //   6: invokeinterface size : ()I
    //   11: istore_1
    //   12: aload_0
    //   13: monitorexit
    //   14: iload_1
    //   15: ireturn
    //   16: astore_2
    //   17: aload_0
    //   18: monitorexit
    //   19: aload_2
    //   20: athrow
    // Exception table:
    //   from	to	target	type
    //   2	12	16	finally
  }
  
  public int a(GraphRequest paramGraphRequest, Context paramContext, boolean paramBoolean1, boolean paramBoolean2) {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield c : I
    //   6: istore #5
    //   8: aload_0
    //   9: getfield b : Ljava/util/List;
    //   12: aload_0
    //   13: getfield a : Ljava/util/List;
    //   16: invokeinterface addAll : (Ljava/util/Collection;)Z
    //   21: pop
    //   22: aload_0
    //   23: getfield a : Ljava/util/List;
    //   26: invokeinterface clear : ()V
    //   31: new org/json/JSONArray
    //   34: dup
    //   35: invokespecial <init> : ()V
    //   38: astore #6
    //   40: aload_0
    //   41: getfield b : Ljava/util/List;
    //   44: invokeinterface iterator : ()Ljava/util/Iterator;
    //   49: astore #7
    //   51: aload #7
    //   53: invokeinterface hasNext : ()Z
    //   58: ifeq -> 125
    //   61: aload #7
    //   63: invokeinterface next : ()Ljava/lang/Object;
    //   68: checkcast bkl
    //   71: astore #8
    //   73: aload #8
    //   75: invokevirtual d : ()Z
    //   78: ifeq -> 112
    //   81: iload_3
    //   82: ifne -> 93
    //   85: aload #8
    //   87: invokevirtual b : ()Z
    //   90: ifne -> 51
    //   93: aload #6
    //   95: aload #8
    //   97: invokevirtual c : ()Lorg/json/JSONObject;
    //   100: invokevirtual put : (Ljava/lang/Object;)Lorg/json/JSONArray;
    //   103: pop
    //   104: goto -> 51
    //   107: astore_1
    //   108: aload_0
    //   109: monitorexit
    //   110: aload_1
    //   111: athrow
    //   112: ldc 'Event with invalid checksum: %s'
    //   114: aload #8
    //   116: invokevirtual toString : ()Ljava/lang/String;
    //   119: invokestatic c : (Ljava/lang/String;Ljava/lang/String;)V
    //   122: goto -> 51
    //   125: aload #6
    //   127: invokevirtual length : ()I
    //   130: ifne -> 137
    //   133: aload_0
    //   134: monitorexit
    //   135: iconst_0
    //   136: ireturn
    //   137: aload_0
    //   138: monitorexit
    //   139: aload_0
    //   140: aload_1
    //   141: aload_2
    //   142: iload #5
    //   144: aload #6
    //   146: iload #4
    //   148: invokespecial a : (Lcom/facebook/GraphRequest;Landroid/content/Context;ILorg/json/JSONArray;Z)V
    //   151: aload #6
    //   153: invokevirtual length : ()I
    //   156: ireturn
    // Exception table:
    //   from	to	target	type
    //   2	51	107	finally
    //   51	81	107	finally
    //   85	93	107	finally
    //   93	104	107	finally
    //   108	110	107	finally
    //   112	122	107	finally
    //   125	135	107	finally
    //   137	139	107	finally
  }
  
  public void a(bkl parambkl) {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield a : Ljava/util/List;
    //   6: invokeinterface size : ()I
    //   11: aload_0
    //   12: getfield b : Ljava/util/List;
    //   15: invokeinterface size : ()I
    //   20: iadd
    //   21: sipush #1000
    //   24: if_icmplt -> 40
    //   27: aload_0
    //   28: aload_0
    //   29: getfield c : I
    //   32: iconst_1
    //   33: iadd
    //   34: putfield c : I
    //   37: aload_0
    //   38: monitorexit
    //   39: return
    //   40: aload_0
    //   41: getfield a : Ljava/util/List;
    //   44: aload_1
    //   45: invokeinterface add : (Ljava/lang/Object;)Z
    //   50: pop
    //   51: goto -> 37
    //   54: astore_1
    //   55: aload_0
    //   56: monitorexit
    //   57: aload_1
    //   58: athrow
    // Exception table:
    //   from	to	target	type
    //   2	37	54	finally
    //   40	51	54	finally
  }
  
  public void a(List<bkl> paramList) {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield a : Ljava/util/List;
    //   6: aload_1
    //   7: invokeinterface addAll : (Ljava/util/Collection;)Z
    //   12: pop
    //   13: aload_0
    //   14: monitorexit
    //   15: return
    //   16: astore_1
    //   17: aload_0
    //   18: monitorexit
    //   19: aload_1
    //   20: athrow
    // Exception table:
    //   from	to	target	type
    //   2	13	16	finally
  }
  
  public void a(boolean paramBoolean) {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: iload_1
    //   3: ifeq -> 20
    //   6: aload_0
    //   7: getfield a : Ljava/util/List;
    //   10: aload_0
    //   11: getfield b : Ljava/util/List;
    //   14: invokeinterface addAll : (Ljava/util/Collection;)Z
    //   19: pop
    //   20: aload_0
    //   21: getfield b : Ljava/util/List;
    //   24: invokeinterface clear : ()V
    //   29: aload_0
    //   30: iconst_0
    //   31: putfield c : I
    //   34: aload_0
    //   35: monitorexit
    //   36: return
    //   37: astore_2
    //   38: aload_0
    //   39: monitorexit
    //   40: aload_2
    //   41: athrow
    // Exception table:
    //   from	to	target	type
    //   6	20	37	finally
    //   20	34	37	finally
  }
  
  public List<bkl> b() {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield a : Ljava/util/List;
    //   6: astore_1
    //   7: aload_0
    //   8: new java/util/ArrayList
    //   11: dup
    //   12: invokespecial <init> : ()V
    //   15: putfield a : Ljava/util/List;
    //   18: aload_0
    //   19: monitorexit
    //   20: aload_1
    //   21: areturn
    //   22: astore_1
    //   23: aload_0
    //   24: monitorexit
    //   25: aload_1
    //   26: athrow
    // Exception table:
    //   from	to	target	type
    //   2	18	22	finally
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bls.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */