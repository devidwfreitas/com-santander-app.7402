.class Lwk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lvz;


# instance fields
.field final synthetic a:Lwh;


# direct methods
.method constructor <init>(Lwh;)V
    .locals 0

    .prologue
    .line 138
    iput-object p1, p0, Lwk;->a:Lwh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Laby;)V
    .locals 2

    .prologue
    .line 163
    iget-object v0, p0, Lwk;->a:Lwh;

    invoke-static {v0}, Lwh;->a(Lwh;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lwm;

    invoke-direct {v1, p0}, Lwm;-><init>(Lwk;)V

    invoke-static {v0, v1}, Laad;->a(Landroid/content/Context;Laar;)V

    .line 174
    return-void
.end method

.method public a(Lwa;)V
    .locals 5

    .prologue
    .line 141
    if-eqz p1, :cond_1

    .line 143
    invoke-virtual {p1}, Lwa;->f()Lwb;

    move-result-object v0

    invoke-virtual {v0}, Lwb;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    invoke-virtual {p1}, Lwa;->g()Lwb;

    move-result-object v0

    invoke-virtual {v0}, Lwb;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 145
    :cond_0
    iget-object v0, p0, Lwk;->a:Lwh;

    invoke-static {v0, p1}, Lwh;->a(Lwh;Lwa;)V

    .line 159
    :goto_0
    return-void

    .line 148
    :cond_1
    iget-object v0, p0, Lwk;->a:Lwh;

    invoke-virtual {v0}, Lwh;->e()Lack;

    move-result-object v0

    iget-object v1, p0, Lwk;->a:Lwh;

    .line 149
    invoke-virtual {v1}, Lwh;->e()Lack;

    move-result-object v1

    invoke-virtual {v1}, Lack;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Llg;->app_atencao:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lwk;->a:Lwh;

    .line 150
    invoke-virtual {v2}, Lwh;->e()Lack;

    move-result-object v2

    invoke-virtual {v2}, Lack;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Llg;->app_dialog_recomendacao_tente_outro_valor:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lwk;->a:Lwh;

    .line 151
    invoke-virtual {v3}, Lwh;->e()Lack;

    move-result-object v3

    invoke-virtual {v3}, Lack;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Llg;->app_ok:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lwl;

    invoke-direct {v4, p0}, Lwl;-><init>(Lwk;)V

    .line 148
    invoke-static {v0, v1, v2, v3, v4}, Laad;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Laas;)V

    goto :goto_0
.end method
