.class public Lcom/ca/android/wrapper/util/Logger;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static instance:Lcom/ca/android/wrapper/util/Logger;


# instance fields
.field private debug:Z

.field private info:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 5
    const/4 v0, 0x0

    sput-object v0, Lcom/ca/android/wrapper/util/Logger;->instance:Lcom/ca/android/wrapper/util/Logger;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-boolean v0, p0, Lcom/ca/android/wrapper/util/Logger;->debug:Z

    .line 7
    iput-boolean v0, p0, Lcom/ca/android/wrapper/util/Logger;->info:Z

    .line 11
    return-void
.end method

.method public static getLogger()Lcom/ca/android/wrapper/util/Logger;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/ca/android/wrapper/util/Logger;->instance:Lcom/ca/android/wrapper/util/Logger;

    if-nez v0, :cond_0

    .line 15
    new-instance v0, Lcom/ca/android/wrapper/util/Logger;

    invoke-direct {v0}, Lcom/ca/android/wrapper/util/Logger;-><init>()V

    sput-object v0, Lcom/ca/android/wrapper/util/Logger;->instance:Lcom/ca/android/wrapper/util/Logger;

    .line 17
    :cond_0
    sget-object v0, Lcom/ca/android/wrapper/util/Logger;->instance:Lcom/ca/android/wrapper/util/Logger;

    return-object v0
.end method


# virtual methods
.method public debug(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/ca/android/wrapper/util/Logger;->debug:Z

    if-eqz v0, :cond_0

    .line 30
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DEBUG: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 31
    :cond_0
    return-void
.end method

.method public enableDebug()V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ca/android/wrapper/util/Logger;->debug:Z

    .line 35
    return-void
.end method

.method public enableInfo()V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ca/android/wrapper/util/Logger;->info:Z

    .line 39
    return-void
.end method

.method public info(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/ca/android/wrapper/util/Logger;->info:Z

    if-eqz v0, :cond_0

    .line 26
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "INFO: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 27
    :cond_0
    return-void
.end method

.method public severe(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 21
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERROR: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 22
    return-void
.end method
