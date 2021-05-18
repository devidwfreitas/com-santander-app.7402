import java.io.InputStream;
import java.util.Vector;
import javax.xml.parsers.SAXParser;
import javax.xml.parsers.SAXParserFactory;
import org.xml.sax.InputSource;

public class jyv extends jwv {
  private fwa b = null;
  
  private String c = null;
  
  private String d = null;
  
  private fwf e = null;
  
  private fwg f = null;
  
  private Boolean g = Boolean.valueOf(false);
  
  private jyw h = new jyw(this);
  
  public jyv(InputStream paramInputStream) {
    super(paramInputStream);
  }
  
  public fwa a() {
    return this.b;
  }
  
  public void a(fwf paramfwf) {
    this.e = paramfwf;
  }
  
  public void a(fwg paramfwg) {
    this.f = paramfwg;
  }
  
  public void b() {
    try {
      this.b = new fwa();
      this.b.a(new Vector<fwg>());
      this.b.b(new Vector<fwf>());
      SAXParser sAXParser = SAXParserFactory.newInstance().newSAXParser();
      InputSource inputSource = new InputSource(this.a);
      inputSource.setEncoding("UTF-8");
      sAXParser.parse(inputSource, this.h);
      return;
    } catch (Exception exception) {
      this.b = null;
      return;
    } 
  }
  
  public void b(String paramString) {
    this.c = paramString;
  }
  
  public String c() {
    return this.c;
  }
  
  public void c(String paramString) {
    this.d = paramString;
  }
  
  public String d() {
    return this.d;
  }
  
  public fwf e() {
    return this.e;
  }
  
  public fwg f() {
    return this.f;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jyv.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */