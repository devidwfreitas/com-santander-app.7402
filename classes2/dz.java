import android.content.Context;
import java.security.SecureRandom;
import org.json.JSONException;
import org.json.JSONObject;

public class dz {
  public static float a(Context paramContext, String paramString1, String paramString2) {
    float f = 0.1F;
    JSONObject jSONObject1 = a(paramString1);
    JSONObject jSONObject2 = a(paramString2);
    if (jSONObject1 == null && jSONObject2 != null) {
      float f1 = 0.1F;
    } else {
      float f1 = 0.12F;
    } 
    if (jSONObject2 == null)
      return 0.0F; 
    if (SYNTHETIC_LOCAL_VARIABLE_3 == 0.1F)
      return SYNTHETIC_LOCAL_VARIABLE_3; 
    if (jSONObject1 != null && jSONObject2 != null) {
      if (!d(jSONObject1, jSONObject2)) {
        float f2 = f;
        return a(jSONObject1) ? 0.15F : f2;
      } 
      float f1 = f;
      if (a(jSONObject1))
        try {
          JSONObject jSONObject3 = jSONObject1.getJSONObject("a");
          JSONObject jSONObject4 = jSONObject2.getJSONObject("a");
          try {
            JSONObject jSONObject5 = jSONObject1.getJSONObject("c");
            JSONObject jSONObject6 = jSONObject2.getJSONObject("c");
            f = b(jSONObject5, jSONObject6);
            f1 = f;
            if (f > 0.29D) {
              f = a(jSONObject3, jSONObject4);
              f1 = f;
              if (f > 0.39D)
                try {
                  jSONObject1 = jSONObject1.getJSONObject("d");
                  jSONObject2 = jSONObject2.getJSONObject("d");
                  f = c(jSONObject1, jSONObject2);
                  f1 = f;
                  if (f > 0.49D)
                    return f + 0.5F; 
                } catch (Exception exception) {
                  return 0.41F;
                }  
            } 
          } catch (Exception exception) {
            return 0.18F;
          } 
        } catch (Exception exception) {
          return 0.16F;
        }  
      return f1;
    } 
    return 0.0F;
  }
  
  private static float a(JSONObject paramJSONObject1, JSONObject paramJSONObject2) {
    try {
      boolean bool = paramJSONObject1.getString("a").equals(paramJSONObject2.getString("a"));
      if (!bool)
        return 0.31F; 
    } catch (Exception exception) {
      return 0.32F;
    } 
    try {
      boolean bool = exception.getString("b").equals(paramJSONObject2.getString("b"));
      if (!bool)
        return 0.33F; 
    } catch (Exception exception1) {
      return 0.34F;
    } 
    return 0.4F;
  }
  
  public static String a(Context paramContext) {
    JSONObject jSONObject = new JSONObject();
    try {
      JSONObject jSONObject2 = (new ea()).a(paramContext);
      JSONObject jSONObject3 = (new eb()).a(paramContext);
      JSONObject jSONObject1 = (new ec()).a(paramContext);
      JSONObject jSONObject4 = new JSONObject();
      jSONObject4.put("a", System.currentTimeMillis());
      SecureRandom secureRandom = new SecureRandom();
      jSONObject4.put("b", secureRandom.nextInt(9999999));
      jSONObject.put("d", jSONObject4);
      jSONObject.put("c", jSONObject1);
      jSONObject.put("b", jSONObject2);
      jSONObject.put("a", jSONObject3);
      jSONObject.put("v", 1);
      return jSONObject.toString();
    } catch (Exception exception) {
      exception.printStackTrace();
      throw new Exception(exception);
    } 
  }
  
  private static JSONObject a(String paramString) {
    try {
      return new JSONObject(paramString);
    } catch (Exception exception) {
      exception.printStackTrace();
      return null;
    } 
  }
  
  private static boolean a(JSONObject paramJSONObject) {
    return (paramJSONObject.has("d") && paramJSONObject.has("c") && paramJSONObject.has("a") && paramJSONObject.has("v"));
  }
  
