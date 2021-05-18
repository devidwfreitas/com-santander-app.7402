.class public Lorg/apache/commons/exec/environment/DefaultProcessingEnvironment;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final LINE_SEPARATOR:Ljava/lang/String;

.field static class$java$lang$System:Ljava/lang/Class;


# instance fields
.field protected procEnvironment:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/exec/environment/DefaultProcessingEnvironment;->LINE_SEPARATOR:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2

    .prologue
    .line 82
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private createEnvironmentMap()Ljava/util/Map;
    .locals 2

    .prologue
    .line 228
    invoke-static {}, Lorg/apache/commons/exec/OS;->isFamilyWindows()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 229
    new-instance v0, Ljava/util/TreeMap;

    new-instance v1, Lorg/apache/commons/exec/environment/DefaultProcessingEnvironment$1;

    invoke-direct {v1, p0}, Lorg/apache/commons/exec/environment/DefaultProcessingEnvironment$1;-><init>(Lorg/apache/commons/exec/environment/DefaultProcessingEnvironment;)V

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 237
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    goto :goto_0
.end method

.method private toString(Ljava/io/ByteArrayOutputStream;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 203
    invoke-static {}, Lorg/apache/commons/exec/OS;->isFamilyZOS()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 205
    :try_start_0
    const-string v0, "Cp1047"

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 216
    :goto_0
    return-object v0

    .line 209
    :cond_0
    invoke-static {}, Lorg/apache/commons/exec/OS;->isFamilyOS400()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 211
    :try_start_1
    const-string v0, "Cp500"

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_0

    .line 212
    :catch_0
    move-exception v0

    .line 216
    :cond_1
    :goto_1
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 206
    :catch_1
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method protected createProcEnvironment()Ljava/util/Map;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 80
    iget-object v0, p0, Lorg/apache/commons/exec/environment/DefaultProcessingEnvironment;->procEnvironment:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 82
    :try_start_0
    sget-object v0, Lorg/apache/commons/exec/environment/DefaultProcessingEnvironment;->class$java$lang$System:Ljava/lang/Class;

    if-nez v0, :cond_1

    const-string v0, "java.lang.System"

    invoke-static {v0}, Lorg/apache/commons/exec/environment/DefaultProcessingEnvironment;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/exec/environment/DefaultProcessingEnvironment;->class$java$lang$System:Ljava/lang/Class;

    move-object v2, v0

    :goto_0
    const-string v3, "getenv"

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 83
    const/4 v3, 0x0

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 84
    invoke-direct {p0}, Lorg/apache/commons/exec/environment/DefaultProcessingEnvironment;->createEnvironmentMap()Ljava/util/Map;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/commons/exec/environment/DefaultProcessingEnvironment;->procEnvironment:Ljava/util/Map;

    .line 85
    iget-object v2, p0, Lorg/apache/commons/exec/environment/DefaultProcessingEnvironment;->procEnvironment:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    :cond_0
    :goto_1
    iget-object v0, p0, Lorg/apache/commons/exec/environment/DefaultProcessingEnvironment;->procEnvironment:Ljava/util/Map;

    if-nez v0, :cond_6

    .line 96
    invoke-direct {p0}, Lorg/apache/commons/exec/environment/DefaultProcessingEnvironment;->createEnvironmentMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/exec/environment/DefaultProcessingEnvironment;->procEnvironment:Ljava/util/Map;

    .line 97
    invoke-virtual {p0}, Lorg/apache/commons/exec/environment/DefaultProcessingEnvironment;->runProcEnvCommand()Ljava/io/BufferedReader;

    move-result-object v2

    move-object v0, v1

    .line 101
    :goto_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 102
    const/16 v3, 0x3d

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_3

    .line 105
    if-nez v0, :cond_2

    .line 106
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    sget-object v3, Lorg/apache/commons/exec/environment/DefaultProcessingEnvironment;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 82
    :cond_1
    :try_start_1
    sget-object v0, Lorg/apache/commons/exec/environment/DefaultProcessingEnvironment;->class$java$lang$System:Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v2, v0

    goto :goto_0

    .line 108
    :cond_2
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    sget-object v3, Lorg/apache/commons/exec/environment/DefaultProcessingEnvironment;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 112
    :cond_3
    if-eqz v0, :cond_4

    .line 113
    iget-object v3, p0, Lorg/apache/commons/exec/environment/DefaultProcessingEnvironment;->procEnvironment:Ljava/util/Map;

    invoke-static {v3, v0}, Lorg/apache/commons/exec/environment/EnvironmentUtils;->addVariableToEnvironment(Ljava/util/Map;Ljava/lang/String;)V

    :cond_4
    move-object v0, v1

    .line 115
    goto :goto_2

    .line 119
    :cond_5
    if-eqz v0, :cond_6

    .line 120
    iget-object v1, p0, Lorg/apache/commons/exec/environment/DefaultProcessingEnvironment;->procEnvironment:Ljava/util/Map;

    invoke-static {v1, v0}, Lorg/apache/commons/exec/environment/EnvironmentUtils;->addVariableToEnvironment(Ljava/util/Map;Ljava/lang/String;)V

    .line 123
    :cond_6
    iget-object v0, p0, Lorg/apache/commons/exec/environment/DefaultProcessingEnvironment;->procEnvironment:Ljava/util/Map;

    return-object v0

    .line 90
    :catch_0
    move-exception v0

    goto :goto_1

    .line 88
    :catch_1
    move-exception v0

    goto :goto_1

    .line 86
    :catch_2
    move-exception v0

    goto :goto_1
.end method

.method protected getProcEnvCommand()Lorg/apache/commons/exec/CommandLine;
    .locals 6

    .prologue
    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 149
    .line 150
    invoke-static {}, Lorg/apache/commons/exec/OS;->isFamilyOS2()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    const-string v2, "cmd"

    .line 154
    new-array v0, v3, [Ljava/lang/String;

    const-string v3, "/c"

    aput-object v3, v0, v4

    const-string v3, "set"

    aput-object v3, v0, v5

    move-object v3, v2

    move-object v2, v0

    .line 186
    :goto_0
    if-eqz v3, :cond_9

    .line 187
    new-instance v0, Lorg/apache/commons/exec/CommandLine;

    invoke-direct {v0, v3}, Lorg/apache/commons/exec/CommandLine;-><init>(Ljava/lang/String;)V

    .line 188
    invoke-virtual {v0, v2}, Lorg/apache/commons/exec/CommandLine;->addArguments([Ljava/lang/String;)Lorg/apache/commons/exec/CommandLine;

    .line 190
    :goto_1
    return-object v0

    .line 155
    :cond_0
    invoke-static {}, Lorg/apache/commons/exec/OS;->isFamilyWindows()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 157
    invoke-static {}, Lorg/apache/commons/exec/OS;->isFamilyWin9x()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 158
    const-string v0, "command.com"

    .line 164
    :goto_2
    new-array v2, v3, [Ljava/lang/String;

    const-string v3, "/c"

    aput-object v3, v2, v4

    const-string v3, "set"

    aput-object v3, v2, v5

    move-object v3, v0

    goto :goto_0

    .line 161
    :cond_1
    const-string v0, "cmd"

    goto :goto_2

    .line 165
    :cond_2
    invoke-static {}, Lorg/apache/commons/exec/OS;->isFamilyZOS()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lorg/apache/commons/exec/OS;->isFamilyUnix()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 169
    :cond_3
    new-instance v0, Ljava/io/File;

    const-string v2, "/bin/env"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 170
    const-string v0, "/bin/env"

    move-object v2, v1

    move-object v3, v0

    goto :goto_0

    .line 171
    :cond_4
    new-instance v0, Ljava/io/File;

    const-string v2, "/usr/bin/env"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 172
    const-string v0, "/usr/bin/env"

    move-object v2, v1

    move-object v3, v0

    goto :goto_0

    .line 175
    :cond_5
    const-string v0, "env"

    move-object v2, v1

    move-object v3, v0

    goto :goto_0

    .line 177
    :cond_6
    invoke-static {}, Lorg/apache/commons/exec/OS;->isFamilyNetware()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-static {}, Lorg/apache/commons/exec/OS;->isFamilyOS400()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 179
    :cond_7
    const-string v0, "env"

    move-object v2, v1

    move-object v3, v0

    goto :goto_0

    :cond_8
    move-object v2, v1

    move-object v3, v1

    .line 183
    goto :goto_0

    :cond_9
    move-object v0, v1

    goto :goto_1
.end method

.method public declared-synchronized getProcEnvironment()Ljava/util/Map;
    .locals 2

    .prologue
    .line 61
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/exec/environment/DefaultProcessingEnvironment;->procEnvironment:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 62
    invoke-virtual {p0}, Lorg/apache/commons/exec/environment/DefaultProcessingEnvironment;->createProcEnvironment()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/exec/environment/DefaultProcessingEnvironment;->procEnvironment:Ljava/util/Map;

    .line 68
    :cond_0
    invoke-direct {p0}, Lorg/apache/commons/exec/environment/DefaultProcessingEnvironment;->createEnvironmentMap()Ljava/util/Map;

    move-result-object v0

    .line 69
    iget-object v1, p0, Lorg/apache/commons/exec/environment/DefaultProcessingEnvironment;->procEnvironment:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    monitor-exit p0

    return-object v0

    .line 61
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected runProcEnvCommand()Ljava/io/BufferedReader;
    .locals 3

    .prologue
    .line 133
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 134
    new-instance v1, Lorg/apache/commons/exec/DefaultExecutor;

    invoke-direct {v1}, Lorg/apache/commons/exec/DefaultExecutor;-><init>()V

    .line 135
    new-instance v2, Lorg/apache/commons/exec/PumpStreamHandler;

    invoke-direct {v2, v0}, Lorg/apache/commons/exec/PumpStreamHandler;-><init>(Ljava/io/OutputStream;)V

    invoke-interface {v1, v2}, Lorg/apache/commons/exec/Executor;->setStreamHandler(Lorg/apache/commons/exec/ExecuteStreamHandler;)V

    .line 137
    invoke-virtual {p0}, Lorg/apache/commons/exec/environment/DefaultProcessingEnvironment;->getProcEnvCommand()Lorg/apache/commons/exec/CommandLine;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/exec/Executor;->execute(Lorg/apache/commons/exec/CommandLine;)I

    .line 138
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/StringReader;

    invoke-direct {p0, v0}, Lorg/apache/commons/exec/environment/DefaultProcessingEnvironment;->toString(Ljava/io/ByteArrayOutputStream;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    return-object v1
.end method
