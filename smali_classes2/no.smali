.class Lno;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnh;


# instance fields
.field final synthetic a:Lnl;


# direct methods
.method constructor <init>(Lnl;)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lno;->a:Lnl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Labv;)V
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lno;->a:Lnl;

    check-cast p1, Lne;

    invoke-static {v0, p1}, Lnl;->a(Lnl;Lne;)V

    .line 133
    return-void
.end method

.method public a(Laby;)V
    .locals 2

    .prologue
    .line 137
    iget-object v0, p0, Lno;->a:Lnl;

    invoke-virtual {v0}, Lnl;->e()Lack;

    move-result-object v0

    new-instance v1, Lnp;

    invoke-direct {v1, p0}, Lnp;-><init>(Lno;)V

    invoke-static {v0, v1}, Laad;->a(Landroid/content/Context;Laar;)V

    .line 149
    return-void
.end method
