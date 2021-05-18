.class public Lorg/apache/commons/exec/launcher/Java13CommandLauncher;
.super Lorg/apache/commons/exec/launcher/CommandLauncherImpl;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lorg/apache/commons/exec/launcher/CommandLauncherImpl;-><init>()V

    .line 38
    return-void
.end method


# virtual methods
.method public exec(Lorg/apache/commons/exec/CommandLine;Ljava/util/Map;Ljava/io/File;)Ljava/lang/Process;
    .locals 3

    .prologue
    .line 56
    invoke-static {p2}, Lorg/apache/commons/exec/environment/EnvironmentUtils;->toStrings(Ljava/util/Map;)[Ljava/lang/String;

    move-result-object v0

    .line 58
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/commons/exec/CommandLine;->toStrings()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0, p3}, Ljava/lang/Runtime;->exec([Ljava/lang/String;[Ljava/lang/String;Ljava/io/File;)Ljava/lang/Process;

    move-result-object v0

    return-object v0
.end method
