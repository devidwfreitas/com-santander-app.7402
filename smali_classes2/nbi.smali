.class Lnbi;
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
    .line 65
    iput-object p1, p0, Lnbi;->a:Lnbh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 69
    iget-object v0, p0, Lnbi;->a:Lnbh;

    iget-object v0, v0, Lnbh;->a:Lnbg;

    const-string v1, ""

    invoke-static {v0, v1}, Lnbg;->a(Lnbg;Ljava/lang/String;)Ljava/lang/String;

    .line 70
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lnbi;->a:Lnbh;

    iget-object v0, v0, Lnbh;->a:Lnbg;

    invoke-static {v0}, Lnbg;->c(Lnbg;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 71
    iget-object v0, p0, Lnbi;->a:Lnbh;

    iget-object v2, v0, Lnbh;->a:Lnbg;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lnbi;->a:Lnbh;

    iget-object v3, v3, Lnbh;->a:Lnbg;

    invoke-static {v3}, Lnbg;->d(Lnbg;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lnbi;->a:Lnbh;

    iget-object v0, v0, Lnbh;->a:Lnbg;

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

    .line 70
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 74
    :cond_0
    new-instance v0, Lnec;

    new-instance v1, Lnbj;

    invoke-direct {v1, p0}, Lnbj;-><init>(Lnbi;)V

    iget-object v2, p0, Lnbi;->a:Lnbh;

    iget-object v2, v2, Lnbh;->a:Lnbg;

    .line 89
    invoke-static {v2}, Lnbg;->e(Lnbg;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lnec;-><init>(Lgkw;Landroid/app/Activity;)V

    iget-object v1, p0, Lnbi;->a:Lnbh;

    iget-object v1, v1, Lnbh;->a:Lnbg;

    invoke-static {v1}, Lnbg;->d(Lnbg;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnec;->a(Ljava/lang/String;)V

    .line 90
    return-void
.end method
