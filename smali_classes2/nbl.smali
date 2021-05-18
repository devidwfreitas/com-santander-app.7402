.class Lnbl;
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
    .line 120
    iput-object p1, p0, Lnbl;->a:Lnbg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 124
    iget-object v0, p0, Lnbl;->a:Lnbg;

    const-string v1, ""

    invoke-static {v0, v1}, Lnbg;->a(Lnbg;Ljava/lang/String;)Ljava/lang/String;

    .line 125
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lnbl;->a:Lnbg;

    invoke-static {v0}, Lnbg;->c(Lnbg;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 126
    iget-object v2, p0, Lnbl;->a:Lnbg;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lnbl;->a:Lnbg;

    invoke-static {v3}, Lnbg;->d(Lnbg;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lnbl;->a:Lnbg;

    invoke-static {v0}, Lnbg;->c(Lnbg;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lnbg;->a(Lnbg;Ljava/lang/String;)Ljava/lang/String;

    .line 125
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 129
    :cond_0
    iget-object v0, p0, Lnbl;->a:Lnbg;

    invoke-static {v0}, Lnbg;->a(Lnbg;)Lmip;

    move-result-object v0

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->y()Lmwy;

    move-result-object v0

    invoke-virtual {v0}, Lmwy;->b()Lmwx;

    move-result-object v0

    iget-object v1, p0, Lnbl;->a:Lnbg;

    invoke-static {v1}, Lnbg;->d(Lnbg;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmwx;->f(Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lnbl;->a:Lnbg;

    invoke-static {v0}, Lnbg;->b(Lnbg;)Lndw;

    move-result-object v0

    invoke-interface {v0}, Lndw;->f()V

    .line 131
    return-void
.end method
