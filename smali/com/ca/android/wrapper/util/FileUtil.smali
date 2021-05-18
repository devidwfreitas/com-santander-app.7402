.class public Lcom/ca/android/wrapper/util/FileUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static logger:Lcom/ca/android/wrapper/util/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    invoke-static {}, Lcom/ca/android/wrapper/util/Logger;->getLogger()Lcom/ca/android/wrapper/util/Logger;

    move-result-object v0

    sput-object v0, Lcom/ca/android/wrapper/util/FileUtil;->logger:Lcom/ca/android/wrapper/util/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copyFolder(Ljava/io/File;Ljava/io/File;)V
    .locals 8

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 71
    .line 74
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 77
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 78
    invoke-virtual {p1}, Ljava/io/File;->mkdir()Z

    .line 82
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    .line 84
    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v4, v2, v1

    .line 86
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 87
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 89
    invoke-static {v5, v6}, Lcom/ca/android/wrapper/util/FileUtil;->copyFolder(Ljava/io/File;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move-object v2, v0

    .line 111
    :goto_1
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 116
    :goto_2
    :try_start_2
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 121
    :goto_3
    return-void

    .line 95
    :cond_2
    :try_start_3
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 96
    :try_start_4
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_8
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 98
    const/16 v0, 0x400

    :try_start_5
    new-array v0, v0, [B

    .line 102
    :goto_4
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-lez v3, :cond_3

    .line 103
    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_4

    .line 107
    :catch_0
    move-exception v0

    move-object v0, v1

    move-object v1, v2

    .line 111
    :goto_5
    :try_start_6
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 116
    :goto_6
    :try_start_7
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_3

    .line 117
    :catch_1
    move-exception v0

    goto :goto_3

    .line 110
    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v7, v0

    move-object v0, v1

    move-object v1, v7

    .line 111
    :goto_7
    :try_start_8
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 116
    :goto_8
    :try_start_9
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 119
    :goto_9
    throw v0

    .line 112
    :catch_2
    move-exception v1

    goto :goto_2

    .line 117
    :catch_3
    move-exception v0

    goto :goto_3

    .line 112
    :catch_4
    move-exception v1

    goto :goto_6

    :catch_5
    move-exception v2

    goto :goto_8

    .line 117
    :catch_6
    move-exception v1

    goto :goto_9

    .line 110
    :catchall_1
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_7

    :catchall_2
    move-exception v0

    goto :goto_7

    .line 107
    :catch_7
    move-exception v1

    move-object v1, v0

    goto :goto_5

    :catch_8
    move-exception v1

    move-object v1, v2

    goto :goto_5

    :cond_3
    move-object v0, v1

    goto :goto_1
.end method

.method public static createDir(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 24
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 26
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 27
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v0

    .line 30
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static createDir(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .prologue
    .line 37
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mkdir "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 39
    sget-object v1, Lcom/ca/android/wrapper/util/FileUtil;->logger:Lcom/ca/android/wrapper/util/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Command :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ca/android/wrapper/util/Logger;->info(Ljava/lang/String;)V

    .line 40
    new-instance v1, Lorg/apache/commons/exec/DefaultExecuteResultHandler;

    invoke-direct {v1}, Lorg/apache/commons/exec/DefaultExecuteResultHandler;-><init>()V

    .line 42
    invoke-static {v0}, Lorg/apache/commons/exec/CommandLine;->parse(Ljava/lang/String;)Lorg/apache/commons/exec/CommandLine;

    move-result-object v0

    .line 43
    new-instance v2, Lorg/apache/commons/exec/DefaultExecutor;

    invoke-direct {v2}, Lorg/apache/commons/exec/DefaultExecutor;-><init>()V

    .line 44
    invoke-interface {v2, v0, v1}, Lorg/apache/commons/exec/Executor;->execute(Lorg/apache/commons/exec/CommandLine;Lorg/apache/commons/exec/ExecuteResultHandler;)V

    .line 45
    invoke-virtual {v1}, Lorg/apache/commons/exec/DefaultExecuteResultHandler;->waitFor()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    const/4 v0, 0x1

    .line 49
    :goto_0
    return v0

    .line 47
    :catch_0
    move-exception v0

    .line 48
    sget-object v1, Lcom/ca/android/wrapper/util/FileUtil;->logger:Lcom/ca/android/wrapper/util/Logger;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/ca/android/wrapper/util/Logger;->severe(Ljava/lang/String;)V

    .line 49
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static deleteDir(Ljava/io/File;)V
    .locals 5

    .prologue
    .line 55
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 68
    :cond_0
    :goto_0
    return-void

    .line 58
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 60
    array-length v2, v1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_3

    aget-object v3, v1, v0

    .line 61
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 62
    invoke-static {v3}, Lcom/ca/android/wrapper/util/FileUtil;->deleteDir(Ljava/io/File;)V

    .line 64
    :cond_2
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 60
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 67
    :cond_3
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method
