.class public Lcom/ca/android/wrapper/CAAPKWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 15

    .prologue
    const/4 v7, 0x1

    const/4 v11, 0x0

    const/4 v0, 0x0

    .line 13
    .line 14
    new-instance v12, Lorg/apache/commons/cli/Options;

    invoke-direct {v12}, Lorg/apache/commons/cli/Options;-><init>()V

    .line 16
    new-instance v1, Lorg/apache/commons/cli/Option;

    const-string v2, "verbose"

    const-string v3, "print extra logging messages"

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/cli/Option;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    invoke-virtual {v12, v1}, Lorg/apache/commons/cli/Options;->addOption(Lorg/apache/commons/cli/Option;)Lorg/apache/commons/cli/Options;

    .line 19
    new-instance v1, Lorg/apache/commons/cli/Option;

    const-string v2, "notsa"

    const-string v3, "Don\'t use Time Stamping Authority for jarsigner"

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/cli/Option;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    invoke-virtual {v12, v1}, Lorg/apache/commons/cli/Options;->addOption(Lorg/apache/commons/cli/Option;)Lorg/apache/commons/cli/Options;

    .line 22
    new-instance v1, Lorg/apache/commons/cli/Option;

    const-string v2, "nores"

    const-string v3, "Don\'t decompile resources in APK file."

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/cli/Option;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    invoke-virtual {v12, v1}, Lorg/apache/commons/cli/Options;->addOption(Lorg/apache/commons/cli/Option;)Lorg/apache/commons/cli/Options;

    .line 25
    new-instance v1, Lorg/apache/commons/cli/Option;

    const-string v2, "nosign"

    const-string v3, "Don\'t sign the wrapped APK file."

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/cli/Option;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    invoke-virtual {v12, v1}, Lorg/apache/commons/cli/Options;->addOption(Lorg/apache/commons/cli/Option;)Lorg/apache/commons/cli/Options;

    .line 28
    const-string v1, "rules"

    invoke-static {v1}, Lorg/apache/commons/cli/OptionBuilder;->withArgName(Ljava/lang/String;)Lorg/apache/commons/cli/OptionBuilder;

    .line 29
    invoke-static {}, Lorg/apache/commons/cli/OptionBuilder;->hasArg()Lorg/apache/commons/cli/OptionBuilder;

    const-string v1, "Instrumentation rules xml file"

    .line 30
    invoke-static {v1}, Lorg/apache/commons/cli/OptionBuilder;->withDescription(Ljava/lang/String;)Lorg/apache/commons/cli/OptionBuilder;

    const-string v1, "rules"

    .line 31
    invoke-static {v1}, Lorg/apache/commons/cli/OptionBuilder;->create(Ljava/lang/String;)Lorg/apache/commons/cli/Option;

    move-result-object v1

    .line 33
    invoke-virtual {v12, v1}, Lorg/apache/commons/cli/Options;->addOption(Lorg/apache/commons/cli/Option;)Lorg/apache/commons/cli/Options;

    .line 35
    const-string v1, "appname.apk"

    invoke-static {v1}, Lorg/apache/commons/cli/OptionBuilder;->withArgName(Ljava/lang/String;)Lorg/apache/commons/cli/OptionBuilder;

    .line 36
    invoke-static {}, Lorg/apache/commons/cli/OptionBuilder;->hasArg()Lorg/apache/commons/cli/OptionBuilder;

    const-string v1, "APK file to wrap"

    .line 37
    invoke-static {v1}, Lorg/apache/commons/cli/OptionBuilder;->withDescription(Ljava/lang/String;)Lorg/apache/commons/cli/OptionBuilder;

    const-string v1, "apk"

    .line 38
    invoke-static {v1}, Lorg/apache/commons/cli/OptionBuilder;->create(Ljava/lang/String;)Lorg/apache/commons/cli/Option;

    move-result-object v1

    .line 39
    invoke-virtual {v12, v1}, Lorg/apache/commons/cli/Options;->addOption(Lorg/apache/commons/cli/Option;)Lorg/apache/commons/cli/Options;

    .line 41
    const-string v1, "camdo.plist"

    invoke-static {v1}, Lorg/apache/commons/cli/OptionBuilder;->withArgName(Ljava/lang/String;)Lorg/apache/commons/cli/OptionBuilder;

    .line 42
    invoke-static {}, Lorg/apache/commons/cli/OptionBuilder;->hasArg()Lorg/apache/commons/cli/OptionBuilder;

    const-string v1, "Configuration file"

    .line 43
    invoke-static {v1}, Lorg/apache/commons/cli/OptionBuilder;->withDescription(Ljava/lang/String;)Lorg/apache/commons/cli/OptionBuilder;

    const-string v1, "plist"

    .line 44
    invoke-static {v1}, Lorg/apache/commons/cli/OptionBuilder;->create(Ljava/lang/String;)Lorg/apache/commons/cli/Option;

    move-result-object v1

    .line 45
    invoke-virtual {v12, v1}, Lorg/apache/commons/cli/Options;->addOption(Lorg/apache/commons/cli/Option;)Lorg/apache/commons/cli/Options;

    .line 47
    const-string v1, "Signing Properties"

    invoke-static {v1}, Lorg/apache/commons/cli/OptionBuilder;->withArgName(Ljava/lang/String;)Lorg/apache/commons/cli/OptionBuilder;

    .line 48
    invoke-static {}, Lorg/apache/commons/cli/OptionBuilder;->hasArg()Lorg/apache/commons/cli/OptionBuilder;

    const-string v1, "Jarsigner Config"

    .line 49
    invoke-static {v1}, Lorg/apache/commons/cli/OptionBuilder;->withDescription(Ljava/lang/String;)Lorg/apache/commons/cli/OptionBuilder;

    const-string v1, "signconfig"

    .line 50
    invoke-static {v1}, Lorg/apache/commons/cli/OptionBuilder;->create(Ljava/lang/String;)Lorg/apache/commons/cli/Option;

    move-result-object v13

    .line 51
    invoke-virtual {v12, v13}, Lorg/apache/commons/cli/Options;->addOption(Lorg/apache/commons/cli/Option;)Lorg/apache/commons/cli/Options;

    .line 52
    const-string v1, "buildtype"

    invoke-static {v1}, Lorg/apache/commons/cli/OptionBuilder;->withArgName(Ljava/lang/String;)Lorg/apache/commons/cli/OptionBuilder;

    .line 53
    invoke-static {}, Lorg/apache/commons/cli/OptionBuilder;->hasArg()Lorg/apache/commons/cli/OptionBuilder;

    const-string v1, "MDO SDK Build Type"

    .line 54
    invoke-static {v1}, Lorg/apache/commons/cli/OptionBuilder;->withDescription(Ljava/lang/String;)Lorg/apache/commons/cli/OptionBuilder;

    const-string v1, "buildtype"

    .line 55
    invoke-static {v1}, Lorg/apache/commons/cli/OptionBuilder;->create(Ljava/lang/String;)Lorg/apache/commons/cli/Option;

    move-result-object v1

    .line 57
    const-string v2, "outputFile"

    invoke-static {v2}, Lorg/apache/commons/cli/OptionBuilder;->withArgName(Ljava/lang/String;)Lorg/apache/commons/cli/OptionBuilder;

    .line 58
    invoke-static {}, Lorg/apache/commons/cli/OptionBuilder;->hasArg()Lorg/apache/commons/cli/OptionBuilder;

    const-string v2, "Wrapped apk file name"

    .line 59
    invoke-static {v2}, Lorg/apache/commons/cli/OptionBuilder;->withDescription(Ljava/lang/String;)Lorg/apache/commons/cli/OptionBuilder;

    const-string v2, "outputFile"

    .line 60
    invoke-static {v2}, Lorg/apache/commons/cli/OptionBuilder;->create(Ljava/lang/String;)Lorg/apache/commons/cli/Option;

    move-result-object v2

    .line 62
    invoke-virtual {v12, v2}, Lorg/apache/commons/cli/Options;->addOption(Lorg/apache/commons/cli/Option;)Lorg/apache/commons/cli/Options;

    .line 63
    const-string v2, "disablejsinterception"

    invoke-static {v2}, Lorg/apache/commons/cli/OptionBuilder;->withArgName(Ljava/lang/String;)Lorg/apache/commons/cli/OptionBuilder;

    .line 64
    invoke-static {}, Lorg/apache/commons/cli/OptionBuilder;->hasArg()Lorg/apache/commons/cli/OptionBuilder;

    const-string v2, "Disable JS Interception"

    .line 65
    invoke-static {v2}, Lorg/apache/commons/cli/OptionBuilder;->withDescription(Ljava/lang/String;)Lorg/apache/commons/cli/OptionBuilder;

    const-string v2, "disablejsinterception"

    .line 66
    invoke-static {v2}, Lorg/apache/commons/cli/OptionBuilder;->create(Ljava/lang/String;)Lorg/apache/commons/cli/Option;

    move-result-object v2

    .line 68
    invoke-virtual {v12, v1}, Lorg/apache/commons/cli/Options;->addOption(Lorg/apache/commons/cli/Option;)Lorg/apache/commons/cli/Options;

    .line 69
    invoke-virtual {v12, v2}, Lorg/apache/commons/cli/Options;->addOption(Lorg/apache/commons/cli/Option;)Lorg/apache/commons/cli/Options;

    .line 71
    new-instance v1, Lorg/apache/commons/cli/BasicParser;

    invoke-direct {v1}, Lorg/apache/commons/cli/BasicParser;-><init>()V

    .line 76
    :try_start_0
    invoke-interface {v1, v12, p0}, Lorg/apache/commons/cli/CommandLineParser;->parse(Lorg/apache/commons/cli/Options;[Ljava/lang/String;)Lorg/apache/commons/cli/CommandLine;
    :try_end_0
    .catch Lorg/apache/commons/cli/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v14

    .line 91
    const-string v8, "release"

    .line 95
    const-string v1, "outputFile"

    invoke-virtual {v14, v1}, Lorg/apache/commons/cli/CommandLine;->hasOption(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 96
    const-string v1, "outputFile"

    invoke-virtual {v14, v1}, Lorg/apache/commons/cli/CommandLine;->getOptionValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 98
    :goto_0
    const-string v1, "verbose"

    invoke-virtual {v14, v1}, Lorg/apache/commons/cli/CommandLine;->hasOption(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    move v5, v7

    .line 101
    :goto_1
    const-string v1, "disablejsinterception"

    invoke-virtual {v14, v1}, Lorg/apache/commons/cli/CommandLine;->hasOption(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 102
    const-string v1, "disablejsinterception"

    invoke-virtual {v14, v1}, Lorg/apache/commons/cli/CommandLine;->getOptionValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    .line 104
    :goto_2
    const-string v1, "buildtype"

    invoke-virtual {v14, v1}, Lorg/apache/commons/cli/CommandLine;->hasOption(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 105
    const-string v1, "buildtype"

    invoke-virtual {v14, v1}, Lorg/apache/commons/cli/CommandLine;->getOptionValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 107
    :cond_0
    const-string v1, "apk"

    invoke-virtual {v14, v1}, Lorg/apache/commons/cli/CommandLine;->hasOption(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 108
    const-string v1, "apk"

    invoke-virtual {v14, v1}, Lorg/apache/commons/cli/CommandLine;->getOptionValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 111
    :goto_3
    const-string v2, "signconfig"

    invoke-virtual {v14, v2}, Lorg/apache/commons/cli/CommandLine;->hasOption(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 112
    const-string v2, "signconfig"

    invoke-virtual {v14, v2}, Lorg/apache/commons/cli/CommandLine;->getOptionValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 116
    :goto_4
    const-string v3, "plist"

    invoke-virtual {v14, v3}, Lorg/apache/commons/cli/CommandLine;->hasOption(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 117
    const-string v3, "plist"

    invoke-virtual {v14, v3}, Lorg/apache/commons/cli/CommandLine;->getOptionValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 120
    :goto_5
    const-string v4, "rules"

    invoke-virtual {v14, v4}, Lorg/apache/commons/cli/CommandLine;->hasOption(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 121
    const-string v0, "rules"

    invoke-virtual {v14, v0}, Lorg/apache/commons/cli/CommandLine;->getOptionValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 124
    :goto_6
    const-string v0, "nores"

    invoke-virtual {v14, v0}, Lorg/apache/commons/cli/CommandLine;->hasOption(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v6, v7

    .line 128
    :goto_7
    const-string v0, "nosign"

    invoke-virtual {v14, v0}, Lorg/apache/commons/cli/CommandLine;->hasOption(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 132
    :goto_8
    if-eqz v1, :cond_1

    if-eqz v3, :cond_1

    if-eqz v13, :cond_1

    if-nez v4, :cond_2

    .line 134
    :cond_1
    new-instance v0, Lorg/apache/commons/cli/HelpFormatter;

    invoke-direct {v0}, Lorg/apache/commons/cli/HelpFormatter;-><init>()V

    .line 135
    const-string v1, "CAAPKWrapper"

    invoke-virtual {v0, v1, v12}, Lorg/apache/commons/cli/HelpFormatter;->printHelp(Ljava/lang/String;Lorg/apache/commons/cli/Options;)V

    .line 141
    :goto_9
    return-void

    .line 79
    :catch_0
    move-exception v0

    .line 81
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Parsing failed.  Reason: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/apache/commons/cli/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_9

    .line 139
    :cond_2
    new-instance v0, Lcom/ca/android/wrapper/CAAPKWrapper;

    invoke-direct {v0}, Lcom/ca/android/wrapper/CAAPKWrapper;-><init>()V

    .line 140
    invoke-direct/range {v0 .. v10}, Lcom/ca/android/wrapper/CAAPKWrapper;->runWrapper(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;ZLjava/lang/String;)V

    goto :goto_9

    :cond_3
    move v7, v11

    goto :goto_8

    :cond_4
    move v6, v11

    goto :goto_7

    :cond_5
    move-object v4, v0

    goto :goto_6

    :cond_6
    move-object v3, v0

    goto :goto_5

    :cond_7
    move-object v2, v0

    goto :goto_4

    :cond_8
    move-object v1, v0

    goto :goto_3

    :cond_9
    move v9, v11

    goto/16 :goto_2

    :cond_a
    move v5, v11

    goto/16 :goto_1

    :cond_b
    move-object v10, v0

    goto/16 :goto_0
.end method

.method private runWrapper(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;ZLjava/lang/String;)V
    .locals 4

    .prologue
    .line 148
    :try_start_0
    new-instance v0, Lcom/ca/android/wrapper/config/WrapConfig;

    invoke-direct {v0}, Lcom/ca/android/wrapper/config/WrapConfig;-><init>()V

    .line 149
    invoke-virtual {v0, p10}, Lcom/ca/android/wrapper/config/WrapConfig;->setOutputFileName(Ljava/lang/String;)V

    .line 150
    invoke-virtual {v0, p1}, Lcom/ca/android/wrapper/config/WrapConfig;->setApkFile(Ljava/lang/String;)V

    .line 151
    invoke-virtual {v0, p3}, Lcom/ca/android/wrapper/config/WrapConfig;->setPlistFile(Ljava/lang/String;)V

    .line 152
    invoke-virtual {v0, p4}, Lcom/ca/android/wrapper/config/WrapConfig;->setRulesFile(Ljava/lang/String;)V

    .line 153
    invoke-virtual {v0, p5}, Lcom/ca/android/wrapper/config/WrapConfig;->setVerbose(Z)V

    .line 154
    invoke-virtual {v0, p6}, Lcom/ca/android/wrapper/config/WrapConfig;->setNores(Z)V

    .line 155
    invoke-virtual {v0, p9}, Lcom/ca/android/wrapper/config/WrapConfig;->setDisableJsInterception(Z)V

    .line 156
    invoke-virtual {v0, p8}, Lcom/ca/android/wrapper/config/WrapConfig;->setBuildType(Ljava/lang/String;)V

    .line 157
    new-instance v1, Lcom/ca/android/wrapper/config/SignConfig;

    invoke-direct {v1, p2, p7}, Lcom/ca/android/wrapper/config/SignConfig;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Lcom/ca/android/wrapper/config/WrapConfig;->setSignConfig(Lcom/ca/android/wrapper/config/SignConfig;)V

    .line 158
    invoke-static {v0}, Lcom/ca/android/wrapper/Wrapper;->doWrap(Lcom/ca/android/wrapper/config/WrapConfig;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    :goto_0
    return-void

    .line 159
    :catch_0
    move-exception v0

    .line 160
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 161
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
