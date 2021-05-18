.class public Lcom/ca/android/wrapper/tools/APKExtractor;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static logger:Lcom/ca/android/wrapper/util/Logger;


# instance fields
.field private apkFile:Ljava/io/File;

.field private foundFilePath:Ljava/lang/String;

.field private noRes:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    invoke-static {}, Lcom/ca/android/wrapper/util/Logger;->getLogger()Lcom/ca/android/wrapper/util/Logger;

    move-result-object v0

    sput-object v0, Lcom/ca/android/wrapper/tools/APKExtractor;->logger:Lcom/ca/android/wrapper/util/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Z)V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ca/android/wrapper/tools/APKExtractor;->foundFilePath:Ljava/lang/String;

    .line 51
    iput-object p1, p0, Lcom/ca/android/wrapper/tools/APKExtractor;->apkFile:Ljava/io/File;

    .line 52
    iput-boolean p2, p0, Lcom/ca/android/wrapper/tools/APKExtractor;->noRes:Z

    .line 53
    return-void
.end method

.method private addAAPTtoPath(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 203
    new-instance v0, Lorg/apache/commons/exec/DefaultExecuteResultHandler;

    invoke-direct {v0}, Lorg/apache/commons/exec/DefaultExecuteResultHandler;-><init>()V

    .line 204
    new-instance v1, Lorg/apache/commons/exec/CommandLine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "export PATH=$PATH:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/commons/exec/CommandLine;-><init>(Ljava/lang/String;)V

    .line 205
    new-instance v2, Lorg/apache/commons/exec/DefaultExecutor;

    invoke-direct {v2}, Lorg/apache/commons/exec/DefaultExecutor;-><init>()V

    .line 206
    invoke-interface {v2, v1, v0}, Lorg/apache/commons/exec/Executor;->execute(Lorg/apache/commons/exec/CommandLine;Lorg/apache/commons/exec/ExecuteResultHandler;)V

    .line 207
    invoke-virtual {v0}, Lorg/apache/commons/exec/DefaultExecuteResultHandler;->waitFor()V

    .line 208
    return-void
.end method

.method private adjustPermissions(Ljava/io/File;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 321
    const-string v0, "<uses-permission"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 324
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 325
    sget-object v0, Lcom/ca/android/wrapper/config/CommonConfig;->allPermissions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 326
    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    .line 327
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    <uses-permission android:name=\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\" />\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 330
    :cond_1
    if-eqz v1, :cond_2

    .line 332
    const-string v0, "<uses-permission"

    .line 337
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 338
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 339
    invoke-static {p1, v0}, Lorg/apache/commons/io/FileUtils;->writeStringToFile(Ljava/io/File;Ljava/lang/String;)V

    .line 340
    return-void

    .line 335
    :cond_2
    const-string v0, "    <application"

    goto :goto_1
.end method

.method private checkIfFailedOfResources(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 284
    const-string v0, "brut.androlib.Androlib.buildResources"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AndrolibResources.java"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "brut.androlib.AndrolibException"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 285
    const/4 v0, 0x1

    .line 287
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static executeCommand([Ljava/lang/String;)I
    .locals 5

    .prologue
    .line 127
    :try_start_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 128
    array-length v2, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, p0, v0

    .line 129
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 128
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 131
    :cond_0
    sget-object v0, Lcom/ca/android/wrapper/tools/APKExtractor;->logger:Lcom/ca/android/wrapper/util/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Running command:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ca/android/wrapper/util/Logger;->debug(Ljava/lang/String;)V

    .line 132
    const-string v0, "user.dir"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 133
    sget-object v1, Lcom/ca/android/wrapper/tools/APKExtractor;->logger:Lcom/ca/android/wrapper/util/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Current  dir using System:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/ca/android/wrapper/util/Logger;->debug(Ljava/lang/String;)V

    .line 135
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    .line 137
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 138
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 142
    :goto_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 143
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v4, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 155
    :catch_0
    move-exception v0

    .line 156
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 157
    const/4 v0, -0x1

    :goto_2
    return v0

    .line 147
    :cond_1
    :goto_3
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 148
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_3

    .line 151
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    goto :goto_2
.end method

.method private findIntegrationAppFile(Lcom/ca/android/wrapper/config/CommonConfig;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 91
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "com"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ca"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "android"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "app"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "CaMDOIntegration"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/ca/android/wrapper/tools/APKExtractor;->searchFiles(Ljava/io/File;Ljava/lang/String;)V

    .line 92
    const-string v0, "appIntegrationFile"

    iget-object v1, p0, Lcom/ca/android/wrapper/tools/APKExtractor;->foundFilePath:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/ca/android/wrapper/config/CommonConfig;->putProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "com"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ca"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "integration"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "CaMDOCallback"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/ca/android/wrapper/tools/APKExtractor;->searchFiles(Ljava/io/File;Ljava/lang/String;)V

    .line 94
    const-string v0, "appCallbackFile"

    iget-object v1, p0, Lcom/ca/android/wrapper/tools/APKExtractor;->foundFilePath:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/ca/android/wrapper/config/CommonConfig;->putProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    return-void
.end method

.method private getMissingPermissions()Ljava/util/List;
    .locals 6
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
    .line 344
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 345
    sget-object v2, Lcom/ca/android/wrapper/config/CommonConfig;->originalManifestContent:Ljava/lang/String;

    .line 346
    sget-object v0, Lcom/ca/android/wrapper/config/CommonConfig;->allPermissions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 347
    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    .line 348
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 351
    :cond_1
    return-object v1
.end method

.method private searchFiles(Ljava/io/File;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 107
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 108
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_2

    aget-object v3, v1, v0

    .line 109
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 110
    invoke-direct {p0, v3, p2}, Lcom/ca/android/wrapper/tools/APKExtractor;->searchFiles(Ljava/io/File;Ljava/lang/String;)V

    .line 108
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 112
    :cond_1
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".smali"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 113
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 114
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/ca/android/wrapper/tools/APKExtractor;->foundFilePath:Ljava/lang/String;

    goto :goto_1

    .line 119
    :cond_2
    return-void
.end method


# virtual methods
.method public changeApplication(Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 361
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    .line 363
    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 365
    invoke-virtual {v0, p1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/lang/String;)Lorg/w3c/dom/Document;

    move-result-object v2

    .line 366
    const-string v0, "application"

    invoke-interface {v2, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 367
    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    .line 368
    const-string v3, "android:name"

    invoke-interface {v0, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string v3, "android:name"

    invoke-interface {v0, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v1, 0x1

    .line 369
    :cond_0
    if-nez v1, :cond_1

    .line 370
    const-string v1, "android:name"

    const-string v3, "com.ca.android.app.CaMDOApplication"

    invoke-interface {v0, v1, v3}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    invoke-virtual {p0, v2, p1}, Lcom/ca/android/wrapper/tools/APKExtractor;->output(Lorg/w3c/dom/Document;Ljava/lang/String;)V

    .line 373
    :cond_1
    return-void
.end method

.method public extractAPKUsingAPKTool(Lcom/ca/android/wrapper/config/CommonConfig;Z)Z
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 164
    :try_start_0
    const-string v1, "TOOLS_DIR"

    invoke-virtual {p1, v1}, Lcom/ca/android/wrapper/config/CommonConfig;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 165
    invoke-virtual {p1}, Lcom/ca/android/wrapper/config/CommonConfig;->getTempFolder()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 166
    const-string v3, "apktoolExtract"

    .line 168
    new-instance v4, Lorg/apache/commons/exec/DefaultExecuteResultHandler;

    invoke-direct {v4}, Lorg/apache/commons/exec/DefaultExecuteResultHandler;-><init>()V

    .line 169
    new-instance v5, Lorg/apache/commons/exec/CommandLine;

    const-string v6, "java"

    invoke-direct {v5, v6}, Lorg/apache/commons/exec/CommandLine;-><init>(Ljava/lang/String;)V

    .line 170
    const-string v6, "-jar"

    invoke-virtual {v5, v6}, Lorg/apache/commons/exec/CommandLine;->addArgument(Ljava/lang/String;)Lorg/apache/commons/exec/CommandLine;

    .line 171
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "apktool.jar"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x0

    invoke-virtual {v5, v1, v6}, Lorg/apache/commons/exec/CommandLine;->addArgument(Ljava/lang/String;Z)Lorg/apache/commons/exec/CommandLine;

    .line 172
    if-nez p2, :cond_0

    .line 173
    const-string v1, "-q"

    invoke-virtual {v5, v1}, Lorg/apache/commons/exec/CommandLine;->addArgument(Ljava/lang/String;)Lorg/apache/commons/exec/CommandLine;

    .line 175
    :cond_0
    const-string v1, "d"

    invoke-virtual {v5, v1}, Lorg/apache/commons/exec/CommandLine;->addArgument(Ljava/lang/String;)Lorg/apache/commons/exec/CommandLine;

    .line 176
    const-string v1, "-p"

    invoke-virtual {v5, v1}, Lorg/apache/commons/exec/CommandLine;->addArgument(Ljava/lang/String;)Lorg/apache/commons/exec/CommandLine;

    .line 177
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "tmpDex"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lorg/apache/commons/exec/CommandLine;->addArgument(Ljava/lang/String;)Lorg/apache/commons/exec/CommandLine;

    .line 178
    iget-boolean v1, p0, Lcom/ca/android/wrapper/tools/APKExtractor;->noRes:Z

    if-eqz v1, :cond_1

    .line 179
    const-string v1, "-r"

    invoke-virtual {v5, v1}, Lorg/apache/commons/exec/CommandLine;->addArgument(Ljava/lang/String;)Lorg/apache/commons/exec/CommandLine;

    .line 181
    :cond_1
    iget-object v1, p0, Lcom/ca/android/wrapper/tools/APKExtractor;->apkFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x0

    invoke-virtual {v5, v1, v6}, Lorg/apache/commons/exec/CommandLine;->addArgument(Ljava/lang/String;Z)Lorg/apache/commons/exec/CommandLine;

    .line 182
    const-string v1, "-o"

    invoke-virtual {v5, v1}, Lorg/apache/commons/exec/CommandLine;->addArgument(Ljava/lang/String;)Lorg/apache/commons/exec/CommandLine;

    .line 183
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lorg/apache/commons/exec/CommandLine;->addArgument(Ljava/lang/String;)Lorg/apache/commons/exec/CommandLine;

    .line 185
    sget-object v1, Lcom/ca/android/wrapper/tools/APKExtractor;->logger:Lcom/ca/android/wrapper/util/Logger;

    invoke-virtual {v5}, Lorg/apache/commons/exec/CommandLine;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ca/android/wrapper/util/Logger;->info(Ljava/lang/String;)V

    .line 187
    new-instance v1, Lorg/apache/commons/exec/DefaultExecutor;

    invoke-direct {v1}, Lorg/apache/commons/exec/DefaultExecutor;-><init>()V

    .line 188
    invoke-interface {v1, v5, v4}, Lorg/apache/commons/exec/Executor;->execute(Lorg/apache/commons/exec/CommandLine;Lorg/apache/commons/exec/ExecuteResultHandler;)V

    .line 189
    invoke-virtual {v4}, Lorg/apache/commons/exec/DefaultExecuteResultHandler;->waitFor()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    const/4 v0, 0x1

    .line 197
    :goto_0
    return v0

    .line 194
    :catch_0
    move-exception v1

    .line 195
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 196
    sget-object v2, Lcom/ca/android/wrapper/tools/APKExtractor;->logger:Lcom/ca/android/wrapper/util/Logger;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/ca/android/wrapper/util/Logger;->severe(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public extractSDKAPKUsingAPKTool(Lcom/ca/android/wrapper/config/CommonConfig;)Z
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 58
    :try_start_0
    const-string v1, "TOOLS_DIR"

    invoke-virtual {p1, v1}, Lcom/ca/android/wrapper/config/CommonConfig;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 59
    invoke-virtual {p1}, Lcom/ca/android/wrapper/config/CommonConfig;->getTempFolder()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 60
    const-string v3, "sdk"

    .line 62
    new-instance v4, Lorg/apache/commons/exec/DefaultExecuteResultHandler;

    invoke-direct {v4}, Lorg/apache/commons/exec/DefaultExecuteResultHandler;-><init>()V

    .line 63
    new-instance v5, Lorg/apache/commons/exec/CommandLine;

    const-string v6, "java"

    invoke-direct {v5, v6}, Lorg/apache/commons/exec/CommandLine;-><init>(Ljava/lang/String;)V

    .line 64
    const-string v6, "-jar"

    invoke-virtual {v5, v6}, Lorg/apache/commons/exec/CommandLine;->addArgument(Ljava/lang/String;)Lorg/apache/commons/exec/CommandLine;

    .line 65
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "apktool.jar"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x0

    invoke-virtual {v5, v1, v6}, Lorg/apache/commons/exec/CommandLine;->addArgument(Ljava/lang/String;Z)Lorg/apache/commons/exec/CommandLine;

    .line 66
    const-string v1, "-q"

    invoke-virtual {v5, v1}, Lorg/apache/commons/exec/CommandLine;->addArgument(Ljava/lang/String;)Lorg/apache/commons/exec/CommandLine;

    .line 67
    const-string v1, "-p"

    invoke-virtual {v5, v1}, Lorg/apache/commons/exec/CommandLine;->addArgument(Ljava/lang/String;)Lorg/apache/commons/exec/CommandLine;

    .line 68
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "catmpDex"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lorg/apache/commons/exec/CommandLine;->addArgument(Ljava/lang/String;)Lorg/apache/commons/exec/CommandLine;

    .line 69
    const-string v1, "d"

    invoke-virtual {v5, v1}, Lorg/apache/commons/exec/CommandLine;->addArgument(Ljava/lang/String;)Lorg/apache/commons/exec/CommandLine;

    .line 70
    iget-object v1, p0, Lcom/ca/android/wrapper/tools/APKExtractor;->apkFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x0

    invoke-virtual {v5, v1, v6}, Lorg/apache/commons/exec/CommandLine;->addArgument(Ljava/lang/String;Z)Lorg/apache/commons/exec/CommandLine;

    .line 71
    const-string v1, "-o"

    invoke-virtual {v5, v1}, Lorg/apache/commons/exec/CommandLine;->addArgument(Ljava/lang/String;)Lorg/apache/commons/exec/CommandLine;

    .line 72
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lorg/apache/commons/exec/CommandLine;->addArgument(Ljava/lang/String;)Lorg/apache/commons/exec/CommandLine;

    .line 74
    sget-object v1, Lcom/ca/android/wrapper/tools/APKExtractor;->logger:Lcom/ca/android/wrapper/util/Logger;

    invoke-virtual {v5}, Lorg/apache/commons/exec/CommandLine;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/ca/android/wrapper/util/Logger;->info(Ljava/lang/String;)V

    .line 76
    new-instance v1, Lorg/apache/commons/exec/DefaultExecutor;

    invoke-direct {v1}, Lorg/apache/commons/exec/DefaultExecutor;-><init>()V

    .line 77
    invoke-interface {v1, v5, v4}, Lorg/apache/commons/exec/Executor;->execute(Lorg/apache/commons/exec/CommandLine;Lorg/apache/commons/exec/ExecuteResultHandler;)V

    .line 78
    invoke-virtual {v4}, Lorg/apache/commons/exec/DefaultExecuteResultHandler;->waitFor()V

    .line 79
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/ca/android/wrapper/tools/APKExtractor;->findIntegrationAppFile(Lcom/ca/android/wrapper/config/CommonConfig;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    const/4 v0, 0x1

    .line 85
    :goto_0
    return v0

    .line 82
    :catch_0
    move-exception v1

    .line 83
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 84
    sget-object v2, Lcom/ca/android/wrapper/tools/APKExtractor;->logger:Lcom/ca/android/wrapper/util/Logger;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/ca/android/wrapper/util/Logger;->severe(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final output(Lorg/w3c/dom/Document;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 382
    const/4 v2, 0x0

    .line 384
    :try_start_0
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v0

    .line 385
    const-string v1, "encoding"

    const-string v3, "UTF-8"

    invoke-virtual {v0, v1, v3}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    const-string v1, "indent"

    const-string v3, "yes"

    invoke-virtual {v0, v1, v3}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    new-instance v1, Ljava/io/FileWriter;

    const/4 v3, 0x0

    invoke-direct {v1, p2, v3}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 388
    :try_start_1
    new-instance v2, Ljavax/xml/transform/dom/DOMSource;

    invoke-direct {v2, p1}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    new-instance v3, Ljavax/xml/transform/stream/StreamResult;

    invoke-direct {v3, v1}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v0, v2, v3}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 390
    if-eqz v1, :cond_0

    .line 391
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V

    .line 394
    :cond_0
    return-void

    .line 390
    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_0
    if-eqz v1, :cond_1

    .line 391
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V

    :cond_1
    throw v0

    .line 390
    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method public packageAPKUsingAPKTool(Lcom/ca/android/wrapper/config/CommonConfig;Lcom/ca/android/wrapper/WrapperStatusBean;Z)Ljava/lang/String;
    .locals 7

    .prologue
    .line 215
    :try_start_0
    const-string v0, "TOOLS_DIR"

    invoke-virtual {p1, v0}, Lcom/ca/android/wrapper/config/CommonConfig;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 216
    const-string v1, "OSNAME"

    invoke-virtual {p1, v1}, Lcom/ca/android/wrapper/config/CommonConfig;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 217
    const-string v1, "apktoolExtract"

    .line 218
    invoke-virtual {p1}, Lcom/ca/android/wrapper/config/CommonConfig;->getTempFolder()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 219
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "manifest_modded_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/ca/android/wrapper/tools/APKExtractor;->apkFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 221
    new-instance v4, Lorg/apache/commons/exec/DefaultExecuteResultHandler;

    invoke-direct {v4}, Lorg/apache/commons/exec/DefaultExecuteResultHandler;-><init>()V

    .line 222
    new-instance v5, Lorg/apache/commons/exec/CommandLine;

    const-string v6, "java"

    invoke-direct {v5, v6}, Lorg/apache/commons/exec/CommandLine;-><init>(Ljava/lang/String;)V

    .line 225
    const-string v6, "-jar"

    invoke-virtual {v5, v6}, Lorg/apache/commons/exec/CommandLine;->addArgument(Ljava/lang/String;)Lorg/apache/commons/exec/CommandLine;

    .line 226
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "apktool.jar"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x0

    invoke-virtual {v5, v0, v6}, Lorg/apache/commons/exec/CommandLine;->addArgument(Ljava/lang/String;Z)Lorg/apache/commons/exec/CommandLine;

    .line 227
    if-nez p3, :cond_0

    .line 228
    const-string v0, "-q"

    invoke-virtual {v5, v0}, Lorg/apache/commons/exec/CommandLine;->addArgument(Ljava/lang/String;)Lorg/apache/commons/exec/CommandLine;

    .line 230
    :cond_0
    const-string v0, "-p"

    invoke-virtual {v5, v0}, Lorg/apache/commons/exec/CommandLine;->addArgument(Ljava/lang/String;)Lorg/apache/commons/exec/CommandLine;

    .line 231
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "tmpDex"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lorg/apache/commons/exec/CommandLine;->addArgument(Ljava/lang/String;)Lorg/apache/commons/exec/CommandLine;

    .line 232
    const-string v0, "b"

    invoke-virtual {v5, v0}, Lorg/apache/commons/exec/CommandLine;->addArgument(Ljava/lang/String;)Lorg/apache/commons/exec/CommandLine;

    .line 233
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lorg/apache/commons/exec/CommandLine;->addArgument(Ljava/lang/String;)Lorg/apache/commons/exec/CommandLine;

    .line 234
    const-string v0, "-o"

    invoke-virtual {v5, v0}, Lorg/apache/commons/exec/CommandLine;->addArgument(Ljava/lang/String;)Lorg/apache/commons/exec/CommandLine;

    .line 235
    const/4 v0, 0x0

    invoke-virtual {v5, v3, v0}, Lorg/apache/commons/exec/CommandLine;->addArgument(Ljava/lang/String;Z)Lorg/apache/commons/exec/CommandLine;

    .line 237
    sget-object v0, Lcom/ca/android/wrapper/tools/APKExtractor;->logger:Lcom/ca/android/wrapper/util/Logger;

    invoke-virtual {v5}, Lorg/apache/commons/exec/CommandLine;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ca/android/wrapper/util/Logger;->info(Ljava/lang/String;)V

    .line 238
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 239
    new-instance v1, Lorg/apache/commons/exec/PumpStreamHandler;

    invoke-direct {v1, v0}, Lorg/apache/commons/exec/PumpStreamHandler;-><init>(Ljava/io/OutputStream;)V

    .line 240
    new-instance v3, Lorg/apache/commons/exec/DefaultExecutor;

    invoke-direct {v3}, Lorg/apache/commons/exec/DefaultExecutor;-><init>()V

    .line 241
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v6}, Lorg/apache/commons/exec/Executor;->setWorkingDirectory(Ljava/io/File;)V

    .line 242
    invoke-interface {v3, v1}, Lorg/apache/commons/exec/Executor;->setStreamHandler(Lorg/apache/commons/exec/ExecuteStreamHandler;)V

    .line 243
    invoke-interface {v3, v5, v4}, Lorg/apache/commons/exec/Executor;->execute(Lorg/apache/commons/exec/CommandLine;Lorg/apache/commons/exec/ExecuteResultHandler;)V

    .line 244
    invoke-virtual {v4}, Lorg/apache/commons/exec/DefaultExecuteResultHandler;->waitFor()V

    .line 245
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v0

    .line 246
    if-eqz p3, :cond_1

    .line 247
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 249
    :cond_1
    invoke-direct {p0, v0}, Lcom/ca/android/wrapper/tools/APKExtractor;->checkIfFailedOfResources(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 250
    const-string v1, "\n"

    invoke-virtual {p2, v1}, Lcom/ca/android/wrapper/WrapperStatusBean;->setWrappingStatus(Ljava/lang/String;)V

    .line 251
    const-string v1, "ERROR:Resources Packaging Failed"

    invoke-virtual {p2, v1}, Lcom/ca/android/wrapper/WrapperStatusBean;->setWrappingStatus(Ljava/lang/String;)V

    .line 252
    invoke-direct {p0}, Lcom/ca/android/wrapper/tools/APKExtractor;->getMissingPermissions()Ljava/util/List;

    move-result-object v1

    .line 253
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 254
    if-eqz p3, :cond_2

    .line 255
    const-string v3, "---------------------------------------------------------"

    invoke-virtual {p2, v3}, Lcom/ca/android/wrapper/WrapperStatusBean;->setWrappingStatus(Ljava/lang/String;)V

    .line 256
    invoke-virtual {p2, v0}, Lcom/ca/android/wrapper/WrapperStatusBean;->setWrappingStatus(Ljava/lang/String;)V

    .line 257
    const-string v0, "---------------------------------------------------------"

    invoke-virtual {p2, v0}, Lcom/ca/android/wrapper/WrapperStatusBean;->setWrappingStatus(Ljava/lang/String;)V

    .line 259
    :cond_2
    if-eqz v2, :cond_4

    .line 260
    const-string v0, "Missing Permissions "

    invoke-virtual {p2, v0}, Lcom/ca/android/wrapper/WrapperStatusBean;->setWrappingStatus(Ljava/lang/String;)V

    .line 261
    const-string v0, "-------------------"

    invoke-virtual {p2, v0}, Lcom/ca/android/wrapper/WrapperStatusBean;->setWrappingStatus(Ljava/lang/String;)V

    .line 262
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 263
    invoke-virtual {p2, v0}, Lcom/ca/android/wrapper/WrapperStatusBean;->setWrappingStatus(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 275
    :catch_0
    move-exception v0

    .line 276
    sget-object v1, Lcom/ca/android/wrapper/tools/APKExtractor;->logger:Lcom/ca/android/wrapper/util/Logger;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/ca/android/wrapper/util/Logger;->severe(Ljava/lang/String;)V

    .line 277
    const-string v0, "ERROR"

    :goto_1
    return-object v0

    .line 265
    :cond_3
    :try_start_1
    const-string v0, "-------------------"

    invoke-virtual {p2, v0}, Lcom/ca/android/wrapper/WrapperStatusBean;->setWrappingStatus(Ljava/lang/String;)V

    .line 266
    const-string v0, "ERROR"

    goto :goto_1

    .line 269
    :cond_4
    const-string v0, "NORES-RETRY"

    goto :goto_1

    .line 273
    :cond_5
    const-string v0, "SUCCESS"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public processManifestChanges(Lcom/ca/android/wrapper/config/CommonConfig;)Z
    .locals 3

    .prologue
    .line 297
    :try_start_0
    invoke-virtual {p1}, Lcom/ca/android/wrapper/config/CommonConfig;->getTempFolder()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 298
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/apktoolExtract/AndroidManifest.xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 299
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 300
    invoke-static {v1}, Lorg/apache/commons/io/FileUtils;->readFileToString(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 301
    sget-object v2, Lcom/ca/android/wrapper/config/CommonConfig;->originalManifestContent:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 302
    sput-object v0, Lcom/ca/android/wrapper/config/CommonConfig;->originalManifestContent:Ljava/lang/String;

    .line 304
    :cond_0
    invoke-direct {p0, v1, v0}, Lcom/ca/android/wrapper/tools/APKExtractor;->adjustPermissions(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 306
    const/4 v0, 0x1

    .line 309
    :goto_0
    return v0

    .line 307
    :catch_0
    move-exception v0

    .line 308
    sget-object v1, Lcom/ca/android/wrapper/tools/APKExtractor;->logger:Lcom/ca/android/wrapper/util/Logger;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/ca/android/wrapper/util/Logger;->severe(Ljava/lang/String;)V

    .line 309
    const/4 v0, 0x0

    goto :goto_0
.end method
