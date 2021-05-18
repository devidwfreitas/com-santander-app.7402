.class public Lcom/ca/android/wrapper/config/CommonConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ALIGNED:Ljava/lang/String; = "wrapped_"

.field public static final APKTOOL_EXTRACT_DIR:Ljava/lang/String; = "apktoolExtract"

.field private static final CLASS_REPLACEMENT_NODE:Ljava/lang/String; = "classReplacement"

.field public static final CONF_DIR:Ljava/lang/String; = "CONF_DIR"

.field public static final KEYSTORE_FILE:Ljava/lang/String; = "CERTIFICATE_DIR"

.field public static final MANIFEST_MODDED:Ljava/lang/String; = "manifest_modded_"

.field public static final MODDED:Ljava/lang/String; = "modded_"

.field public static final OS_NAME:Ljava/lang/String; = "OSNAME"

.field public static final OUTPUT_APK_DIR:I = 0x2

.field public static final OUTPUT_SMALI_DIR:I = 0x1

.field private static final REGEX_REPLACEMENT_NODE:Ljava/lang/String; = "regexReplacement"

.field public static final SDK_APK:Ljava/lang/String; = "SDK_APK"

.field public static final SDK_DIR:Ljava/lang/String; = "SDK_DIR"

.field public static final SIGNED:Ljava/lang/String; = "signed_"

.field public static final SMALI_REPLACEMENT_FILE:Ljava/lang/String; = "SMALI_REPLACEMENT_FILE"

.field private static final SPECIAL_REPLACEMENT_NODE:Ljava/lang/String; = "specialReplacement"

.field public static final TEMP_APK_DIR:I = 0x4

.field public static final TEMP_DIR:I = 0x3

.field public static final TOOLS_DIR:Ljava/lang/String; = "TOOLS_DIR"

.field private static final WRAPPER_METHOD_INSERT_NODE:Ljava/lang/String; = "wrapperMethodInsert"

.field private static final XML_ATTRIBUTE_TARGETFILE:Ljava/lang/String; = "targetFile"

.field private static final XML_NODE_FILE:Ljava/lang/String; = "file"

.field private static final XML_NODE_FROM:Ljava/lang/String; = "from"

.field private static final XML_NODE_INSERT_AFTER:Ljava/lang/String; = "insertAfter"

.field private static final XML_NODE_INSERT_WHAT:Ljava/lang/String; = "insertWhat"

.field private static final XML_NODE_MATCHER:Ljava/lang/String; = "matcher"

.field private static final XML_NODE_METHODTYPE_FROM:Ljava/lang/String; = "methodFrom"

.field private static final XML_NODE_METHODTYPE_TO:Ljava/lang/String; = "methodTo"

.field private static final XML_NODE_PATTERN:Ljava/lang/String; = "pattern"

.field private static final XML_NODE_SKIP_FILE:Ljava/lang/String; = "skipFile"

.field private static final XML_NODE_TO:Ljava/lang/String; = "to"

.field private static final XML_NODE_WRAPPER_METHOD:Ljava/lang/String; = "wrapperMethod"

.field public static allPermissions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static originalManifestContent:Ljava/lang/String;

.field public static productHome:Ljava/lang/String;


# instance fields
.field private classReplaceData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ca/android/wrapper/config/ReplacementElement;",
            ">;"
        }
    .end annotation
.end field

.field public isMultiDex:Z

.field private logger:Lcom/ca/android/wrapper/util/Logger;

.field private prop:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private regexReplaceData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ca/android/wrapper/config/ReplacementElement;",
            ">;"
        }
    .end annotation
.end field

.field public sdkSmaliDir:Ljava/lang/String;

.field private specialReplaceData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ca/android/wrapper/config/ReplacementElement;",
            ">;"
        }
    .end annotation
.end field

.field private tempFolder:Ljava/io/File;

.field private wrapperMethodElements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ca/android/wrapper/config/WrapperMethodInsertElement;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-static {}, Lcom/ca/android/wrapper/util/Logger;->getLogger()Lcom/ca/android/wrapper/util/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/ca/android/wrapper/config/CommonConfig;->logger:Lcom/ca/android/wrapper/util/Logger;

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ca/android/wrapper/config/CommonConfig;->tempFolder:Ljava/io/File;

    .line 86
    const-string v0, ""

    iput-object v0, p0, Lcom/ca/android/wrapper/config/CommonConfig;->sdkSmaliDir:Ljava/lang/String;

    .line 87
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ca/android/wrapper/config/CommonConfig;->isMultiDex:Z

    return-void
.end method

