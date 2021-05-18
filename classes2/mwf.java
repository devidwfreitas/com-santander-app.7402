import java.text.Normalizer;
import java.util.regex.Pattern;

public class mwf {
  private String a;
  
  public mwf(String paramString) {
    if (paramString == null)
      paramString = ""; 
    this.a = paramString;
  }
  
  public boolean a() {
    boolean bool3 = b();
    boolean bool4 = c();
    boolean bool2 = d();
    boolean bool1 = bool2;
    if (!bool2)
      bool1 = e(); 
    return (bool3 || bool4 || bool1);
  }
  
  public boolean b() {
    String str = Normalizer.normalize(this.a.toLowerCase(), Normalizer.Form.NFD);
    str = Pattern.compile("[\\p{InCombiningDiacriticalMarks}]+").matcher(str).replaceAll("");
    String[] arrayOfString = new String[15];
    arrayOfString[0] = "santander";
    arrayOfString[1] = "itau";
    arrayOfString[2] = "bradesco";
    arrayOfString[3] = "brasil";
    arrayOfString[4] = "bb";
    arrayOfString[5] = "unibanco";
    arrayOfString[6] = "caixa";
    arrayOfString[7] = "cef";
    arrayOfString[8] = "hsbc";
    arrayOfString[9] = "bnb";
    arrayOfString[10] = "safra";
    arrayOfString[11] = "votorantim";
    arrayOfString[12] = "btg";
    arrayOfString[13] = "banrisul";
    arrayOfString[14] = "brb";
    int j = arrayOfString.length;
    for (int i = 0; i < j; i++) {
      if (str.contains(arrayOfString[i]))
        return true; 
    } 
    return false;
  }
  
  public boolean c() {
    return Pattern.compile("\\b(?<!(\\/|\\\\))[0-9]{4}(-[0-9]{1})?\\b").matcher(this.a).find();
  }
  
  public boolean d() {
    return (Pattern.compile("\\b([0-9]{2})\\.?([0-9]{2,})(-|\\.)([0-9]{1})\\b").matcher(this.a).find() || e());
  }
  
  public boolean e() {
    return Pattern.compile("\\b\\d{6,9}\\b").matcher(this.a).find();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mwf.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */