.class public Lorg/apache/commons/exec/launcher/OS2CommandLauncher;
.super Lorg/apache/commons/exec/launcher/CommandLauncherProxy;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lorg/apache/commons/exec/launcher/CommandLauncher;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lorg/apache/commons/exec/launcher/CommandLauncherProxy;-><init>(Lorg/apache/commons/exec/launcher/CommandLauncher;)V

    .line 41
    return-void
.end method


# virtual methods
.method public exec(Lorg/apache/commons/exec/CommandLine;Ljava/util/Map;Ljava/io/File;)Ljava/lang/Process;
    .locals 2

    .prologue
    .line 58
    if-nez p3, :cond_0

    .line 59
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/exec/launcher/OS2CommandLauncher;->exec(Lorg/apache/commons/exec/CommandLine;Ljava/util/Map;)Ljava/lang/Process;

    move-result-object v0

    .line 66
    :goto_0
    return-object v0

    .line 62
    :cond_0
    new-instance v0, Lorg/apache/commons/exec/CommandLine;

    const-string v1, "cmd"

    invoke-direct {v0, v1}, Lorg/apache/commons/exec/CommandLine;-><init>(Ljava/lang/String;)V

    .line 63
    const-string v1, "/c"

    invoke-virtual {v0, v1}, Lorg/apache/commons/exec/CommandLine;->addArgument(Ljava/lang/String;)Lorg/apache/commons/exec/CommandLine;

    .line 64
    invoke-virtual {p1}, Lorg/apache/commons/exec/CommandLine;->toStrings()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/exec/CommandLine;->addArguments([Ljava/lang/String;)Lorg/apache/commons/exec/CommandLine;

    .line 66
    invoke-virtual {p0, v0, p2}, Lorg/apache/commons/exec/launcher/OS2CommandLauncher;->exec(Lorg/apache/commons/exec/CommandLine;Ljava/util/Map;)Ljava/lang/Process;

    move-result-object v0

    goto :goto_0
.end method
