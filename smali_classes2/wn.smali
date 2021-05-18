.class Lwn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lwh;


# direct methods
.method constructor <init>(Lwh;)V
    .locals 0

    .prologue
    .line 266
    iput-object p1, p0, Lwn;->a:Lwh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 269
    iget-object v0, p0, Lwn;->a:Lwh;

    invoke-static {v0}, Lwh;->c(Lwh;)Lacg;

    move-result-object v0

    invoke-virtual {v0}, Lacg;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lwn;->a:Lwh;

    invoke-static {v0}, Lwh;->a(Lwh;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lwn;->a:Lwh;

    .line 272
    invoke-static {v1}, Lwh;->a(Lwh;)Landroid/app/Activity;

    move-result-object v1

    sget v2, Llg;->app_atencao:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lwn;->a:Lwh;

    .line 273
    invoke-static {v2}, Lwh;->a(Lwh;)Landroid/app/Activity;

    move-result-object v2

    sget v3, Llg;->investir_por_valor_aviso_cheque_especial:I

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Llg;->app_sim:I

    sget v4, Llg;->app_cancelar:I

    new-instance v5, Lwo;

    invoke-direct {v5, p0}, Lwo;-><init>(Lwn;)V

    .line 271
    invoke-static/range {v0 .. v5}, Laad;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILaar;)Landroid/support/v7/app/AlertDialog;

    .line 299
    :goto_0
    return-void

    .line 281
    :cond_0
    iget-object v0, p0, Lwn;->a:Lwh;

    invoke-static {v0}, Lwh;->c(Lwh;)Lacg;

    move-result-object v0

    invoke-virtual {v0}, Lacg;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 283
    iget-object v0, p0, Lwn;->a:Lwh;

    invoke-static {v0}, Lwh;->a(Lwh;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lwn;->a:Lwh;

    invoke-static {v1}, Lwh;->a(Lwh;)Landroid/app/Activity;

    move-result-object v1

    sget v2, Llg;->app_atencao:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lwn;->a:Lwh;

    .line 284
    invoke-static {v2}, Lwh;->a(Lwh;)Landroid/app/Activity;

    move-result-object v2

    sget v3, Llg;->investir_por_valor_aviso_saldo_insuficiente:I

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lwn;->a:Lwh;

    .line 285
    invoke-static {v3}, Lwh;->a(Lwh;)Landroid/app/Activity;

    move-result-object v3

    sget v4, Llg;->app_alterar_aplicacao:I

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lwp;

    invoke-direct {v4, p0}, Lwp;-><init>(Lwn;)V

    .line 283
    invoke-static {v0, v1, v2, v3, v4}, Laad;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Laas;)V

    goto :goto_0

    .line 292
    :cond_1
    iget-object v0, p0, Lwn;->a:Lwh;

    invoke-static {v0}, Lwh;->c(Lwh;)Lacg;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lacg;->f(Z)V

    .line 293
    iget-object v0, p0, Lwn;->a:Lwh;

    .line 294
    invoke-virtual {v0}, Lwh;->e()Lack;

    move-result-object v0

    sget v1, Llg;->tag_name_recomendacao_acao:I

    invoke-virtual {v0, v1}, Lack;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lwn;->a:Lwh;

    .line 295
    invoke-virtual {v1}, Lwh;->e()Lack;

    move-result-object v1

    sget v2, Llg;->tag_valor_continuar:I

    invoke-virtual {v1, v2}, Lack;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 293
    invoke-static {v0, v1}, Lzy;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    invoke-static {}, Lzs;->a()Lzs;

    move-result-object v0

    iget-object v1, p0, Lwn;->a:Lwh;

    invoke-static {v1}, Lwh;->a(Lwh;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lwn;->a:Lwh;

    invoke-static {v2}, Lwh;->c(Lwh;)Lacg;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lzs;->e(Landroid/content/Context;Lacg;)V

    goto :goto_0
.end method
