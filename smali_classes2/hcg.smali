.class Lhcg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljoj;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lhcf;


# direct methods
.method constructor <init>(Lhcf;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lhcg;->b:Lhcf;

    iput-object p2, p0, Lhcg;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljnc;)V
    .locals 3
    .param p1    # Ljnc;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 38
    const/4 v0, 0x0

    .line 39
    if-eqz p1, :cond_0

    .line 40
    iget-object v0, p0, Lhcg;->b:Lhcf;

    invoke-static {v0}, Lhcf;->a(Lhcf;)V

    .line 41
    new-instance v1, Landroid/content/Intent;

    iget-object v0, p0, Lhcg;->a:Landroid/content/Context;

    const-class v2, Lcom/santander/app/lojaonline/presentation/LojaOnlineActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 42
    const/high16 v0, 0x4000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 43
    new-instance v0, Lhbu;

    invoke-direct {v0, v1}, Lhbu;-><init>(Landroid/content/Intent;)V

    .line 47
    :goto_0
    iget-object v1, p0, Lhcg;->b:Lhcf;

    iget-object v1, v1, Lhcf;->a:Lhbv;

    iget-object v2, p0, Lhcg;->a:Landroid/content/Context;

    invoke-interface {v1, v2, v0}, Lhbv;->a(Landroid/content/Context;Lhbu;)V

    .line 48
    return-void

    .line 45
    :cond_0
    iget-object v1, p0, Lhcg;->b:Lhcf;

    invoke-static {v1}, Lhcf;->b(Lhcf;)V

    goto :goto_0
.end method
