import android.content.Context;
import java.util.List;
import java.util.Vector;
import org.json.JSONObject;

class cz extends i implements bfu {
  public static final char bo = 'a';
  
  private static final long bp = 1L;
  
  private static final char bq = 'a';
  
  private Object br = null;
  
  private Object bs = null;
  
  private Object bt = null;
  
  private int a(Context paramContext, bfv parambfv) {
    if (this.bs != null)
      try {
        bfw bfw = new bfw();
        if (super.a(parambfv, bfw) == 0 && bfw.c() != null) {
          JSONObject jSONObject1;
          boolean bool;
          JSONObject jSONObject2 = (JSONObject)this.bs;
          String str = paramContext.getApplicationContext().getPackageName();
          if (str.matches("br.com.santander.modulo.idsantander") || str.contains("br.com.santander.way")) {
            jSONObject1 = (JSONObject)this.bt;
            bool = true;
          } else {
            jSONObject1 = new JSONObject(bfw.c());
            bool = false;
          } 
          if (jSONObject2.has("d") && jSONObject1.has("d")) {
            JSONObject jSONObject3 = jSONObject2.getJSONObject("d");
            JSONObject jSONObject4 = jSONObject1.getJSONObject("d");
            if (!jSONObject3.getString("a").equals(jSONObject4.getString("a")) && !bool)
              return 1540; 
            if (!jSONObject3.getString("b").equals(jSONObject4.getString("b")) && !bool)
              return 1540; 
          } 
          if (jSONObject2.has("c") && jSONObject2.has("c")) {
            jSONObject2 = jSONObject2.getJSONObject("c");
            jSONObject1 = jSONObject1.getJSONObject("c");
            String str2 = jSONObject2.getString("a");
            if (!str2.equals(jSONObject1.getString("a")))
              return 1540; 
            if (!str2.equals(dy.c(paramContext)))
              return 1540; 
            String str1 = jSONObject2.getString("b");
            if (!str1.equals(jSONObject1.getString("b")))
              return 1540; 
            boolean bool1 = str1.equals(dy.a(paramContext));
            if (!bool1)
              return 1540; 
          } 
        } 
      } catch (Exception exception) {} 
    return 0;
  }
  
  private int a(Context paramContext, bfx parambfx) {
    return 0;
  }
  
  private byte[] c(Context paramContext) {
    return ((dh)(new da(this)).a()).a(paramContext);
  }
  
  public int a(Context paramContext, bfv parambfv, bfw parambfw) {
    int j = a(paramContext, parambfv);
    return (j != 0) ? j : super.a(parambfv, parambfw);
  }
  
  public int a(Context paramContext, bfv parambfv, String paramString) {
    int j = a(paramContext, parambfv);
    return (j != 0) ? j : super.a(parambfv, paramString);
  }
  
  public int a(Context paramContext, bfx parambfx, String paramString, StringBuffer paramStringBuffer) {
    int j = a(paramContext, parambfx);
    return (j != 0) ? j : super.b(parambfx, paramString, paramStringBuffer);
  }
  
  public int a(Context paramContext, bfx parambfx, String paramString, StringBuffer paramStringBuffer1, StringBuffer paramStringBuffer2, Vector<String> paramVector) {
    int j = a(paramContext, parambfx);
    return (j != 0) ? j : super.a(parambfx, paramString, paramStringBuffer1, paramStringBuffer2, paramVector);
  }
  
  public int a(Context paramContext, bfx parambfx, String paramString, StringBuffer paramStringBuffer, Vector<String> paramVector) {
    return super.a(parambfx, paramString, paramStringBuffer, paramVector);
  }
  
  public int a(Context paramContext, bfx parambfx, StringBuffer paramStringBuffer) {
    int j = a(paramContext, parambfx);
    return (j != 0) ? j : super.a(parambfx, paramStringBuffer);
  }
  
  public int a(Context paramContext, List<String> paramList, bfr parambfr) {
    return a(paramContext, paramList, (String)null, parambfr);
  }
  
  public int a(Context paramContext, List<String> paramList, String paramString, bfr parambfr) {
    if (this.br == null)
      this.br = (new db(this)).a(); 
    (new dd(this)).b().a(paramContext, this, paramList, paramString, new df(this, parambfr));
    return 0;
  }
  
  public int a(bfv parambfv) {
    int j = super.a(parambfv);
    if (j == 0 && this.bs != null)
      try {
        JSONObject jSONObject = (JSONObject)this.bs;
        if (jSONObject.has("c") && jSONObject.has("d")) {
          JSONObject jSONObject1 = new JSONObject();
          jSONObject1.put("c", jSONObject.getJSONObject("c"));
          jSONObject1.put("d", jSONObject.getJSONObject("d"));
          StringBuffer stringBuffer = new StringBuffer();
          stringBuffer.append(parambfv.a());
          int k = b(stringBuffer, jSONObject1.toString());
          if (k == 0)
            try {
              parambfv.a(stringBuffer.toString());
              return k;
            } catch (Exception exception) {
              return k;
            }  
          return k;
        } 
      } catch (Exception exception) {
        return j;
      }  
    return j;
  }
  
  public int a(bfv parambfv, bfw parambfw) {
    return 1541;
  }
  
  public int a(bfv parambfv, String paramString) {
    return 1541;
  }
  
  public int a(bfx parambfx) {
    int j = super.a(parambfx);
    if (j == 0 && this.bs != null)
      try {
        JSONObject jSONObject = (JSONObject)this.bs;
        if (jSONObject.has("c") && jSONObject.has("d")) {
          JSONObject jSONObject1 = new JSONObject();
          jSONObject1.put("c", jSONObject.getJSONObject("c"));
          jSONObject1.put("d", jSONObject.getJSONObject("d"));
          StringBuffer stringBuffer = new StringBuffer();
          stringBuffer.append(parambfx.a());
          int k = a(stringBuffer, jSONObject1.toString());
          if (k == 0)
            try {
              parambfx.a(stringBuffer.toString());
              return k;
            } catch (Exception exception) {
              return k;
            }  
          return k;
        } 
      } catch (Exception exception) {
        return j;
      }  
    return j;
  }
  
  public int a(bfx parambfx, String paramString, StringBuffer paramStringBuffer1, StringBuffer paramStringBuffer2, Vector<String> paramVector) {
    return 1541;
  }
  
  public int a(bfx parambfx, String paramString, StringBuffer paramStringBuffer, Vector<String> paramVector) {
    return 1541;
  }
  
  public int a(bfx parambfx, StringBuffer paramStringBuffer) {
    return 1541;
  }
  
  public int a(byte[] paramArrayOfbyte, Context paramContext) {
    byte[] arrayOfByte2 = (new ct()).a();
    byte[] arrayOfByte1 = paramArrayOfbyte;
    if (paramArrayOfbyte == null)
      arrayOfByte1 = arrayOfByte2; 
    return a(arrayOfByte2, arrayOfByte1, c(paramContext), 'a');
  }
  
  public String a() {
    return "3.1.10";
  }
  
  public boolean a(Context paramContext) {
    return cy.a(paramContext);
  }
  
  public int b(Context paramContext, bfv parambfv, String paramString) {
    int j = a(paramContext, parambfv);
    return (j != 0) ? j : super.b(parambfv, paramString);
  }
  
  public int b(bfv parambfv, String paramString) {
    return 1541;
  }
  
  public int b(bfx parambfx, String paramString, StringBuffer paramStringBuffer) {
    return 1541;
  }
  
  public boolean b(Context paramContext) {
    return cy.b(paramContext);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\cz.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */