import java.util.HashMap;
import java.util.Map;

public class kmb {
  private static Map<String, kmc> a() {
    HashMap<Object, Object> hashMap = new HashMap<Object, Object>();
    kmc kmc = new kmc();
    kmc.a("2viaAgua");
    kmc.b("2viaAgua.share");
    hashMap.put("1001", kmc);
    kmc = new kmc();
    kmc.a("2viaLuz");
    kmc.b("2viaLuz.share");
    hashMap.put("1002", kmc);
    kmc = new kmc();
    kmc.a("2viaGas");
    kmc.b("2viaGas.share");
    hashMap.put("1003", kmc);
    kmc = new kmc();
    kmc.a("2viaTelFixo");
    kmc.b("2viaTelFixo.share");
    hashMap.put("1004", kmc);
    kmc = new kmc();
    kmc.a("2viaTelPos");
    kmc.b("2viaTelPos.share");
    hashMap.put("1005", kmc);
    kmc = new kmc();
    kmc.a("2viaOutros");
    kmc.b("2viaOutros.share");
    hashMap.put("1006", kmc);
    kmc = new kmc();
    kmc.a("2viaPgtoTit");
    kmc.b("2viaPgtoTit.share");
    hashMap.put("01", kmc);
    kmc = new kmc();
    kmc.a("2viaTelPre");
    kmc.b("2viaTelPre.share");
    hashMap.put("7001", kmc);
    kmc = new kmc();
    kmc.a("2viaAmex");
    kmc.b("2viaAmex.share");
    hashMap.put("6001", kmc);
    kmc = new kmc();
    kmc.a("2viaCC");
    kmc.b("2viaCC.share");
    hashMap.put("05", kmc);
    kmc = new kmc();
    kmc.a("2viaTransMsm");
    kmc.b("2viaTransMsm.share");
    hashMap.put("04", kmc);
    kmc = new kmc();
    kmc.a("2viaDoc");
    kmc.b("2viaDoc.share");
    hashMap.put("03", kmc);
    kmc = new kmc();
    kmc.a("2viaTed");
    kmc.b("2viaTed.share");
    hashMap.put("02", kmc);
    return (Map)hashMap;
  }
  
  public static kmc a(String paramString) {
    return a().get(paramString);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\kmb.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */