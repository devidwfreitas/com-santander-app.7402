package org.dom4j.io;

import java.io.File;
import java.io.InputStream;
import java.io.Reader;
import java.net.URL;
import java.util.HashMap;
import java.util.Map;
import org.dom4j.Document;
import org.dom4j.DocumentException;
import org.dom4j.DocumentFactory;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;
import org.xml.sax.XMLReader;

public class SAXModifier {
  private HashMap modifiers = new HashMap<Object, Object>();
  
  private SAXModifyReader modifyReader;
  
  private boolean pruneElements;
  
  private XMLReader xmlReader;
  
  private XMLWriter xmlWriter;
  
  public SAXModifier() {}
  
  public SAXModifier(XMLReader paramXMLReader) {
    this.xmlReader = paramXMLReader;
  }
  
  public SAXModifier(XMLReader paramXMLReader, boolean paramBoolean) {
    this.xmlReader = paramXMLReader;
  }
  
  public SAXModifier(boolean paramBoolean) {
    this.pruneElements = paramBoolean;
  }
  
  private SAXModifyReader getSAXModifyReader() {
    if (this.modifyReader == null)
      this.modifyReader = new SAXModifyReader(); 
    return this.modifyReader;
  }
  
  private XMLReader getXMLReader() {
    if (this.xmlReader == null)
      this.xmlReader = SAXHelper.createXMLReader(false); 
    return this.xmlReader;
  }
  
  private SAXReader installModifyReader() {
    try {
      SAXModifyReader sAXModifyReader = getSAXModifyReader();
      if (isPruneElements())
        this.modifyReader.setDispatchHandler(new PruningDispatchHandler()); 
      sAXModifyReader.resetHandlers();
      for (Map.Entry entry : this.modifiers.entrySet()) {
        SAXModifyElementHandler sAXModifyElementHandler = new SAXModifyElementHandler((ElementModifier)entry.getValue());
        sAXModifyReader.addHandler((String)entry.getKey(), sAXModifyElementHandler);
      } 
    } catch (SAXException sAXException) {
      throw new DocumentException(sAXException.getMessage(), sAXException);
    } 
    sAXException.setXMLWriter(getXMLWriter());
    sAXException.setXMLReader(getXMLReader());
    return (SAXReader)sAXException;
  }
  
  public void addModifier(String paramString, ElementModifier paramElementModifier) {
    this.modifiers.put(paramString, paramElementModifier);
  }
  
  public DocumentFactory getDocumentFactory() {
    return getSAXModifyReader().getDocumentFactory();
  }
  
  public XMLWriter getXMLWriter() {
    return this.xmlWriter;
  }
  
  public boolean isPruneElements() {
    return this.pruneElements;
  }
  
  public Document modify(File paramFile) {
    try {
      return installModifyReader().read(paramFile);
    } catch (SAXModifyException sAXModifyException) {
      Throwable throwable = sAXModifyException.getCause();
      throw new DocumentException(throwable.getMessage(), throwable);
    } 
  }
  
  public Document modify(InputStream paramInputStream) {
    try {
      return installModifyReader().read(paramInputStream);
    } catch (SAXModifyException sAXModifyException) {
      Throwable throwable = sAXModifyException.getCause();
      throw new DocumentException(throwable.getMessage(), throwable);
    } 
  }
  
  public Document modify(InputStream paramInputStream, String paramString) {
    try {
      return installModifyReader().read(paramInputStream);
    } catch (SAXModifyException sAXModifyException) {
      Throwable throwable = sAXModifyException.getCause();
      throw new DocumentException(throwable.getMessage(), throwable);
    } 
  }
  
  public Document modify(Reader paramReader) {
    try {
      return installModifyReader().read(paramReader);
    } catch (SAXModifyException sAXModifyException) {
      Throwable throwable = sAXModifyException.getCause();
      throw new DocumentException(throwable.getMessage(), throwable);
    } 
  }
  
  public Document modify(Reader paramReader, String paramString) {
    try {
      return installModifyReader().read(paramReader);
    } catch (SAXModifyException sAXModifyException) {
      Throwable throwable = sAXModifyException.getCause();
      throw new DocumentException(throwable.getMessage(), throwable);
    } 
  }
  
  public Document modify(String paramString) {
    try {
      return installModifyReader().read(paramString);
    } catch (SAXModifyException sAXModifyException) {
      Throwable throwable = sAXModifyException.getCause();
      throw new DocumentException(throwable.getMessage(), throwable);
    } 
  }
  
  public Document modify(URL paramURL) {
    try {
      return installModifyReader().read(paramURL);
    } catch (SAXModifyException sAXModifyException) {
      Throwable throwable = sAXModifyException.getCause();
      throw new DocumentException(throwable.getMessage(), throwable);
    } 
  }
  
  public Document modify(InputSource paramInputSource) {
    try {
      return installModifyReader().read(paramInputSource);
    } catch (SAXModifyException sAXModifyException) {
      Throwable throwable = sAXModifyException.getCause();
      throw new DocumentException(throwable.getMessage(), throwable);
    } 
  }
  
  public void removeModifier(String paramString) {
    this.modifiers.remove(paramString);
    getSAXModifyReader().removeHandler(paramString);
  }
  
  public void resetModifiers() {
    this.modifiers.clear();
    getSAXModifyReader().resetHandlers();
  }
  
  public void setDocumentFactory(DocumentFactory paramDocumentFactory) {
    getSAXModifyReader().setDocumentFactory(paramDocumentFactory);
  }
  
  public void setXMLWriter(XMLWriter paramXMLWriter) {
    this.xmlWriter = paramXMLWriter;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\dom4j\io\SAXModifier.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */