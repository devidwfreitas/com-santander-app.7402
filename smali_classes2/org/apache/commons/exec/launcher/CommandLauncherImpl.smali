.class public abstract Lorg/apache/commons/exec/launcher/CommandLauncherImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/exec/launcher/CommandLauncher;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public exec(Lorg/apache/commons/exec/CommandLine;Ljava/util/Map;)Ljava/lang/Process;
    .locals 3

    .prologue
    .line 37
    invoke-static {p2}, Lorg/apache/commons/exec/environment/EnvironmentUtils;->toStrings(Ljava/util/Map;)[Ljava/lang/String;

    move-result-object v0

    .line 38
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/commons/exec/CommandLine;->toStrings()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/lang/Runtime;->exec([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    return-object v0
.end method

.method public abstract exec(Lorg/apache/commons/exec/CommandLine;Ljava/util/Map;Ljava/io/File;)Ljava/lang/Process;
.end method

.method public isFailure(I)Z
    .locals 1

    .prologue
    .line 48
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