  public static float b(Context paramContext, String paramString1, String paramString2) {
    float f = 0.66F;
    try {
      JSONObject jSONObject = new JSONObject(paramString2);
      try {
        JSONObject jSONObject1 = new JSONObject(paramString1);
        if (jSONObject != null && jSONObject1 != null) {
          if (jSONObject.has("c") && !jSONObject1.has("c"))
            return 0.4F; 
          if (jSONObject.has("c") && jSONObject1.has("c"))
            try {
              JSONObject jSONObject2 = jSONObject.getJSONObject("c");
              try {
                JSONObject jSONObject3 = jSONObject1.getJSONObject("c");
                if (jSONObject2 != null) {
                  String str1;
                  String str2;
                  try {
                    str2 = jSONObject2.getString("a");
                    if (jSONObject3 != null) {
                      try {
                        String str = jSONObject3.getString("a");
                        if (!str2.equals(str))
                          return 0.68F; 
                      } catch (Exception null) {
                        exception.printStackTrace();
                        return 0.66F;
                      } 
                    } else {
                      return 0.67F;
                    } 
                  } catch (Exception exception) {
                    exception.printStackTrace();
                    return 0.65F;
                  } 
                  float f1 = 0.93F;
                  if (!str2.equals(dy.c((Context)exception)))
                    return 0.69F; 
                  try {
                    str1 = jSONObject2.getString("b");
                    String str = jSONObject3.getString("b");
                    if (!str1.equals(str))
                      return 0.71F; 
                  } catch (JSONException jSONException) {
                    jSONException.printStackTrace();
                    return 0.7F;
                  } 
                  if (!str1.equals(dy.a((Context)jSONException)))
                    return 0.72F; 
                  f = f1;
                  if (jSONObject.has("a")) {
                    f = f1;
                    if (!jSONObject1.has("a"))
                      return 0.73F; 
                  } 
                } 
              } catch (Exception exception) {
                exception.printStackTrace();
                return 0.64F;
              } 
            } catch (Exception exception) {
              exception.printStackTrace();
              return 0.63F;
            }  
          return 0.34F;
        } 
      } catch (Exception exception) {
        exception.printStackTrace();
        return 0.62F;
      } 
    } catch (Exception exception) {
      exception.printStackTrace();
      return 0.61F;
    } 
  }
  
  private static float b(JSONObject paramJSONObject1, JSONObject paramJSONObject2) {
    if (paramJSONObject1 == null || paramJSONObject2 == null)
      return 0.19F; 
    try {
      boolean bool = paramJSONObject1.getString("a").equals(paramJSONObject2.getString("a"));
      if (!bool)
        return 0.2F; 
    } catch (Exception exception) {
      return 0.21F;
    } 
    try {
      boolean bool = exception.getString("b").equals(paramJSONObject2.getString("b"));
      if (!bool)
        return 0.22F; 
    } catch (Exception exception1) {
      return 0.23F;
    } 
    return 0.3F;
  }
  
  public static String b(Context paramContext) {
    JSONObject jSONObject = new JSONObject();
    try {
      JSONObject jSONObject2 = (new ed()).a(paramContext);
      JSONObject jSONObject1 = (new ee()).a(paramContext);
      JSONObject jSONObject3 = new JSONObject();
      jSONObject3.put("a", System.currentTimeMillis());
      SecureRandom secureRandom = new SecureRandom();
      jSONObject3.put("b", secureRandom.nextInt(9999999));
      jSONObject.put("d", jSONObject3);
      jSONObject.put("c", jSONObject1);
      jSONObject.put("a", jSONObject2);
      jSONObject.put("v", 2);
      return jSONObject.toString();
    } catch (Exception exception) {
      exception.printStackTrace();
      throw new Exception(exception);
    } 
  }
  
  private static float c(JSONObject paramJSONObject1, JSONObject paramJSONObject2) {
    if (paramJSONObject1 == null || paramJSONObject2 == null)
      return 0.41F; 
    try {
      boolean bool = paramJSONObject1.getString("a").equals(paramJSONObject2.getString("a"));
      if (bool)
        return 0.42F; 
    } catch (Exception exception) {
      return 0.43F;
    } 
    try {
      boolean bool = exception.getString("b").equals(paramJSONObject2.getString("b"));
      if (bool)
        return 0.44F; 
    } catch (Exception exception1) {
      return 0.45F;
    } 
    return 0.5F;
  }
  
  private static boolean d(JSONObject paramJSONObject1, JSONObject paramJSONObject2) {
    return ((!paramJSONObject1.has("d") || paramJSONObject2.has("d")) && (!paramJSONObject1.has("c") || paramJSONObject2.has("c")) && (!paramJSONObject1.has("a") || paramJSONObject2.has("a")) && (!paramJSONObject1.has("v") || paramJSONObject2.has("v")));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dz.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */