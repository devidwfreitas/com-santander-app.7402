.class public Lorg/apache/commons/exec/util/DebugUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final COMMONS_EXEC_DEBUG:Ljava/lang/String; = "org.apache.commons.exec.debug"

.field public static final COMMONS_EXEC_LENIENT:Ljava/lang/String; = "org.apache.commons.exec.lenient"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static handleException(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 2

    .prologue
    .line 51
    invoke-static {}, Lorg/apache/commons/exec/util/DebugUtils;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 56
    :cond_0
    invoke-static {}, Lorg/apache/commons/exec/util/DebugUtils;->isLenientEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 57
    instance-of v0, p1, Ljava/lang/RuntimeException;

    if-eqz v0, :cond_1

    .line 58
    check-cast p1, Ljava/lang/RuntimeException;

    throw p1

    .line 61
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_2
    return-void
.end method

.method public static isDebugEnabled()Z
    .locals 3

    .prologue
    .line 72
    const-string v0, "true"

    const-string v1, "org.apache.commons.exec.debug"

    const-string v2, "false"

    invoke-static {v1, v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isLenientEnabled()Z
    .locals 3

    .prologue
    .line 81
    const-string v0, "true"

    const-string v1, "org.apache.commons.exec.lenient"

    const-string v2, "true"

    invoke-static {v1, v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
