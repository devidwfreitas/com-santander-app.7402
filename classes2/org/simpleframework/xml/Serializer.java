package org.simpleframework.xml;

import java.io.File;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.Reader;
import java.io.Writer;
import org.simpleframework.xml.stream.InputNode;
import org.simpleframework.xml.stream.OutputNode;

public interface Serializer {
  <T> T read(Class<? extends T> paramClass, File paramFile);
  
  <T> T read(Class<? extends T> paramClass, File paramFile, boolean paramBoolean);
  
  <T> T read(Class<? extends T> paramClass, InputStream paramInputStream);
  
  <T> T read(Class<? extends T> paramClass, InputStream paramInputStream, boolean paramBoolean);
  
  <T> T read(Class<? extends T> paramClass, Reader paramReader);
  
  <T> T read(Class<? extends T> paramClass, Reader paramReader, boolean paramBoolean);
  
  <T> T read(Class<? extends T> paramClass, String paramString);
  
  <T> T read(Class<? extends T> paramClass, String paramString, boolean paramBoolean);
  
  <T> T read(Class<? extends T> paramClass, InputNode paramInputNode);
  
  <T> T read(Class<? extends T> paramClass, InputNode paramInputNode, boolean paramBoolean);
  
  <T> T read(T paramT, File paramFile);
  
  <T> T read(T paramT, File paramFile, boolean paramBoolean);
  
  <T> T read(T paramT, InputStream paramInputStream);
  
  <T> T read(T paramT, InputStream paramInputStream, boolean paramBoolean);
  
  <T> T read(T paramT, Reader paramReader);
  
  <T> T read(T paramT, Reader paramReader, boolean paramBoolean);
  
  <T> T read(T paramT, String paramString);
  
  <T> T read(T paramT, String paramString, boolean paramBoolean);
  
  <T> T read(T paramT, InputNode paramInputNode);
  
  <T> T read(T paramT, InputNode paramInputNode, boolean paramBoolean);
  
  boolean validate(Class paramClass, File paramFile);
  
  boolean validate(Class paramClass, File paramFile, boolean paramBoolean);
  
  boolean validate(Class paramClass, InputStream paramInputStream);
  
  boolean validate(Class paramClass, InputStream paramInputStream, boolean paramBoolean);
  
  boolean validate(Class paramClass, Reader paramReader);
  
  boolean validate(Class paramClass, Reader paramReader, boolean paramBoolean);
  
  boolean validate(Class paramClass, String paramString);
  
  boolean validate(Class paramClass, String paramString, boolean paramBoolean);
  
  boolean validate(Class paramClass, InputNode paramInputNode);
  
  boolean validate(Class paramClass, InputNode paramInputNode, boolean paramBoolean);
  
  void write(Object paramObject, File paramFile);
  
  void write(Object paramObject, OutputStream paramOutputStream);
  
  void write(Object paramObject, Writer paramWriter);
  
  void write(Object paramObject, OutputNode paramOutputNode);
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\Serializer.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */