.class Lnbk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lnbh;


# direct methods
.method constructor <init>(Lnbh;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lnbk;->a:Lnbh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 104
    iget-object v0, p0, Lnbk;->a:Lnbh;

    iget-object v0, v0, Lnbh;->a:Lnbg;

    invoke-static {v0}, Lnbg;->b(Lnbg;)Lndw;

    move-result-object v0

    const-string v1, ""

    invoke-interface {v0, v1}, Lndw;->c(Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lnbk;->a:Lnbh;

    iget-object v0, v0, Lnbh;->a:Lnbg;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lnbg;->a(Lnbg;Ljava/util/List;)Ljava/util/List;

    .line 106
    iget-object v0, p0, Lnbk;->a:Lnbh;

    iget-object v0, v0, Lnbh;->a:Lnbg;

    invoke-static {v0}, Lnbg;->b(Lnbg;)Lndw;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lndw;->a(Z)V

    .line 107
    return-void
.end method
