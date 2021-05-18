import java.io.InputStream;
import java.util.Vector;
import javax.xml.parsers.SAXParser;
import javax.xml.parsers.SAXParserFactory;
import org.xml.sax.InputSource;

public class jzf extends jwv {
  private fue b = null;
  
  private fuj c = null;
  
  private boolean d = false;
  
  private jzg e = new jzg(this);
  
  public jzf(InputStream paramInputStream) {
    super(paramInputStream);
  }
  
  public fue a() {
    return this.b;
  }
  
  public void b() {
    try {
      this.b = new fue();
      this.b.a(new Vector<fuj>());
      SAXParser sAXParser = SAXParserFactory.newInstance().newSAXParser();
      InputSource inputSource = new InputSource(this.a);
      inputSource.setEncoding("UTF-8");
      sAXParser.parse(inputSource, this.e);
      return;
    } catch (Exception exception) {
      this.b = null;
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jzf.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */