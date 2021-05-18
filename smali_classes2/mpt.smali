.class public Lmpt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmmh;
.implements Lmps;


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Lmns;

.field private c:Lmmg;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lmns;)V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lmpt;->a:Landroid/app/Activity;

    .line 29
    iput-object p2, p0, Lmpt;->b:Lmns;

    .line 30
    new-instance v0, Lmmi;

    invoke-direct {v0, p1, p0}, Lmmi;-><init>(Landroid/app/Activity;Lmmh;)V

    iput-object v0, p0, Lmpt;->c:Lmmg;

    .line 31
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lmpt;->b:Lmns;

    invoke-interface {v0}, Lmns;->finish()V

    .line 57
    return-void
.end method

.method public a(Lgvb;)V
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lmpt;->b:Lmns;

    invoke-interface {v0, p1}, Lmns;->a(Lgvb;)V

    .line 43
    return-void
.end method

.method public a(Lmlo;)V
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lmpt;->c:Lmmg;

    invoke-interface {v0, p1}, Lmmg;->a(Lmlo;)V

    .line 37
    return-void
.end method

.method public b(Lgvb;)V
    .locals 2

    .prologue
    .line 47
    invoke-virtual {p1}, Lgvb;->g()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lgvb;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "incorrect authentication"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    const-string v0, "N\u00e3o foi poss\u00edvel efetuar a transa\u00e7\u00e3o. Por favor, tente novamente mais tarde."

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmxn;->a(Ljava/lang/String;Z)V

    .line 52
    :goto_0
    return-void

    .line 50
    :cond_0
    iget-object v0, p0, Lmpt;->b:Lmns;

    invoke-interface {v0, p1}, Lmns;->a(Lgvb;)V

    goto :goto_0
.end method
