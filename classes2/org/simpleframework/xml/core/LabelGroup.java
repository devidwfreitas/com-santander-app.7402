package org.simpleframework.xml.core;

import java.util.Arrays;
import java.util.List;

class LabelGroup {
  private final List<Label> list;
  
  private final int size;
  
  public LabelGroup(List<Label> paramList) {
    this.size = paramList.size();
    this.list = paramList;
  }
  
  public LabelGroup(Label paramLabel) {
    this(Arrays.asList(new Label[] { paramLabel }));
  }
  
  public List<Label> getList() {
    return this.list;
  }
  
  public Label getPrimary() {
    return (this.size > 0) ? this.list.get(0) : null;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\core\LabelGroup.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */