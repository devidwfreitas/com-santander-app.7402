.class public Lmve;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmvd;


# instance fields
.field private a:Lmtd;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private b:Lmsc;


# direct methods
.method public constructor <init>(Lmtd;)V
    .locals 1
    .param p1    # Lmtd;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lmve;->a:Lmtd;

    .line 26
    invoke-static {}, Lmse;->l()Lmsc;

    move-result-object v0

    iput-object v0, p0, Lmve;->b:Lmsc;

    .line 27
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 31
    iget-object v0, p0, Lmve;->a:Lmtd;

    if-nez v0, :cond_0

    .line 35
    :goto_0
    return-void

    .line 33
    :cond_0
    iget-object v0, p0, Lmve;->b:Lmsc;

    invoke-interface {v0}, Lmsc;->a()Lmrp;

    move-result-object v0

    .line 34
    iget-object v1, p0, Lmve;->a:Lmtd;

    invoke-interface {v1, v0}, Lmtd;->a(Lmrp;)V

    goto :goto_0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lmve;->a:Lmtd;

    .line 40
    return-void
.end method
