.class public Lhwl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhwk;


# instance fields
.field private a:Lhvw;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private b:Lhvk;


# direct methods
.method public constructor <init>(Lhvw;)V
    .locals 1
    .param p1    # Lhvw;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lhwl;->a:Lhvw;

    .line 26
    invoke-static {}, Lhvn;->f()Lhvk;

    move-result-object v0

    iput-object v0, p0, Lhwl;->b:Lhvk;

    .line 27
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 31
    iget-object v0, p0, Lhwl;->a:Lhvw;

    if-nez v0, :cond_0

    .line 36
    :goto_0
    return-void

    .line 33
    :cond_0
    iget-object v0, p0, Lhwl;->b:Lhvk;

    invoke-interface {v0}, Lhvk;->c()Lhxn;

    move-result-object v0

    .line 34
    iget-object v1, p0, Lhwl;->a:Lhvw;

    invoke-interface {v1, v0}, Lhvw;->a(Lhxn;)V

    .line 35
    iget-object v1, p0, Lhwl;->a:Lhvw;

    invoke-interface {v0}, Lhxn;->l()Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Lhvw;->a(Ljava/util/List;)V

    goto :goto_0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lhwl;->a:Lhvw;

    .line 41
    return-void
.end method