.method public static getProductHomeFromSystemEnv()Ljava/lang/String;
    .locals 2

    .prologue
    .line 108
    const-string v0, "ca.emm.home"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 109
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    .line 110
    :cond_0
    const-string v0, "CA_EMM_HOME"

    invoke-static {v0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 112
    :cond_1
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "\\"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 113
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 115
    :cond_2
    return-object v0
.end method

.method private processIStubSmali(Ljava/io/File;)Z
    .locals 11

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x1

    .line 247
    .line 249
    const/4 v4, 0x0

    .line 251
    :try_start_0
    new-instance v7, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/FileReader;

    invoke-direct {v0, p1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v7, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5

    const/4 v5, 0x0

    move-object v0, v6

    move-object v2, v6

    move-object v1, v6

    .line 252
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 253
    if-nez v1, :cond_1

    .line 255
    const-string v9, ".class public.*abstract.* L(.*);"

    .line 256
    invoke-static {v9}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    .line 257
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->matches()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 258
    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 261
    :cond_1
    if-nez v2, :cond_2

    .line 262
    const-string v9, ".*forClass = \"(.*)\""

    .line 263
    invoke-static {v9}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    .line 264
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->matches()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 265
    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 268
    :cond_2
    if-nez v0, :cond_0

    .line 269
    const-string v9, ".*id = \"(.*)\""

    .line 270
    invoke-static {v9}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    .line 271
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->matches()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 272
    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    goto :goto_0

    .line 277
    :cond_3
    if-eqz v7, :cond_4

    if-eqz v6, :cond_6

    :try_start_2
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 283
    :cond_4
    :goto_1
    if-eqz v1, :cond_9

    if-eqz v2, :cond_9

    .line 284
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "L"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 285
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "L"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 287
    new-instance v6, Lcom/ca/android/wrapper/config/ReplacementElement;

    invoke-direct {v6}, Lcom/ca/android/wrapper/config/ReplacementElement;-><init>()V

    .line 288
    const-string v7, "specialReplacement"

    invoke-virtual {v6, v7}, Lcom/ca/android/wrapper/config/ReplacementElement;->setType(Ljava/lang/String;)V

    .line 289
    if-nez v0, :cond_5

    const-string v0, "istub"

    :cond_5
    invoke-virtual {v6, v0}, Lcom/ca/android/wrapper/config/ReplacementElement;->setReplaceFor(Ljava/lang/String;)V

    .line 290
    invoke-virtual {v6}, Lcom/ca/android/wrapper/config/ReplacementElement;->getPatterns()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 291
    invoke-virtual {v6, v4}, Lcom/ca/android/wrapper/config/ReplacementElement;->setReplaceFrom(Ljava/lang/String;)V

    .line 292
    invoke-virtual {v6, v5}, Lcom/ca/android/wrapper/config/ReplacementElement;->setReplaceTo(Ljava/lang/String;)V

    .line 293
    const-string v0, "com/ca/android/app"

    invoke-virtual {v6, v0}, Lcom/ca/android/wrapper/config/ReplacementElement;->setFile(Ljava/lang/String;)V

    .line 294
    iget-object v0, p0, Lcom/ca/android/wrapper/config/CommonConfig;->logger:Lcom/ca/android/wrapper/util/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Adding IStub replacement for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " => "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ca/android/wrapper/util/Logger;->debug(Ljava/lang/String;)V

    .line 295
    iget-object v0, p0, Lcom/ca/android/wrapper/config/CommonConfig;->specialReplaceData:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v3

    .line 301
    :goto_2
    return v0

    .line 277
    :catch_0
    move-exception v6

    :try_start_3
    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_1

    :catch_1
    move-exception v5

    move-object v6, v0

    move-object v0, v5

    .line 278
    :goto_3
    iget-object v5, p0, Lcom/ca/android/wrapper/config/CommonConfig;->logger:Lcom/ca/android/wrapper/util/Logger;

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/ca/android/wrapper/util/Logger;->debug(Ljava/lang/String;)V

    move-object v0, v6

    .line 281
    goto/16 :goto_1

    .line 277
    :cond_6
    :try_start_4
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_1

    .line 279
    :catch_2
    move-exception v5

    move-object v6, v0

    move-object v0, v5

    .line 280
    :goto_4
    iget-object v5, p0, Lcom/ca/android/wrapper/config/CommonConfig;->logger:Lcom/ca/android/wrapper/util/Logger;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/ca/android/wrapper/util/Logger;->debug(Ljava/lang/String;)V

    move-object v0, v6

    goto/16 :goto_1

    .line 251
    :catch_3
    move-exception v5

    :try_start_5
    throw v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 277
    :catchall_0
    move-exception v6

    move-object v10, v6

    move-object v6, v5

    move-object v5, v10

    :goto_5
    if-eqz v7, :cond_7

    if-eqz v6, :cond_8

    :try_start_6
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    :cond_7
    :goto_6
    :try_start_7
    throw v5

    :catch_4
    move-exception v7

    invoke-virtual {v6, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_6

    :cond_8
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_6

    .line 298
    :cond_9
    if-eqz v1, :cond_a

    .line 299
    iget-object v0, p0, Lcom/ca/android/wrapper/config/CommonConfig;->logger:Lcom/ca/android/wrapper/util/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The MAAStub annotation was not found for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ca/android/wrapper/util/Logger;->debug(Ljava/lang/String;)V

    :cond_a
    move v0, v4

    goto :goto_2

    .line 279
    :catch_5
    move-exception v0

    move-object v2, v6

    move-object v1, v6

    goto :goto_4

    .line 277
    :catch_6
    move-exception v0

    move-object v2, v6

    move-object v1, v6

    goto :goto_3

    :catchall_1
    move-exception v5

    goto :goto_5
.end method

.method private processIStubsDir(Ljava/io/File;)V
    .locals 6

    .prologue
    .line 232
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_2

    aget-object v3, v1, v0

    .line 233
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 234
    invoke-direct {p0, v3}, Lcom/ca/android/wrapper/config/CommonConfig;->processIStubsDir(Ljava/io/File;)V

    .line 232
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 236
    :cond_1
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".smali"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 237
    invoke-direct {p0, v3}, Lcom/ca/android/wrapper/config/CommonConfig;->processIStubSmali(Ljava/io/File;)Z

    move-result v4

    .line 239
    if-eqz v4, :cond_0

    .line 240
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    goto :goto_1

    .line 244
    :cond_2
    return-void
.end method

.method private static sdkRequiredPermissions()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 554
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 555
    const-string v1, "android.permission.INTERNET"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 556
    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 557
    const-string v1, "android.permission.ACCESS_WIFI_STATE"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 560
    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 561
    return-object v0
.end method

.method private setClassReplacementList(Lorg/w3c/dom/NodeList;)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 442
    move v1, v0

    :goto_0
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 443
    invoke-interface {p1, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 444
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 445
    check-cast v0, Lorg/w3c/dom/Element;

    .line 446
    new-instance v2, Lcom/ca/android/wrapper/config/ReplacementElement;

    invoke-direct {v2}, Lcom/ca/android/wrapper/config/ReplacementElement;-><init>()V

    .line 447
    const-string v3, "classReplacement"

    invoke-virtual {v2, v3}, Lcom/ca/android/wrapper/config/ReplacementElement;->setType(Ljava/lang/String;)V

    .line 448
    const-string v3, "id"

    invoke-interface {v0, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 449
    invoke-virtual {v2, v3}, Lcom/ca/android/wrapper/config/ReplacementElement;->setReplaceFrom(Ljava/lang/String;)V

    .line 452
    :try_start_0
    const-string v3, "from"

    invoke-interface {v0, v3}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v3

    .line 453
    invoke-virtual {v2, v3}, Lcom/ca/android/wrapper/config/ReplacementElement;->setReplaceFrom(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6

    .line 460
    :goto_1
    :try_start_1
    const-string v3, "to"

    invoke-interface {v0, v3}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v3

    .line 461
    invoke-virtual {v2, v3}, Lcom/ca/android/wrapper/config/ReplacementElement;->setReplaceTo(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    .line 468
    :goto_2
    :try_start_2
    const-string v3, "skipFile"

    invoke-interface {v0, v3}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v3

    .line 469
    invoke-virtual {v2, v3}, Lcom/ca/android/wrapper/config/ReplacementElement;->setSkipFiles(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    .line 476
    :goto_3
    :try_start_3
    const-string v3, "insertAfter"

    invoke-interface {v0, v3}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v3

    .line 477
    invoke-virtual {v2, v3}, Lcom/ca/android/wrapper/config/ReplacementElement;->setInsertAfter(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 484
    :goto_4
    :try_start_4
    const-string v3, "insertWhat"

    invoke-interface {v0, v3}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v3

    .line 485
    invoke-virtual {v2, v3}, Lcom/ca/android/wrapper/config/ReplacementElement;->setInsertWhat(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 491
    :goto_5
    :try_start_5
    const-string v3, "methodFrom"

    invoke-interface {v0, v3}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v3

    .line 492
    invoke-virtual {v2, v3}, Lcom/ca/android/wrapper/config/ReplacementElement;->setMethodFrom(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 500
    :goto_6
    :try_start_6
    const-string v3, "methodTo"

    invoke-interface {v0, v3}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v0

    .line 501
    invoke-virtual {v2, v0}, Lcom/ca/android/wrapper/config/ReplacementElement;->setMethodTo(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 506
    :goto_7
    iget-object v0, p0, Lcom/ca/android/wrapper/config/CommonConfig;->classReplaceData:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 442
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_0

    .line 509
    :cond_1
    return-void

    .line 502
    :catch_0
    move-exception v0

    goto :goto_7

    .line 493
    :catch_1
    move-exception v3

    goto :goto_6

    .line 486
    :catch_2
    move-exception v3

    goto :goto_5

    .line 478
    :catch_3
    move-exception v3

    goto :goto_4

    .line 470
    :catch_4
    move-exception v3

    goto :goto_3

    .line 462
    :catch_5
    move-exception v3

    goto :goto_2

    .line 454
    :catch_6
    move-exception v3

    goto/16 :goto_1
.end method

.method private setRegexReplacementList(Lorg/w3c/dom/NodeList;)V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v3, 0x0

    .line 356
    move v2, v3

    :goto_0
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-ge v2, v0, :cond_3

    .line 357
    invoke-interface {p1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 358
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    if-ne v0, v8, :cond_2

    move-object v0, v1

    .line 359
    check-cast v0, Lorg/w3c/dom/Element;

    .line 360
    new-instance v5, Lcom/ca/android/wrapper/config/ReplacementElement;

    invoke-direct {v5}, Lcom/ca/android/wrapper/config/ReplacementElement;-><init>()V

    .line 361
    const-string v4, "regexReplacement"

    invoke-virtual {v5, v4}, Lcom/ca/android/wrapper/config/ReplacementElement;->setType(Ljava/lang/String;)V

    .line 362
    const-string v4, "id"

    invoke-interface {v0, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 363
    invoke-virtual {v5, v4}, Lcom/ca/android/wrapper/config/ReplacementElement;->setReplaceFrom(Ljava/lang/String;)V

    .line 364
    check-cast v1, Lorg/w3c/dom/Element;

    const-string v4, "pattern"

    invoke-interface {v1, v4}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v6

    move v4, v3

    .line 365
    :goto_1
    invoke-interface {v6}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-ge v4, v1, :cond_1

    .line 366
    invoke-interface {v6, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 367
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v7

    if-ne v7, v8, :cond_0

    .line 368
    check-cast v1, Lorg/w3c/dom/Element;

    .line 369
    invoke-interface {v1}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v1

    .line 370
    invoke-virtual {v5}, Lcom/ca/android/wrapper/config/ReplacementElement;->getPatterns()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 365
    :cond_0
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_1

    .line 375
    :cond_1
    :try_start_0
    const-string v1, "from"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    const/4 v4, 0x0

    invoke-interface {v1, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v1

    .line 376
    invoke-virtual {v5, v1}, Lcom/ca/android/wrapper/config/ReplacementElement;->setReplaceFrom(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 383
    :goto_2
    :try_start_1
    const-string v1, "to"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    const/4 v4, 0x0

    invoke-interface {v1, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v1

    .line 384
    invoke-virtual {v5, v1}, Lcom/ca/android/wrapper/config/ReplacementElement;->setReplaceTo(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 391
    :goto_3
    :try_start_2
    const-string v1, "matcher"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v0

    .line 392
    invoke-virtual {v5, v0}, Lcom/ca/android/wrapper/config/ReplacementElement;->setMatcher(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 397
    :goto_4
    iget-object v0, p0, Lcom/ca/android/wrapper/config/CommonConfig;->regexReplaceData:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 356
    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_0

    .line 402
    :cond_3
    return-void

    .line 393
    :catch_0
    move-exception v0

    goto :goto_4

    .line 385
    :catch_1
    move-exception v1

    goto :goto_3

    .line 377
    :catch_2
    move-exception v1

    goto :goto_2
.end method

.method private setSpecialReplacementList(Lorg/w3c/dom/NodeList;)V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v3, 0x0

    .line 306
    move v2, v3

    :goto_0
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-ge v2, v0, :cond_3

    .line 307
    invoke-interface {p1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 308
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    if-ne v0, v8, :cond_2

    move-object v0, v1

    .line 309
    check-cast v0, Lorg/w3c/dom/Element;

    .line 310
    new-instance v5, Lcom/ca/android/wrapper/config/ReplacementElement;

    invoke-direct {v5}, Lcom/ca/android/wrapper/config/ReplacementElement;-><init>()V

    .line 311
    const-string v4, "specialReplacement"

    invoke-virtual {v5, v4}, Lcom/ca/android/wrapper/config/ReplacementElement;->setType(Ljava/lang/String;)V

    .line 312
    const-string v4, "id"

    invoke-interface {v0, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 313
    invoke-virtual {v5, v4}, Lcom/ca/android/wrapper/config/ReplacementElement;->setReplaceFrom(Ljava/lang/String;)V

    .line 314
    check-cast v1, Lorg/w3c/dom/Element;

    const-string v4, "pattern"

    invoke-interface {v1, v4}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v6

    move v4, v3

    .line 315
    :goto_1
    invoke-interface {v6}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-ge v4, v1, :cond_1

    .line 316
    invoke-interface {v6, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 317
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v7

    if-ne v7, v8, :cond_0

    .line 318
    check-cast v1, Lorg/w3c/dom/Element;

    .line 319
    invoke-interface {v1}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v1

    .line 320
    invoke-virtual {v5}, Lcom/ca/android/wrapper/config/ReplacementElement;->getPatterns()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 315
    :cond_0
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_1

    .line 325
    :cond_1
    :try_start_0
    const-string v1, "from"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    const/4 v4, 0x0

    invoke-interface {v1, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v1

    .line 326
    invoke-virtual {v5, v1}, Lcom/ca/android/wrapper/config/ReplacementElement;->setReplaceFrom(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 333
    :goto_2
    :try_start_1
    const-string v1, "to"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    const/4 v4, 0x0

    invoke-interface {v1, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v1

    .line 334
    invoke-virtual {v5, v1}, Lcom/ca/android/wrapper/config/ReplacementElement;->setReplaceTo(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 341
    :goto_3
    :try_start_2
    const-string v1, "file"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v0

    .line 342
    invoke-virtual {v5, v0}, Lcom/ca/android/wrapper/config/ReplacementElement;->setFile(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 346
    :goto_4
    iget-object v0, p0, Lcom/ca/android/wrapper/config/CommonConfig;->specialReplaceData:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 306
    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_0

    .line 351
    :cond_3
    return-void

    .line 343
    :catch_0
    move-exception v0

    goto :goto_4

    .line 335
    :catch_1
    move-exception v1

    goto :goto_3

    .line 327
    :catch_2
    move-exception v1

    goto :goto_2
.end method


# virtual methods
.method public configureStubs()V
    .locals 5

    .prologue
    .line 223
    const-string v0, "sdkDirectory"

    invoke-virtual {p0, v0}, Lcom/ca/android/wrapper/config/CommonConfig;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 225
    if-eqz v0, :cond_0

    .line 226
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Lcom/ca/android/wrapper/config/CommonConfig;->getTempFolder()Ljava/io/File;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "apktoolExtract"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "com"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "ca"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "android"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "integrations"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 227
    invoke-direct {p0, v1}, Lcom/ca/android/wrapper/config/CommonConfig;->processIStubsDir(Ljava/io/File;)V

    .line 229
    :cond_0
    return-void
.end method

.method public deInitialize()V
    .locals 2

    .prologue
    .line 95
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/ca/android/wrapper/config/CommonConfig;->classReplaceData:Ljava/util/List;

    .line 96
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ca/android/wrapper/config/CommonConfig;->prop:Ljava/util/HashMap;

    .line 97
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ca/android/wrapper/config/CommonConfig;->tempFolder:Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    :goto_0
    return-void

    .line 98
    :catch_0
    move-exception v0

    .line 99
    iget-object v1, p0, Lcom/ca/android/wrapper/config/CommonConfig;->logger:Lcom/ca/android/wrapper/util/Logger;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/ca/android/wrapper/util/Logger;->severe(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public get(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 532
    const/4 v0, 0x0

    .line 533
    packed-switch p1, :pswitch_data_0

    .line 550
    :goto_0
    return-object v0

    .line 535
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ca/android/wrapper/config/CommonConfig;->getTempFolder()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/smali/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 539
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ca/android/wrapper/config/CommonConfig;->getTempFolder()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/apk/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 543
    :pswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ca/android/wrapper/config/CommonConfig;->getTempFolder()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/temp/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 533
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public get(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 528
    iget-object v0, p0, Lcom/ca/android/wrapper/config/CommonConfig;->prop:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getClassReplacementList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/ca/android/wrapper/config/ReplacementElement;",
            ">;"
        }
    .end annotation

    .prologue
    .line 512
    iget-object v0, p0, Lcom/ca/android/wrapper/config/CommonConfig;->classReplaceData:Ljava/util/List;

    return-object v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 572
    iget-object v0, p0, Lcom/ca/android/wrapper/config/CommonConfig;->prop:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 573
    iget-object v0, p0, Lcom/ca/android/wrapper/config/CommonConfig;->prop:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 574
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRegexReplacementList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/ca/android/wrapper/config/ReplacementElement;",
            ">;"
        }
    .end annotation

    .prologue
    .line 520
    iget-object v0, p0, Lcom/ca/android/wrapper/config/CommonConfig;->regexReplaceData:Ljava/util/List;

    return-object v0
.end method

.method public getSpecialReplaceDataList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/ca/android/wrapper/config/ReplacementElement;",
            ">;"
        }
    .end annotation

    .prologue
    .line 516
    iget-object v0, p0, Lcom/ca/android/wrapper/config/CommonConfig;->specialReplaceData:Ljava/util/List;

    return-object v0
.end method

.method public getTempFolder()Ljava/io/File;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/ca/android/wrapper/config/CommonConfig;->tempFolder:Ljava/io/File;

    return-object v0
.end method

.method public getWrapperMethodElements()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/ca/android/wrapper/config/WrapperMethodInsertElement;",
            ">;"
        }
    .end annotation

    .prologue
    .line 524
    iget-object v0, p0, Lcom/ca/android/wrapper/config/CommonConfig;->wrapperMethodElements:Ljava/util/List;

    return-object v0
.end method

.method public initialize(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    .prologue
    .line 123
    invoke-static {}, Lcom/ca/android/wrapper/config/CommonConfig;->sdkRequiredPermissions()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/ca/android/wrapper/config/CommonConfig;->allPermissions:Ljava/util/List;

    .line 124
    if-eqz p1, :cond_0

    .line 125
    sput-object p1, Lcom/ca/android/wrapper/config/CommonConfig;->productHome:Ljava/lang/String;

    .line 127
    :cond_0
    sget-object v0, Lcom/ca/android/wrapper/config/CommonConfig;->productHome:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/ca/android/wrapper/config/CommonConfig;->productHome:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_2

    .line 128
    :cond_1
    const-string v0, "ca.emm.home"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ca/android/wrapper/config/CommonConfig;->productHome:Ljava/lang/String;

    .line 129
    :cond_2
    sget-object v0, Lcom/ca/android/wrapper/config/CommonConfig;->productHome:Ljava/lang/String;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/ca/android/wrapper/config/CommonConfig;->productHome:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_4

    .line 130
    :cond_3
    const-string v0, "CA_EMM_HOME"

    invoke-static {v0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ca/android/wrapper/config/CommonConfig;->productHome:Ljava/lang/String;

    .line 131
    :cond_4
    sget-object v0, Lcom/ca/android/wrapper/config/CommonConfig;->productHome:Ljava/lang/String;

    if-eqz v0, :cond_5

    sget-object v0, Lcom/ca/android/wrapper/config/CommonConfig;->productHome:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_6

    .line 132
    :cond_5
    iget-object v0, p0, Lcom/ca/android/wrapper/config/CommonConfig;->logger:Lcom/ca/android/wrapper/util/Logger;

    const-string v1, "CA_EMM_HOME not set properly. Please set the CA_EMM_HOME & then retry"

    invoke-virtual {v0, v1}, Lcom/ca/android/wrapper/util/Logger;->severe(Ljava/lang/String;)V

    .line 133
    const/4 v0, 0x0

    .line 178
    :goto_0
    return v0

    .line 136
    :cond_6
    sget-object v0, Lcom/ca/android/wrapper/config/CommonConfig;->productHome:Ljava/lang/String;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    sget-object v0, Lcom/ca/android/wrapper/config/CommonConfig;->productHome:Ljava/lang/String;

    const-string v1, "\\"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ca/android/wrapper/config/CommonConfig;->productHome:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ca/android/wrapper/config/CommonConfig;->productHome:Ljava/lang/String;

    .line 141
    :cond_7
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ca/android/wrapper/config/CommonConfig;->classReplaceData:Ljava/util/List;

    .line 142
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ca/android/wrapper/config/CommonConfig;->regexReplaceData:Ljava/util/List;

    .line 143
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ca/android/wrapper/config/CommonConfig;->specialReplaceData:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 146
    :try_start_1
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 147
    const-string v1, "AndroidWrapper_"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 148
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "___"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x98967f

    invoke-virtual {v0, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 147
    invoke-static {v1, v0}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/ca/android/wrapper/config/CommonConfig;->tempFolder:Ljava/io/File;

    .line 149
    iget-object v0, p0, Lcom/ca/android/wrapper/config/CommonConfig;->tempFolder:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 150
    iget-object v0, p0, Lcom/ca/android/wrapper/config/CommonConfig;->tempFolder:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 152
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ca/android/wrapper/config/CommonConfig;->prop:Ljava/util/HashMap;

    .line 153
    iget-object v0, p0, Lcom/ca/android/wrapper/config/CommonConfig;->prop:Ljava/util/HashMap;

    const-string v1, "CONF_DIR"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/ca/android/wrapper/config/CommonConfig;->productHome:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "conf/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    iget-object v0, p0, Lcom/ca/android/wrapper/config/CommonConfig;->prop:Ljava/util/HashMap;

    const-string v1, "TOOLS_DIR"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/ca/android/wrapper/config/CommonConfig;->productHome:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "bin/android/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    iget-object v0, p0, Lcom/ca/android/wrapper/config/CommonConfig;->prop:Ljava/util/HashMap;

    const-string v1, "SDK_APK"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/ca/android/wrapper/config/CommonConfig;->productHome:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "lib/android/container-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".apk"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    iget-object v0, p0, Lcom/ca/android/wrapper/config/CommonConfig;->prop:Ljava/util/HashMap;

    const-string v1, "SDK_DIR"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ca/android/wrapper/config/CommonConfig;->getTempFolder()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/sdk/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    iget-object v0, p0, Lcom/ca/android/wrapper/config/CommonConfig;->prop:Ljava/util/HashMap;

    const-string v1, "SMALI_REPLACEMENT_FILE"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v0

    .line 161
    const-string v1, "os.name"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 162
    const-string v1, "Mac"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 163
    iget-object v0, p0, Lcom/ca/android/wrapper/config/CommonConfig;->prop:Ljava/util/HashMap;

    const-string v1, "OSNAME"

    const-string v2, "macosx"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    :goto_1
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 164
    :cond_8
    const-string v1, "Linux"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 165
    iget-object v0, p0, Lcom/ca/android/wrapper/config/CommonConfig;->prop:Ljava/util/HashMap;

    const-string v1, "OSNAME"

    const-string v2, "linux"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 170
    :catch_0
    move-exception v0

    .line 171
    :try_start_2
    iget-object v1, p0, Lcom/ca/android/wrapper/config/CommonConfig;->logger:Lcom/ca/android/wrapper/util/Logger;

    const-string v2, "Config file not present"

    invoke-virtual {v1, v2}, Lcom/ca/android/wrapper/util/Logger;->severe(Ljava/lang/String;)V

    .line 172
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 174
    :catch_1
    move-exception v0

    .line 175
    iget-object v1, p0, Lcom/ca/android/wrapper/config/CommonConfig;->logger:Lcom/ca/android/wrapper/util/Logger;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/ca/android/wrapper/util/Logger;->severe(Ljava/lang/String;)V

    goto :goto_1

    .line 167
    :cond_9
    :try_start_3
    iget-object v0, p0, Lcom/ca/android/wrapper/config/CommonConfig;->prop:Ljava/util/HashMap;

    const-string v1, "OSNAME"

    const-string v2, "windows"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1
.end method

.method public parseXML(Ljava/lang/String;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 183
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    .line 184
    :cond_0
    iget-object v1, p0, Lcom/ca/android/wrapper/config/CommonConfig;->logger:Lcom/ca/android/wrapper/util/Logger;

    const-string v2, "Smali Replacement XML File not configured!"

    invoke-virtual {v1, v2}, Lcom/ca/android/wrapper/util/Logger;->severe(Ljava/lang/String;)V

    .line 219
    :goto_0
    return v0

    .line 188
    :cond_1
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 189
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    .line 190
    iget-object v1, p0, Lcom/ca/android/wrapper/config/CommonConfig;->logger:Lcom/ca/android/wrapper/util/Logger;

    const-string v2, "Smali Replacement XML File not found!"

    invoke-virtual {v1, v2}, Lcom/ca/android/wrapper/util/Logger;->severe(Ljava/lang/String;)V
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 212
    :catch_0
    move-exception v1

    .line 213
    iget-object v2, p0, Lcom/ca/android/wrapper/config/CommonConfig;->logger:Lcom/ca/android/wrapper/util/Logger;

    invoke-virtual {v1}, Ljavax/xml/parsers/ParserConfigurationException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/ca/android/wrapper/util/Logger;->severe(Ljava/lang/String;)V

    goto :goto_0

    .line 194
    :cond_2
    :try_start_1
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v2

    .line 195
    invoke-virtual {v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v2

    .line 197
    invoke-virtual {v2, v1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v1

    .line 198
    invoke-interface {v1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Element;->normalize()V

    .line 200
    const-string v2, "classReplacement"

    invoke-interface {v1, v2}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 201
    const-string v3, "regexReplacement"

    invoke-interface {v1, v3}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v3

    .line 202
    const-string v4, "specialReplacement"

    invoke-interface {v1, v4}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v4

    .line 204
    const-string v5, "wrapperMethodInsert"

    invoke-interface {v1, v5}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 206
    invoke-direct {p0, v2}, Lcom/ca/android/wrapper/config/CommonConfig;->setClassReplacementList(Lorg/w3c/dom/NodeList;)V

    .line 207
    invoke-direct {p0, v3}, Lcom/ca/android/wrapper/config/CommonConfig;->setRegexReplacementList(Lorg/w3c/dom/NodeList;)V

    .line 208
    invoke-direct {p0, v4}, Lcom/ca/android/wrapper/config/CommonConfig;->setSpecialReplacementList(Lorg/w3c/dom/NodeList;)V

    .line 209
    invoke-virtual {p0, v1}, Lcom/ca/android/wrapper/config/CommonConfig;->setWrapperMethodInserts(Lorg/w3c/dom/NodeList;)V
    :try_end_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 211
    const/4 v0, 0x1

    goto :goto_0

    .line 214
    :catch_1
    move-exception v1

    .line 215
    iget-object v2, p0, Lcom/ca/android/wrapper/config/CommonConfig;->logger:Lcom/ca/android/wrapper/util/Logger;

    invoke-virtual {v1}, Lorg/xml/sax/SAXException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/ca/android/wrapper/util/Logger;->severe(Ljava/lang/String;)V

    goto :goto_0

    .line 216
    :catch_2
    move-exception v1

    .line 217
    iget-object v2, p0, Lcom/ca/android/wrapper/config/CommonConfig;->logger:Lcom/ca/android/wrapper/util/Logger;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/ca/android/wrapper/util/Logger;->severe(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public putProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 566
    iget-object v0, p0, Lcom/ca/android/wrapper/config/CommonConfig;->prop:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 567
    iget-object v0, p0, Lcom/ca/android/wrapper/config/CommonConfig;->prop:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 569
    :cond_0
    return-void
.end method

.method public setWrapperMethodInserts(Lorg/w3c/dom/NodeList;)V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v1, 0x0

    .line 405
    .line 409
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ca/android/wrapper/config/CommonConfig;->wrapperMethodElements:Ljava/util/List;

    move v2, v1

    .line 410
    :goto_0
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-ge v2, v0, :cond_4

    .line 411
    invoke-interface {p1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 412
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v3

    if-ne v3, v8, :cond_3

    .line 413
    check-cast v0, Lorg/w3c/dom/Element;

    .line 414
    new-instance v3, Lcom/ca/android/wrapper/config/WrapperMethodInsertElement;

    invoke-direct {v3}, Lcom/ca/android/wrapper/config/WrapperMethodInsertElement;-><init>()V

    .line 415
    const-string v4, "id"

    invoke-interface {v0, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/ca/android/wrapper/config/WrapperMethodInsertElement;->setId(Ljava/lang/String;)V

    .line 416
    const-string v4, "targetFile"

    invoke-interface {v0, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 418
    const-string v5, "/"

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 419
    invoke-virtual {v3, v4}, Lcom/ca/android/wrapper/config/WrapperMethodInsertElement;->setTargetFilePath(Ljava/lang/String;)V

    .line 420
    const-string v4, "from"

    invoke-interface {v0, v4}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v4

    invoke-interface {v4, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/ca/android/wrapper/config/WrapperMethodInsertElement;->setFromMethod(Ljava/lang/String;)V

    .line 421
    const-string v4, "to"

    invoke-interface {v0, v4}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v4

    invoke-interface {v4, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/ca/android/wrapper/config/WrapperMethodInsertElement;->setToMethod(Ljava/lang/String;)V

    .line 422
    const-string v4, "wrapperMethod"

    invoke-interface {v0, v4}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v4

    invoke-interface {v4, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/ca/android/wrapper/config/WrapperMethodInsertElement;->setWrapperMethodSmalicode(Ljava/lang/String;)V

    .line 424
    const-string v4, "copyDir"

    invoke-interface {v0, v4}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 425
    if-eqz v0, :cond_2

    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-ne v4, v8, :cond_2

    .line 426
    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v4

    move v0, v1

    .line 428
    :goto_1
    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    if-ge v0, v5, :cond_2

    .line 429
    invoke-interface {v4, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    .line 430
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "from"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 431
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/ca/android/wrapper/config/WrapperMethodInsertElement;->setCopyDirFrom(Ljava/lang/String;)V

    .line 428
    :cond_0
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 432
    :cond_1
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "to"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 433
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/ca/android/wrapper/config/WrapperMethodInsertElement;->setCopyDirTo(Ljava/lang/String;)V

    goto :goto_2

    .line 437
    :cond_2
    iget-object v0, p0, Lcom/ca/android/wrapper/config/CommonConfig;->wrapperMethodElements:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 410
    :cond_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_0

    .line 440
    :cond_4
    return-void
.end method
