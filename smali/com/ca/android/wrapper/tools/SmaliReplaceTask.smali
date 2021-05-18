.class public Lcom/ca/android/wrapper/tools/SmaliReplaceTask;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public commonConfig:Lcom/ca/android/wrapper/config/CommonConfig;

.field public fileNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/ca/android/wrapper/config/CommonConfig;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ca/android/wrapper/config/CommonConfig;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/ca/android/wrapper/tools/SmaliReplaceTask;->commonConfig:Lcom/ca/android/wrapper/config/CommonConfig;

    .line 29
    iput-object p2, p0, Lcom/ca/android/wrapper/tools/SmaliReplaceTask;->fileNames:Ljava/util/List;

    .line 30
    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 21
    invoke-virtual {p0}, Lcom/ca/android/wrapper/tools/SmaliReplaceTask;->call()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/ca/android/wrapper/tools/SmaliReplaceTask;->processSmaliBatch()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public processSmaliBatch()Ljava/lang/String;
    .locals 5

    .prologue
    .line 38
    const/4 v0, 0x1

    .line 39
    iget-object v1, p0, Lcom/ca/android/wrapper/tools/SmaliReplaceTask;->fileNames:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 41
    iget-object v3, p0, Lcom/ca/android/wrapper/tools/SmaliReplaceTask;->commonConfig:Lcom/ca/android/wrapper/config/CommonConfig;

    invoke-virtual {v3}, Lcom/ca/android/wrapper/config/CommonConfig;->getRegexReplacementList()Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/ca/android/wrapper/tools/SmaliReplaceTask;->commonConfig:Lcom/ca/android/wrapper/config/CommonConfig;

    iget-boolean v4, v4, Lcom/ca/android/wrapper/config/CommonConfig;->isMultiDex:Z

    invoke-static {v0, v3, v4}, Lcom/ca/android/wrapper/tools/ReplaceUtil;->processRegex(Ljava/lang/String;Ljava/util/List;Z)V

    .line 42
    iget-object v3, p0, Lcom/ca/android/wrapper/tools/SmaliReplaceTask;->commonConfig:Lcom/ca/android/wrapper/config/CommonConfig;

    invoke-virtual {v3}, Lcom/ca/android/wrapper/config/CommonConfig;->getClassReplacementList()Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/ca/android/wrapper/tools/SmaliReplaceTask;->commonConfig:Lcom/ca/android/wrapper/config/CommonConfig;

    iget-boolean v4, v4, Lcom/ca/android/wrapper/config/CommonConfig;->isMultiDex:Z

    invoke-static {v0, v3, v4}, Lcom/ca/android/wrapper/tools/ReplaceUtil;->processClassReplacements(Ljava/lang/String;Ljava/util/List;Z)V

    .line 43
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 44
    goto :goto_0

    .line 45
    :cond_0
    const-string v0, "Success"

    return-object v0
.end method
