.class Lxs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ltj;


# instance fields
.field final synthetic a:Lxq;


# direct methods
.method constructor <init>(Lxq;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lxs;->a:Lxq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Labv;)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 73
    check-cast p1, Ltm;

    .line 75
    if-eqz p1, :cond_3

    .line 76
    invoke-virtual {p1}, Ltm;->b()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 77
    invoke-virtual {p1}, Ltm;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 79
    iget-object v0, p0, Lxs;->a:Lxq;

    new-instance v1, Lacg;

    invoke-direct {v1}, Lacg;-><init>()V

    invoke-static {v0, v1}, Lxq;->a(Lxq;Lacg;)Lacg;

    .line 80
    iget-object v0, p0, Lxs;->a:Lxq;

    invoke-static {v0}, Lxq;->b(Lxq;)Lacg;

    move-result-object v0

    invoke-virtual {p1}, Ltm;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lacg;->f(Ljava/lang/String;)V

    .line 83
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v1, v2

    .line 84
    :goto_0
    invoke-virtual {p1}, Ltm;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 85
    invoke-virtual {p1}, Ltm;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsy;

    invoke-virtual {v0}, Lsy;->b()Ljava/lang/String;

    move-result-object v0

    const-string v4, "FUNDOS"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 86
    invoke-virtual {p1}, Ltm;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsy;

    invoke-virtual {v0}, Lsy;->b()Ljava/lang/String;

    move-result-object v0

    const-string v4, "POUPAN\u00c7A"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 87
    invoke-virtual {p1}, Ltm;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsy;

    invoke-virtual {v0}, Lsy;->b()Ljava/lang/String;

    move-result-object v0

    const-string v4, "CDB"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 88
    :cond_0
    invoke-virtual {p1}, Ltm;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 93
    :cond_2
    invoke-virtual {p1, v3}, Ltm;->a(Ljava/util/List;)V

    .line 94
    iget-object v0, p0, Lxs;->a:Lxq;

    invoke-static {v0, p1}, Lxq;->a(Lxq;Ltm;)V

    .line 95
    iget-object v0, p0, Lxs;->a:Lxq;

    invoke-static {v0}, Lxq;->c(Lxq;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 96
    iget-object v0, p0, Lxs;->a:Lxq;

    invoke-static {v0}, Lxq;->d(Lxq;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 99
    :cond_3
    return-void
.end method

.method public a(Laby;)V
    .locals 3

    .prologue
    .line 103
    iget-object v0, p0, Lxs;->a:Lxq;

    invoke-static {v0}, Lxq;->c(Lxq;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 105
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    iget-object v1, p0, Lxs;->a:Lxq;

    .line 106
    invoke-virtual {v1}, Lxq;->e()Lack;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Llg;->app_erro:I

    .line 107
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Llg;->app_erro_mensagem:I

    .line 108
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Llg;->app_tentar_novamente:I

    new-instance v2, Lxu;

    invoke-direct {v2, p0}, Lxu;-><init>(Lxs;)V

    .line 109
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Llg;->app_cancelar:I

    new-instance v2, Lxt;

    invoke-direct {v2, p0}, Lxt;-><init>(Lxs;)V

    .line 115
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 121
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 122
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 123
    return-void
.end method
