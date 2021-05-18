.class Llcv;
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
.field final synthetic a:Llct;


# direct methods
.method constructor <init>(Llct;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Llcv;->a:Llct;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 104
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Llcv;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 107
    iget-object v0, p0, Llcv;->a:Llct;

    invoke-virtual {v0}, Llct;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 111
    :goto_0
    return-void

    .line 109
    :cond_0
    iget-object v0, p0, Llcv;->a:Llct;

    invoke-static {v0}, Llct;->a(Llct;)Lbr/com/zup/multistatelayout/MultiStateLayout;

    move-result-object v0

    sget-object v1, Laor;->CONTENT:Laor;

    invoke-virtual {v0, v1}, Lbr/com/zup/multistatelayout/MultiStateLayout;->setState(Laor;)V

    .line 110
    iget-object v0, p0, Llcv;->a:Llct;

    invoke-virtual {v0}, Llct;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Llcv;->a:Llct;

    invoke-virtual {v1}, Llct;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090362

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmhj;->c(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method
