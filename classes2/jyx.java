import java.io.InputStream;
import java.util.Vector;
import javax.xml.parsers.SAXParser;
import javax.xml.parsers.SAXParserFactory;
import org.xml.sax.InputSource;

public class jyx extends jwv {
  private fux b = null;
  
  private fuw c = null;
  
  private jyy d = new jyy(this);
  
  public jyx(InputStream paramInputStream) {
    super(paramInputStream);
  }
  
  public fux a() {
    if (this.b != null && this.b.a() != null && this.b.a().size() > 0) {
      for (int i = 0; i < this.b.a().size(); i++) {
        if (((fuw)this.b.a().get(i)).a() == null || ((fuw)this.b.a().get(i)).a().length() == 0)
          ((fuw)this.b.a().get(i)).a(i + ""); 
      } 
    } else if (this.b != null && this.b.a() != null && this.b.a().size() == 0 && this.c.c() != null && this.c.c().length() > 0) {
      if (this.c.a() == null || this.c.a().length() == 0)
        this.c.a("1"); 
      this.b.a().add(this.c);
    } 
    return this.b;
  }
  
  public void b() {
    try {
      this.b = new fux();
      this.b.a(new Vector<fuw>());
      this.c = new fuw();
      SAXParser sAXParser = SAXParserFactory.newInstance().newSAXParser();
      InputSource inputSource = new InputSource(this.a);
      inputSource.setEncoding("UTF-8");
      sAXParser.parse(inputSource, this.d);
      return;
    } catch (Exception exception) {
      this.b = null;
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jyx.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */