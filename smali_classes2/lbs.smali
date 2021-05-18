.class Llbs;
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
.field final synthetic a:Llbq;


# direct methods
.method constructor <init>(Llbq;)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Llbs;->a:Llbq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 134
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Llbs;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 137
    iget-object v0, p0, Llbs;->a:Llbq;

    invoke-virtual {v0}, Llbq;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 142
    :goto_0
    return-void

    .line 139
    :cond_0
    iget-object v0, p0, Llbs;->a:Llbq;

    invoke-static {v0}, Llbq;->a(Llbq;)Lbr/com/zup/multistatelayout/MultiStateLayout;

    move-result-object v0

    sget-object v1, Laor;->CONTENT:Laor;

    invoke-virtual {v0, v1}, Lbr/com/zup/multistatelayout/MultiStateLayout;->setState(Laor;)V

    .line 141
    iget-object v0, p0, Llbs;->a:Llbq;

    invoke-virtual {v0}, Llbq;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, p1}, Lmhj;->c(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method
