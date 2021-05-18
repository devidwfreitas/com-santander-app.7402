package org.dom4j.jaxb;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.net.URL;
import java.nio.charset.Charset;
import org.dom4j.Document;
import org.dom4j.DocumentException;
import org.dom4j.ElementHandler;
import org.dom4j.io.SAXReader;
import org.xml.sax.InputSource;

public class JAXBReader extends JAXBSupport {
  private boolean pruneElements;
  
  private SAXReader reader;
  
  public JAXBReader(String paramString) {
    super(paramString);
  }
  
  public JAXBReader(String paramString, ClassLoader paramClassLoader) {
    super(paramString, paramClassLoader);
  }
  
  private SAXReader getReader() {
    if (this.reader == null)
      this.reader = new SAXReader(); 
    return this.reader;
  }
  
  public void addHandler(String paramString, ElementHandler paramElementHandler) {
    getReader().addHandler(paramString, paramElementHandler);
  }
  
  public void addObjectHandler(String paramString, JAXBObjectHandler paramJAXBObjectHandler) {
    JAXBReader$UnmarshalElementHandler jAXBReader$UnmarshalElementHandler = new JAXBReader$UnmarshalElementHandler(this, this, paramJAXBObjectHandler);
    getReader().addHandler(paramString, jAXBReader$UnmarshalElementHandler);
  }
  
  public boolean isPruneElements() {
    return this.pruneElements;
  }
  
  public Document read(File paramFile) {
    return getReader().read(paramFile);
  }
  
  public Document read(File paramFile, Charset paramCharset) {
    try {
      InputStreamReader inputStreamReader = new InputStreamReader(new FileInputStream(paramFile), paramCharset);
      return getReader().read(inputStreamReader);
    } catch (JAXBRuntimeException jAXBRuntimeException) {
      Throwable throwable = jAXBRuntimeException.getCause();
      throw new DocumentException(throwable.getMessage(), throwable);
    } catch (FileNotFoundException fileNotFoundException) {
      throw new DocumentException(fileNotFoundException.getMessage(), fileNotFoundException);
    } 
  }
  
  public Document read(InputStream paramInputStream) {
    try {
      return getReader().read(paramInputStream);
    } catch (JAXBRuntimeException jAXBRuntimeException) {
      Throwable throwable = jAXBRuntimeException.getCause();
      throw new DocumentException(throwable.getMessage(), throwable);
    } 
  }
  
  public Document read(InputStream paramInputStream, String paramString) {
    try {
      return getReader().read(paramInputStream);
    } catch (JAXBRuntimeException jAXBRuntimeException) {
      Throwable throwable = jAXBRuntimeException.getCause();
      throw new DocumentException(throwable.getMessage(), throwable);
    } 
  }
  
  public Document read(Reader paramReader) {
    try {
      return getReader().read(paramReader);
    } catch (JAXBRuntimeException jAXBRuntimeException) {
      Throwable throwable = jAXBRuntimeException.getCause();
      throw new DocumentException(throwable.getMessage(), throwable);
    } 
  }
  
  public Document read(Reader paramReader, String paramString) {
    try {
      return getReader().read(paramReader);
    } catch (JAXBRuntimeException jAXBRuntimeException) {
      Throwable throwable = jAXBRuntimeException.getCause();
      throw new DocumentException(throwable.getMessage(), throwable);
    } 
  }
  
  public Document read(String paramString) {
    try {
      return getReader().read(paramString);
    } catch (JAXBRuntimeException jAXBRuntimeException) {
      Throwable throwable = jAXBRuntimeException.getCause();
      throw new DocumentException(throwable.getMessage(), throwable);
    } 
  }
  
  public Document read(URL paramURL) {
    try {
      return getReader().read(paramURL);
    } catch (JAXBRuntimeException jAXBRuntimeException) {
      Throwable throwable = jAXBRuntimeException.getCause();
      throw new DocumentException(throwable.getMessage(), throwable);
    } 
  }
  
  public Document read(InputSource paramInputSource) {
    try {
      return getReader().read(paramInputSource);
    } catch (JAXBRuntimeException jAXBRuntimeException) {
      Throwable throwable = jAXBRuntimeException.getCause();
      throw new DocumentException(throwable.getMessage(), throwable);
    } 
  }
  
  public void removeHandler(String paramString) {
    getReader().removeHandler(paramString);
  }
  
  public void removeObjectHandler(String paramString) {
    getReader().removeHandler(paramString);
  }
  
  public void resetHandlers() {
    getReader().resetHandlers();
  }
  
  public void setPruneElements(boolean paramBoolean) {
    this.pruneElements = paramBoolean;
    if (paramBoolean)
      getReader().setDefaultHandler(new JAXBReader$PruningElementHandler(this)); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\dom4j\jaxb\JAXBReader.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */