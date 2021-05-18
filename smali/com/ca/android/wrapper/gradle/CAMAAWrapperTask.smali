.class public Lcom/ca/android/wrapper/gradle/CAMAAWrapperTask;
.super Lorg/gradle/api/DefaultTask;
.source "SourceFile"


# static fields
.field static final APK_PATH:Ljava/lang/String; = "apkFilePath"

.field static final BUILD_TYPE:Ljava/lang/String; = "buildType"

.field static final CA_EMM_HOME:Ljava/lang/String; = "CA_EMM_HOME"

.field static final DEFAULT_KEY_STORE_FILE:Ljava/lang/String; = "conf/mdo.keystore"

.field static final DISABLE_JS_INTERCEPTION:Ljava/lang/String; = "disablejsinterception"

.field static final EMM_HOME:Ljava/lang/String; = "emmHome"

.field static final KEY_STORE_PATH:Ljava/lang/String; = "keyStoreFilePath"

.field public static final NAME:Ljava/lang/String; = "maaWrapperTask"

.field static final NO_RES:Ljava/lang/String; = "noResFlag"

.field static final NO_SIGN:Ljava/lang/String; = "noSignFlag"

.field static final OUTPUT_FILENAME:Ljava/lang/String; = "outputFileName"

.field static final PLIST_PATH:Ljava/lang/String; = "plistFilePath"

.field static final SIGN_PROPERTIES_PATH:Ljava/lang/String; = "signConfig"

.field static final VERBOSE:Ljava/lang/String; = "verboseFlag"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lorg/gradle/api/DefaultTask;-><init>()V

    return-void
.end method


# virtual methods
.method public wrapperTask()V
    .locals 13
    .annotation runtime Lorg/gradle/api/tasks/TaskAction;
    .end annotation

    .prologue
    const/4 v12, 0x1

    const/4 v8, 0x0

    .line 39
    invoke-virtual {p0}, Lcom/ca/android/wrapper/gradle/CAMAAWrapperTask;->getExtensions()Lorg/gradle/api/plugins/ExtensionContainer;

    move-result-object v0

    invoke-interface {v0}, Lorg/gradle/api/plugins/ExtensionContainer;->getExtraProperties()Lorg/gradle/api/plugins/ExtraPropertiesExtension;

    move-result-object v0

    .line 40
    invoke-interface {v0}, Lorg/gradle/api/plugins/ExtraPropertiesExtension;->getProperties()Ljava/util/Map;

    move-result-object v10

    .line 41
    const-string v0, "apkFilePath"

    invoke-interface {v10, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 42
    const-string v1, "plistFilePath"

    invoke-interface {v10, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 43
    const-string v2, "buildType"

    invoke-interface {v10, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 44
    const-string v3, "signConfig"

    invoke-interface {v10, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 45
    const-string v4, "disablejsinterception"

    invoke-interface {v10, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    .line 46
    const-string v4, "outputFileName"

    invoke-interface {v10, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 48
    const/4 v5, 0x0

    .line 49
    const-string v6, "emmHome"

    invoke-interface {v10, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_7

    .line 50
    const-string v5, "emmHome"

    invoke-interface {v10, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object v6, v5

    .line 53
    :goto_0
    const-string v5, "verboseFlag"

    invoke-interface {v10, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    .line 54
    if-eqz v5, :cond_6

    .line 55
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    move v7, v5

    .line 59
    :goto_1
    const-string v5, "noResFlag"

    invoke-interface {v10, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    .line 60
    if-eqz v5, :cond_5

    .line 61
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    move v9, v5

    .line 65
    :goto_2
    const-string v5, "noSignFlag"

    invoke-interface {v10, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    .line 66
    if-eqz v5, :cond_0

    .line 67
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    .line 70
    :cond_0
    if-eqz v6, :cond_1

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v5, v12, :cond_4

    .line 71
    :cond_1
    const-string v5, "ca.emm.home"

    invoke-static {v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 73
    :goto_3
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v6, v12, :cond_3

    .line 74
    :cond_2
    const-string v5, "CA_EMM_HOME"

    invoke-static {v5}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 76
    :cond_3
    const-string v6, "AUTO_DETECT"

    .line 78
    :try_start_0
    sput-object v5, Lcom/ca/android/wrapper/Wrapper;->emmHome:Ljava/lang/String;

    .line 79
    new-instance v5, Lcom/ca/android/wrapper/config/WrapConfig;

    invoke-direct {v5}, Lcom/ca/android/wrapper/config/WrapConfig;-><init>()V

    .line 80
    invoke-virtual {v5, v0}, Lcom/ca/android/wrapper/config/WrapConfig;->setApkFile(Ljava/lang/String;)V

    .line 81
    invoke-virtual {v5, v1}, Lcom/ca/android/wrapper/config/WrapConfig;->setPlistFile(Ljava/lang/String;)V

    .line 82
    invoke-virtual {v5, v6}, Lcom/ca/android/wrapper/config/WrapConfig;->setRulesFile(Ljava/lang/String;)V

    .line 83
    invoke-virtual {v5, v2}, Lcom/ca/android/wrapper/config/WrapConfig;->setBuildType(Ljava/lang/String;)V

    .line 84
    invoke-virtual {v5, v11}, Lcom/ca/android/wrapper/config/WrapConfig;->setDisableJsInterception(Z)V

    .line 85
    invoke-virtual {v5, v9}, Lcom/ca/android/wrapper/config/WrapConfig;->setNores(Z)V

    .line 86
    invoke-virtual {v5, v7}, Lcom/ca/android/wrapper/config/WrapConfig;->setVerbose(Z)V

    .line 87
    new-instance v0, Lcom/ca/android/wrapper/config/SignConfig;

    invoke-direct {v0, v3, v8}, Lcom/ca/android/wrapper/config/SignConfig;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v5, v0}, Lcom/ca/android/wrapper/config/WrapConfig;->setSignConfig(Lcom/ca/android/wrapper/config/SignConfig;)V

    .line 88
    invoke-virtual {v5, v4}, Lcom/ca/android/wrapper/config/WrapConfig;->setOutputFileName(Ljava/lang/String;)V

    .line 89
    invoke-static {v5}, Lcom/ca/android/wrapper/Wrapper;->doWrap(Lcom/ca/android/wrapper/config/WrapConfig;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    return-void

    .line 90
    :catch_0
    move-exception v0

    .line 92
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 93
    new-instance v1, Lorg/gradle/api/GradleException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wrapping unsuccesful : Reason : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " Detailed Exception Above"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/gradle/api/GradleException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    move-object v5, v6

    goto :goto_3

    :cond_5
    move v9, v8

    goto/16 :goto_2

    :cond_6
    move v7, v8

    goto/16 :goto_1

    :cond_7
    move-object v6, v5

    goto/16 :goto_0
.end method
