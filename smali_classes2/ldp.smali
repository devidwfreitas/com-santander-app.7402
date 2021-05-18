.class Lldp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkxl;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkxl",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lldn;


# direct methods
.method constructor <init>(Lldn;)V
    .locals 0

    .prologue
    .line 223
    iput-object p1, p0, Lldp;->a:Lldn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 223
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lldp;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 226
    iget-object v0, p0, Lldp;->a:Lldn;

    invoke-virtual {v0}, Lldn;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 231
    :goto_0
    return-void

    .line 228
    :cond_0
    iget-object v0, p0, Lldp;->a:Lldn;

    invoke-static {v0}, Lldn;->a(Lldn;)Lbr/com/zup/multistatelayout/MultiStateLayout;

    move-result-object v0

    sget-object v1, Laor;->CONTENT:Laor;

    invoke-virtual {v0, v1}, Lbr/com/zup/multistatelayout/MultiStateLayout;->setState(Laor;)V

    .line 230
    iget-object v0, p0, Lldp;->a:Lldn;

    invoke-virtual {v0}, Lldn;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, p1}, Lmhj;->c(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method
