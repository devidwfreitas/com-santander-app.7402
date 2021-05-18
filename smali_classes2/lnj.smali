.class public Llnj;
.super Lmic;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "account-key"

.field public static final b:Ljava/lang/String; = "no-to-inform-key"


# instance fields
.field private c:Llnl;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lksd;",
            ">;"
        }
    .end annotation
.end field

.field private e:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lmic;-><init>()V

    return-void
.end method

.method public static a(Ljava/util/List;Z)Llnj;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lksd;",
            ">;Z)",
            "Llnj;"
        }
    .end annotation

    .prologue
    .line 39
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 40
    const-string v1, "account-key"

    invoke-static {}, Lmys;->a()Lejm;

    move-result-object v2

    invoke-virtual {v2, p0}, Lejm;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    const-string v1, "no-to-inform-key"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 42
    new-instance v1, Llnj;

    invoke-direct {v1}, Llnj;-><init>()V

    .line 43
    invoke-virtual {v1, v0}, Llnj;->setArguments(Landroid/os/Bundle;)V

    .line 44
    return-object v1
.end method

.method static synthetic a(Llnj;)Llnl;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Llnj;->c:Llnl;

    return-object v0
.end method


# virtual methods
.method public a()Landroid/support/v7/widget/RecyclerView$Adapter;
    .locals 3

    .prologue
    .line 60
    new-instance v0, Lllq;

    iget-object v1, p0, Llnj;->d:Ljava/util/List;

    iget-boolean v2, p0, Llnj;->e:Z

    invoke-direct {v0, v1, v2}, Lllq;-><init>(Ljava/util/List;Z)V

    .line 61
    new-instance v1, Llnk;

    invoke-direct {v1, p0}, Llnk;-><init>(Llnj;)V

    invoke-virtual {v0, v1}, Lllq;->a(Lllu;)V

    .line 70
    return-object v0
.end method

.method public a(Llnl;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Llnj;->c:Llnl;

    .line 75
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 49
    invoke-super {p0, p1}, Lmic;->onCreate(Landroid/os/Bundle;)V

    .line 50
    invoke-virtual {p0}, Llnj;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Llnj;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "account-key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {}, Lmys;->a()Lejm;

    move-result-object v0

    invoke-virtual {p0}, Llnj;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "account-key"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-class v3, [Lksd;

    invoke-virtual {v0, v2, v3}, Lejm;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Llnj;->d:Ljava/util/List;

    .line 53
    :cond_0
    invoke-virtual {p0}, Llnj;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Llnj;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "no-to-inform-key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 54
    invoke-virtual {p0}, Llnj;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "no-to-inform-key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Llnj;->e:Z

    .line 56
    :cond_1
    return-void
.end method
