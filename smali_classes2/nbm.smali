.class Lnbm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lnbg;


# direct methods
.method constructor <init>(Lnbg;)V
    .locals 0

    .prologue
    .line 141
    iput-object p1, p0, Lnbm;->a:Lnbg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 145
    iget-object v0, p0, Lnbm;->a:Lnbg;

    invoke-static {v0}, Lnbg;->b(Lnbg;)Lndw;

    move-result-object v0

    const-string v1, ""

    invoke-interface {v0, v1}, Lndw;->c(Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Lnbm;->a:Lnbg;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lnbg;->a(Lnbg;Ljava/util/List;)Ljava/util/List;

    .line 147
    iget-object v0, p0, Lnbm;->a:Lnbg;

    invoke-static {v0}, Lnbg;->b(Lnbg;)Lndw;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lndw;->a(Z)V

    .line 148
    return-void
.end method
