package org.dom4j.io;

import java.io.BufferedReader;
import java.io.CharArrayReader;
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
import org.dom4j.QName;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserFactory;

public class XPP3Reader {
  private DispatchHandler dispatchHandler;
  
  private DocumentFactory factory;
  
  private XmlPullParserFactory xppFactory;
  
  private XmlPullParser xppParser;
  
  public XPP3Reader() {}
  
  public XPP3Reader(DocumentFactory paramDocumentFactory) {
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
    this.xppFactory.setNamespaceAware(true);
    return this.xppFactory;
  }
  
  public XmlPullParser getXPPParser() {
    if (this.xppParser == null)
      this.xppParser = getXPPFactory().newPullParser(); 
    return this.xppParser;
  }
  
  protected Document parseDocument() {
    DocumentFactory documentFactory = getDocumentFactory();
    Document document = documentFactory.createDocument();
    Element element = null;
    XmlPullParser xmlPullParser = getXPPParser();
    xmlPullParser.setFeature("http://xmlpull.org/v1/doc/features.html#process-namespaces", true);
    while (true) {
      int i;
      int j;
      String str2;
      QName qName;
      Element element1;
      switch (xmlPullParser.nextToken()) {
        case 6:
        case 0:
          continue;
        case 1:
          return document;
        case 8:
          str2 = xmlPullParser.getText();
          i = str2.indexOf(" ");
          if (i >= 0) {
            document.addProcessingInstruction(str2.substring(0, i), str2.substring(i + 1));
            continue;
          } 
          document.addProcessingInstruction(str2, "");
          continue;
        case 9:
          if (element != null) {
            element.addComment(xmlPullParser.getText());
            continue;
          } 
          document.addComment(xmlPullParser.getText());
          continue;
        case 5:
          if (element != null) {
            element.addCDATA(xmlPullParser.getText());
            continue;
          } 
          throw new DocumentException("Cannot have text content outside of the root document");
        case 2:
          if (xmlPullParser.getPrefix() == null) {
            qName = documentFactory.createQName(xmlPullParser.getName(), xmlPullParser.getNamespace());
          } else {
            qName = documentFactory.createQName(xmlPullParser.getName(), xmlPullParser.getPrefix(), xmlPullParser.getNamespace());
          } 
          element1 = documentFactory.createElement(qName);
          i = xmlPullParser.getNamespaceCount(xmlPullParser.getDepth() - 1);
          j = xmlPullParser.getNamespaceCount(xmlPullParser.getDepth());
          while (i < j) {
            if (xmlPullParser.getNamespacePrefix(i) != null)
              element1.addNamespace(xmlPullParser.getNamespacePrefix(i), xmlPullParser.getNamespaceUri(i)); 
            i++;
          } 
          for (i = 0; i < xmlPullParser.getAttributeCount(); i++) {
            if (xmlPullParser.getAttributePrefix(i) == null) {
              qName = documentFactory.createQName(xmlPullParser.getAttributeName(i));
            } else {
              qName = documentFactory.createQName(xmlPullParser.getAttributeName(i), xmlPullParser.getAttributePrefix(i), xmlPullParser.getAttributeNamespace(i));
            } 
            element1.addAttribute(qName, xmlPullParser.getAttributeValue(i));
          } 
          if (element != null) {
            element.add(element1);
          } else {
            document.add(element1);
          } 
          element = element1;
          continue;
        case 3:
          if (element != null)
            element = element.getParent(); 
          continue;
        case 4:
          break;
      } 
      String str1 = xmlPullParser.getText();
      if (element != null) {
        element.addText(str1);
        continue;
      } 
      throw new DocumentException("Cannot have text content outside of the root document");
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
    getXPPParser().setInput(new CharArrayReader(paramArrayOfchar));
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


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\dom4j\io\XPP3Reader.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */