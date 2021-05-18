package com.ca.android.wrapper;

import com.ca.android.wrapper.config.SignConfig;
import com.ca.android.wrapper.config.WrapConfig;
import org.apache.commons.cli.BasicParser;
import org.apache.commons.cli.CommandLine;
import org.apache.commons.cli.HelpFormatter;
import org.apache.commons.cli.Option;
import org.apache.commons.cli.OptionBuilder;
import org.apache.commons.cli.Options;
import org.apache.commons.cli.ParseException;

public class CAAPKWrapper {
  public static void main(String[] paramArrayOfString) {
    boolean bool1;
    boolean bool2;
    boolean bool3;
    String str1;
    String str2;
    String str3;
    String str4;
    boolean bool4 = true;
    Options options = new Options();
    options.addOption(new Option("verbose", "print extra logging messages"));
    options.addOption(new Option("notsa", "Don't use Time Stamping Authority for jarsigner"));
    options.addOption(new Option("nores", "Don't decompile resources in APK file."));
    options.addOption(new Option("nosign", "Don't sign the wrapped APK file."));
    OptionBuilder.withArgName("rules");
    OptionBuilder.hasArg();
    OptionBuilder.withDescription("Instrumentation rules xml file");
    options.addOption(OptionBuilder.create("rules"));
    OptionBuilder.withArgName("appname.apk");
    OptionBuilder.hasArg();
    OptionBuilder.withDescription("APK file to wrap");
    options.addOption(OptionBuilder.create("apk"));
    OptionBuilder.withArgName("camdo.plist");
    OptionBuilder.hasArg();
    OptionBuilder.withDescription("Configuration file");
    options.addOption(OptionBuilder.create("plist"));
    OptionBuilder.withArgName("Signing Properties");
    OptionBuilder.hasArg();
    OptionBuilder.withDescription("Jarsigner Config");
    Option option3 = OptionBuilder.create("signconfig");
    options.addOption(option3);
    OptionBuilder.withArgName("buildtype");
    OptionBuilder.hasArg();
    OptionBuilder.withDescription("MDO SDK Build Type");
    Option option1 = OptionBuilder.create("buildtype");
    OptionBuilder.withArgName("outputFile");
    OptionBuilder.hasArg();
    OptionBuilder.withDescription("Wrapped apk file name");
    options.addOption(OptionBuilder.create("outputFile"));
    OptionBuilder.withArgName("disablejsinterception");
    OptionBuilder.hasArg();
    OptionBuilder.withDescription("Disable JS Interception");
    Option option2 = OptionBuilder.create("disablejsinterception");
    options.addOption(option1);
    options.addOption(option2);
    BasicParser basicParser = new BasicParser();
    try {
      CommandLine commandLine = basicParser.parse(options, paramArrayOfString);
      str1 = "release";
      if (commandLine.hasOption("outputFile")) {
        String str = commandLine.getOptionValue("outputFile");
      } else {
        paramArrayOfString = null;
      } 
      if (commandLine.hasOption("verbose")) {
        bool1 = true;
      } else {
        bool1 = false;
      } 
      if (commandLine.hasOption("disablejsinterception")) {
        bool2 = Boolean.valueOf(commandLine.getOptionValue("disablejsinterception")).booleanValue();
      } else {
        bool2 = false;
      } 
      if (commandLine.hasOption("buildtype"))
        str1 = commandLine.getOptionValue("buildtype"); 
      if (commandLine.hasOption("apk")) {
        String str = commandLine.getOptionValue("apk");
      } else {
        option2 = null;
      } 
      if (commandLine.hasOption("signconfig")) {
        str2 = commandLine.getOptionValue("signconfig");
      } else {
        str2 = null;
      } 
      if (commandLine.hasOption("plist")) {
        str3 = commandLine.getOptionValue("plist");
      } else {
        str3 = null;
      } 
      if (commandLine.hasOption("rules")) {
        str4 = commandLine.getOptionValue("rules");
      } else {
        str4 = null;
      } 
      if (commandLine.hasOption("nores")) {
        bool3 = true;
      } else {
        bool3 = false;
      } 
      if (!commandLine.hasOption("nosign"))
        bool4 = false; 
      if (option2 == null || str3 == null || option3 == null || str4 == null) {
        (new HelpFormatter()).printHelp("CAAPKWrapper", options);
        return;
      } 
    } catch (ParseException parseException) {
      System.err.println("Parsing failed.  Reason: " + parseException.getMessage());
      return;
    } 
    (new CAAPKWrapper()).runWrapper((String)option2, str2, str3, str4, bool1, bool3, bool4, str1, bool2, (String)parseException);
  }
  
  private void runWrapper(String paramString1, String paramString2, String paramString3, String paramString4, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3, String paramString5, boolean paramBoolean4, String paramString6) {
    try {
      WrapConfig wrapConfig = new WrapConfig();
      wrapConfig.setOutputFileName(paramString6);
      wrapConfig.setApkFile(paramString1);
      wrapConfig.setPlistFile(paramString3);
      wrapConfig.setRulesFile(paramString4);
      wrapConfig.setVerbose(paramBoolean1);
      wrapConfig.setNores(paramBoolean2);
      wrapConfig.setDisableJsInterception(paramBoolean4);
      wrapConfig.setBuildType(paramString5);
      wrapConfig.setSignConfig(new SignConfig(paramString2, paramBoolean3));
      Wrapper.doWrap(wrapConfig);
      return;
    } catch (Exception exception) {
      System.out.println("Exception: " + exception.getMessage());
      exception.printStackTrace();
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\ca\android\wrapper\CAAPKWrapper.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */