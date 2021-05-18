.class public Lorg/apache/commons/exec/launcher/VmsCommandLauncher;
.super Lorg/apache/commons/exec/launcher/Java13CommandLauncher;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lorg/apache/commons/exec/launcher/Java13CommandLauncher;-><init>()V

    return-void
.end method

.method private createCommandFile(Lorg/apache/commons/exec/CommandLine;Ljava/util/Map;)Ljava/io/File;
    .locals 10

    .prologue
    const/4 v3, 0x0

    const/16 v9, 0x22

    .line 79
    const-string v0, "EXEC"

    const-string v1, ".TMP"

    invoke-static {v0, v1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    .line 80
    invoke-virtual {v4}, Ljava/io/File;->deleteOnExit()V

    .line 81
    const/4 v2, 0x0

    .line 83
    :try_start_0
    new-instance v1, Ljava/io/PrintWriter;

    new-instance v0, Ljava/io/FileWriter;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-direct {v0, v5, v6}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 86
    if-eqz p2, :cond_4

    .line 87
    :try_start_1
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 89
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 90
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 91
    const-string v2, "$ "

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 92
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 93
    const-string v2, " == "

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 94
    const/16 v2, 0x22

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(C)V

    .line 95
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 97
    const/16 v2, 0x22

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-lez v2, :cond_2

    .line 98
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    move v2, v3

    .line 99
    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v2, v7, :cond_1

    .line 100
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 101
    if-ne v7, v9, :cond_0

    .line 102
    const/16 v8, 0x22

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 104
    :cond_0
    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 99
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 106
    :cond_1
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 108
    :cond_2
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 109
    const/16 v0, 0x22

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(C)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 139
    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v1, :cond_3

    .line 140
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    :cond_3
    throw v0

    .line 113
    :cond_4
    :try_start_2
    invoke-virtual {p1}, Lorg/apache/commons/exec/CommandLine;->getExecutable()Ljava/lang/String;

    move-result-object v0

    .line 114
    invoke-virtual {p1}, Lorg/apache/commons/exec/CommandLine;->isFile()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 115
    const-string v2, "$ @"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 117
    const-string v2, "/"

    invoke-static {v0, v2}, Lorg/apache/commons/exec/util/StringUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 118
    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 119
    const-string v0, ":["

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 120
    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 121
    array-length v0, v2

    add-int/lit8 v5, v0, -0x1

    .line 122
    const/4 v0, 0x2

    :goto_3
    if-ge v0, v5, :cond_5

    .line 123
    const-string v6, "."

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 124
    aget-object v6, v2, v0

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 122
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 126
    :cond_5
    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 127
    aget-object v0, v2, v5

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 132
    :goto_4
    invoke-virtual {p1}, Lorg/apache/commons/exec/CommandLine;->getArguments()[Ljava/lang/String;

    move-result-object v2

    move v0, v3

    .line 133
    :goto_5
    array-length v3, v2

    if-ge v0, v3, :cond_7

    .line 134
    const-string v3, " -"

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 135
    aget-object v3, v2, v0

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 133
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 129
    :cond_6
    const-string v2, "$ "

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 130
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_4

    .line 137
    :cond_7
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 139
    if-eqz v1, :cond_8

    .line 140
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    .line 143
    :cond_8
    return-object v4

    .line 139
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_2
.end method


# virtual methods
.method public exec(Lorg/apache/commons/exec/CommandLine;Ljava/util/Map;)Ljava/lang/Process;
    .locals 2

    .prologue
    .line 45
    new-instance v0, Lorg/apache/commons/exec/CommandLine;

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/exec/launcher/VmsCommandLauncher;->createCommandFile(Lorg/apache/commons/exec/CommandLine;Ljava/util/Map;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/exec/CommandLine;-><init>(Ljava/lang/String;)V

    .line 49
    invoke-super {p0, v0, p2}, Lorg/apache/commons/exec/launcher/Java13CommandLauncher;->exec(Lorg/apache/commons/exec/CommandLine;Ljava/util/Map;)Ljava/lang/Process;

    move-result-object v0

    return-object v0
.end method

.method public exec(Lorg/apache/commons/exec/CommandLine;Ljava/util/Map;Ljava/io/File;)Ljava/lang/Process;
    .locals 2

    .prologue
    .line 60
    new-instance v0, Lorg/apache/commons/exec/CommandLine;

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/exec/launcher/VmsCommandLauncher;->createCommandFile(Lorg/apache/commons/exec/CommandLine;Ljava/util/Map;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/exec/CommandLine;-><init>(Ljava/lang/String;)V

    .line 64
    invoke-super {p0, v0, p2, p3}, Lorg/apache/commons/exec/launcher/Java13CommandLauncher;->exec(Lorg/apache/commons/exec/CommandLine;Ljava/util/Map;Ljava/io/File;)Ljava/lang/Process;

    move-result-object v0

    return-object v0
.end method

.method public isFailure(I)Z
    .locals 1

    .prologue
    .line 70
    rem-int/lit8 v0, p1, 0x2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
