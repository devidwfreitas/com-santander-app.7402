package org.simpleframework.xml.core;

import org.simpleframework.xml.Version;

class Structure {
  private final Instantiator factory;
  
  private final Model model;
  
  private final boolean primitive;
  
  private final Label text;
  
  private final Label version;
  
  public Structure(Instantiator paramInstantiator, Model paramModel, Label paramLabel1, Label paramLabel2, boolean paramBoolean) {
    this.primitive = paramBoolean;
    this.factory = paramInstantiator;
    this.version = paramLabel1;
    this.model = paramModel;
    this.text = paramLabel2;
  }
  
  public Instantiator getInstantiator() {
    return this.factory;
  }
  
  public Version getRevision() {
    return (this.version != null) ? (Version)this.version.getContact().getAnnotation(Version.class) : null;
  }
  
  public Section getSection() {
    return new ModelSection(this.model);
  }
  
  public Label getText() {
    return this.text;
  }
  
  public Label getVersion() {
    return this.version;
  }
  
  public boolean isPrimitive() {
    return this.primitive;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\core\Structure.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */