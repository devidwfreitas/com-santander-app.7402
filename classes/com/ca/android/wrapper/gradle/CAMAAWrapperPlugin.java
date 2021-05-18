package com.ca.android.wrapper.gradle;

import org.gradle.api.Plugin;
import org.gradle.api.Project;

public class CAMAAWrapperPlugin implements Plugin<Project> {
  public void apply(Project paramProject) {
    paramProject.getTasks().create("maaWrapperTask", CAMAAWrapperTask.class);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\ca\android\wrapper\gradle\CAMAAWrapperPlugin.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */