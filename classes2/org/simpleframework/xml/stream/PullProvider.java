package org.simpleframework.xml.stream;

import java.io.InputStream;
import java.io.Reader;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserFactory;

class PullProvider implements Provider {
  private final XmlPullParserFactory factory = XmlPullParserFactory.newInstance();
  
  public PullProvider() {
    this.factory.setNamespaceAware(true);
  }
  
  public EventReader provide(InputStream paramInputStream) {
    XmlPullParser xmlPullParser = this.factory.newPullParser();
    if (paramInputStream != null)
      xmlPullParser.setInput(paramInputStream, null); 
    return new PullReader(xmlPullParser);
  }
  
  public EventReader provide(Reader paramReader) {
    XmlPullParser xmlPullParser = this.factory.newPullParser();
    if (paramReader != null)
      xmlPullParser.setInput(paramReader); 
    return new PullReader(xmlPullParser);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\stream\PullProvider.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */