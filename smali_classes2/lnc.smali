.class public Llnc;
.super Lmic;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "account-key"


# instance fields
.field private b:Llne;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lkql;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lmic;-><init>()V

    return-void
.end method

.method public static a(Ljava/util/List;)Llnc;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lkql;",
            ">;)",
            "Llnc;"
        }
    .end annotation

    .prologue
    .line 44
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 45
    const-string v1, "account-key"

    invoke-static {}, Lmys;->a()Lejm;

    move-result-object v2

    invoke-virtual {v2, p0}, Lejm;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    new-instance v1, Llnc;

    invoke-direct {v1}, Llnc;-><init>()V

    .line 47
    invoke-virtual {v1, v0}, Llnc;->setArguments(Landroid/os/Bundle;)V

    .line 48
    return-object v1
.end method

.method static synthetic a(Llnc;)Llne;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Llnc;->b:Llne;

    return-object v0
.end method


# virtual methods
.method public a()Landroid/support/v7/widget/RecyclerView$Adapter;
    .locals 2

    .prologue
    .line 61
    new-instance v0, Lllm;

    iget-object v1, p0, Llnc;->c:Ljava/util/List;

    invoke-direct {v0, v1}, Lllm;-><init>(Ljava/util/List;)V

    .line 62
    new-instance v1, Llnd;

    invoke-direct {v1, p0}, Llnd;-><init>(Llnc;)V

    invoke-virtual {v0, v1}, Lllm;->a(Lllp;)V

    .line 72
    return-object v0
.end method

.method public a(Llne;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Llnc;->b:Llne;

    .line 77
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 53
    invoke-super {p0, p1}, Lmic;->onCreate(Landroid/os/Bundle;)V

    .line 54
    invoke-virtual {p0}, Llnc;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Llnc;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "account-key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {}, Lmys;->a()Lejm;

    move-result-object v0

    invoke-virtual {p0}, Llnc;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "account-key"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-class v3, [Lkql;

    invoke-virtual {v0, v2, v3}, Lejm;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Llnc;->c:Ljava/util/List;

    .line 57
    :cond_0
    return-void
.end method
