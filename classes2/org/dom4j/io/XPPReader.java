package org.dom4j.io;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.net.URL;
import org.dom4j.Document;
import org.dom4j.DocumentException;
import org.dom4j.DocumentFactory;
import org.dom4j.Element;
import org.dom4j.ElementHandler;
import org.dom4j.xpp.ProxyXmlStartTag;
import org.gjt.xpp.XmlEndTag;
import org.gjt.xpp.XmlPullParser;
import org.gjt.xpp.XmlPullParserFactory;
import org.gjt.xpp.XmlStartTag;

public class XPPReader {
  private DispatchHandler dispatchHandler;
  
  private DocumentFactory factory;
  
  private XmlPullParserFactory xppFactory;
  
  private XmlPullParser xppParser;
  
  public XPPReader() {}
  
  public XPPReader(DocumentFactory paramDocumentFactory) {
    this.factory = paramDocumentFactory;
  }
  
  public void addHandler(String paramString, ElementHandler paramElementHandler) {
    getDispatchHandler().addHandler(paramString, paramElementHandler);
  }
  
  protected Reader createReader(InputStream paramInputStream) {
    return new BufferedReader(new InputStreamReader(paramInputStream));
  }
  
  protected DispatchHandler getDispatchHandler() {
    if (this.dispatchHandler == null)
      this.dispatchHandler = new DispatchHandler(); 
    return this.dispatchHandler;
  }
  
  public DocumentFactory getDocumentFactory() {
    if (this.factory == null)
      this.factory = DocumentFactory.getInstance(); 
    return this.factory;
  }
  
  public XmlPullParserFactory getXPPFactory() {
    if (this.xppFactory == null)
      this.xppFactory = XmlPullParserFactory.newInstance(); 
    return this.xppFactory;
  }
  
  public XmlPullParser getXPPParser() {
    if (this.xppParser == null)
      this.xppParser = getXPPFactory().newPullParser(); 
    return this.xppParser;
  }
  
  protected Document parseDocument() {
    Document document = getDocumentFactory().createDocument();
    Element element = null;
    XmlPullParser xmlPullParser = getXPPParser();
    xmlPullParser.setNamespaceAware(true);
    ProxyXmlStartTag proxyXmlStartTag = new ProxyXmlStartTag();
    XmlEndTag xmlEndTag = this.xppFactory.newEndTag();
    while (true) {
      Element element1;
      String str;
      byte b = xmlPullParser.next();
      switch (b) {
        default:
          throw new DocumentException("Error: unknown type: " + b);
        case 2:
          xmlPullParser.readStartTag((XmlStartTag)proxyXmlStartTag);
          element1 = proxyXmlStartTag.getElement();
          if (element != null) {
            element.add(element1);
            element = element1;
            continue;
          } 
          document.add(element1);
          element = element1;
          continue;
        case 3:
          xmlPullParser.readEndTag(xmlEndTag);
          if (element != null)
            element = element.getParent(); 
          continue;
        case 4:
          str = xmlPullParser.readContent();
          if (element != null) {
            element.addText(str);
            continue;
          } 
          throw new DocumentException("Cannot have text content outside of the root document");
        case 1:
          break;
      } 
      return document;
    } 
  }
  
  public Document read(File paramFile) {
    String str = paramFile.getAbsolutePath();
    return read(new BufferedReader(new FileReader(paramFile)), str);
  }
  
  public Document read(InputStream paramInputStream) {
    return read(createReader(paramInputStream));
  }
  
  public Document read(InputStream paramInputStream, String paramString) {
    return read(createReader(paramInputStream), paramString);
  }
  
  public Document read(Reader paramReader) {
    getXPPParser().setInput(paramReader);
    return parseDocument();
  }
  
  public Document read(Reader paramReader, String paramString) {
    Document document = read(paramReader);
    document.setName(paramString);
    return document;
  }
  
  public Document read(String paramString) {
    return (paramString.indexOf(':') >= 0) ? read(new URL(paramString)) : read(new File(paramString));
  }
  
  public Document read(URL paramURL) {
    String str = paramURL.toExternalForm();
    return read(createReader(paramURL.openStream()), str);
  }
  
  public Document read(char[] paramArrayOfchar) {
    getXPPParser().setInput(paramArrayOfchar);
    return parseDocument();
  }
  
  public void removeHandler(String paramString) {
    getDispatchHandler().removeHandler(paramString);
  }
  
  public void setDefaultHandler(ElementHandler paramElementHandler) {
    getDispatchHandler().setDefaultHandler(paramElementHandler);
  }
  
  protected void setDispatchHandler(DispatchHandler paramDispatchHandler) {
    this.dispatchHandler = paramDispatchHandler;
  }
  
  public void setDocumentFactory(DocumentFactory paramDocumentFactory) {
    this.factory = paramDocumentFactory;
  }
  
  public void setXPPFactory(XmlPullParserFactory paramXmlPullParserFactory) {
    this.xppFactory = paramXmlPullParserFactory;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\dom4j\io\XPPReader.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */