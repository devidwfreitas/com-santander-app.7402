.class public abstract Lbyu;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lbhl;


# direct methods
.method public constructor <init>(Lbhl;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lbyu;->a:Lbhl;

    .line 41
    return-void
.end method


# virtual methods
.method public a(Lbmr;)V
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lbyu;->a:Lbhl;

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lbyu;->a:Lbhl;

    invoke-interface {v0}, Lbhl;->a()V

    .line 52
    :cond_0
    return-void
.end method

.method public abstract a(Lbmr;Landroid/os/Bundle;)V
.end method

.method public a(Lbmr;Lbhp;)V
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lbyu;->a:Lbhl;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lbyu;->a:Lbhl;

    invoke-interface {v0, p2}, Lbhl;->a(Lbhp;)V

    .line 61
    :cond_0
    return-void
.end method
