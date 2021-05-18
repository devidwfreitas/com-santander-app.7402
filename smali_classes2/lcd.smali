.class Llcd;
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
.field final synthetic a:Llca;


# direct methods
.method constructor <init>(Llca;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Llcd;->a:Llca;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 119
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Llcd;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Llcd;->a:Llca;

    invoke-virtual {v0}, Llca;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 128
    :goto_0
    return-void

    .line 123
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 124
    iget-object v1, p0, Llcd;->a:Llca;

    invoke-static {v1, v0}, Llca;->a(Llca;Ljava/util/List;)V

    .line 126
    iget-object v0, p0, Llcd;->a:Llca;

    invoke-static {v0}, Llca;->d(Llca;)Lbr/com/zup/multistatelayout/MultiStateLayout;

    move-result-object v0

    sget-object v1, Laor;->CONTENT:Laor;

    invoke-virtual {v0, v1}, Lbr/com/zup/multistatelayout/MultiStateLayout;->setState(Laor;)V

    .line 127
    iget-object v0, p0, Llcd;->a:Llca;

    invoke-virtual {v0}, Llca;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, p1}, Lmhj;->c(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method
