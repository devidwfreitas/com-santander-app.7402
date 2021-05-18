package org.simpleframework.xml.transform;

import java.io.File;

class FileTransform implements Transform<File> {
  public File read(String paramString) {
    return new File(paramString);
  }
  
  public String write(File paramFile) {
    return paramFile.getPath();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\transform\FileTransform.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */