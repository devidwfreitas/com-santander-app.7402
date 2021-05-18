.class Lmx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Llt;


# instance fields
.field final synthetic a:Lmr;


# direct methods
.method constructor <init>(Lmr;)V
    .locals 0

    .prologue
    .line 248
    iput-object p1, p0, Lmx;->a:Lmr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Labv;)V
    .locals 13

    .prologue
    const/4 v7, 0x0

    .line 252
    iget-object v0, p0, Lmx;->a:Lmr;

    check-cast p1, Llk;

    iput-object p1, v0, Lmr;->a:Llk;

    .line 254
    iget-object v0, p0, Lmx;->a:Lmr;

    iget-object v0, v0, Lmr;->a:Llk;

    invoke-virtual {v0}, Llk;->i()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmx;->a:Lmr;

    iget-object v0, v0, Lmr;->a:Llk;

    invoke-virtual {v0}, Llk;->i()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 255
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    iget-object v1, p0, Lmx;->a:Lmr;

    .line 256
    invoke-virtual {v1}, Lmr;->e()Lack;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Llg;->app_erro:I

    .line 257
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v0, p0, Lmx;->a:Lmr;

    iget-object v0, v0, Lmr;->a:Llk;

    .line 258
    invoke-virtual {v0}, Llk;->i()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lacb;

    invoke-virtual {v0}, Lacb;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Llg;->app_tentar_novamente:I

    new-instance v2, Lmz;

    invoke-direct {v2, p0}, Lmz;-><init>(Lmx;)V

    .line 259
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Llg;->app_cancelar:I

    new-instance v2, Lmy;

    invoke-direct {v2, p0}, Lmy;-><init>(Lmx;)V

    .line 263
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 267
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 268
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 270
    :cond_0
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 272
    iget-object v0, p0, Lmx;->a:Lmr;

    iget-object v0, v0, Lmr;->a:Llk;

    invoke-virtual {v0}, Llk;->k()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Llv;

    .line 273
    invoke-virtual {v6}, Llv;->i()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Llw;

    .line 275
    invoke-virtual {v6}, Llv;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v11

    .line 277
    invoke-virtual {v1}, Llw;->h()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Llm;

    .line 278
    new-instance v0, Lace;

    invoke-virtual {v6}, Llv;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v6}, Llv;->c()Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lace;-><init>(Llw;Ljava/lang/String;Ljava/lang/Integer;Llm;Ljava/lang/String;)V

    .line 279
    iget-object v2, p0, Lmx;->a:Lmr;

    iget-object v2, v2, Lmr;->a:Llk;

    invoke-virtual {v2}, Llk;->j()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lace;->a(Ljava/util/List;)V

    .line 280
    iget-object v2, p0, Lmx;->a:Lmr;

    invoke-static {v2}, Lmr;->b(Lmr;)Z

    move-result v2

    if-nez v2, :cond_3

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v0, v2}, Lace;->f(Z)V

    .line 282
    invoke-virtual {v6}, Llv;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lace;->a(Ljava/lang/String;)V

    .line 283
    invoke-virtual {v0, v1}, Lace;->a(Lto;)V

    .line 285
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    move v2, v7

    .line 280
    goto :goto_1

    .line 290
    :cond_4
    iget-object v0, p0, Lmx;->a:Lmr;

    invoke-static {v0}, Lmr;->b(Lmr;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 291
    iget-object v0, p0, Lmx;->a:Lmr;

    invoke-static {v0}, Lmr;->c(Lmr;)Lacg;

    move-result-object v0

    invoke-virtual {v0, v8}, Lacg;->b(Ljava/util/List;)V

    .line 296
    :goto_2
    iget-object v0, p0, Lmx;->a:Lmr;

    invoke-static {v0}, Lmr;->f(Lmr;)V

    .line 298
    iget-object v0, p0, Lmx;->a:Lmr;

    iget-object v0, v0, Lmr;->a:Llk;

    invoke-virtual {v0}, Llk;->h()Ljava/util/List;

    move-result-object v2

    .line 299
    iget-object v0, p0, Lmx;->a:Lmr;

    invoke-static {v0}, Lmr;->c(Lmr;)Lacg;

    move-result-object v0

    invoke-virtual {v0, v2}, Lacg;->e(Ljava/util/List;)V

    .line 300
    const-string v1, ""

    .line 302
    :goto_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v7, v0, :cond_8

    .line 303
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lacb;

    invoke-virtual {v0}, Lacb;->e()Ljava/lang/String;

    move-result-object v0

    const-string v3, "header"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 304
    iget-object v0, p0, Lmx;->a:Lmr;

    invoke-static {v0}, Lmr;->g(Lmr;)Landroid/widget/TextView;

    move-result-object v3

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lacb;

    invoke-virtual {v0}, Lacb;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 306
    :cond_5
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lacb;

    invoke-virtual {v0}, Lacb;->e()Ljava/lang/String;

    move-result-object v0

    const-string v3, "disclaimer"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 307
    const-string v0, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lacb;

    invoke-virtual {v0}, Lacb;->b()Ljava/lang/String;

    move-result-object v0

    .line 302
    :goto_4
    add-int/lit8 v7, v7, 0x1

    move-object v1, v0

    goto :goto_3

    .line 293
    :cond_6
    iget-object v0, p0, Lmx;->a:Lmr;

    invoke-static {v0}, Lmr;->c(Lmr;)Lacg;

    move-result-object v1

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lace;

    invoke-virtual {v1, v0}, Lacg;->c(Lace;)V

    goto :goto_2

    .line 308
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "line.separator"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "line.separator"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lacb;

    invoke-virtual {v0}, Lacb;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 312
    :cond_8
    iget-object v0, p0, Lmx;->a:Lmr;

    invoke-static {v0}, Lmr;->h(Lmr;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 313
    return-void

    :cond_9
    move-object v0, v1

    goto :goto_4
.end method

.method public a(Laby;)V
    .locals 3

    .prologue
    .line 317
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    iget-object v1, p0, Lmx;->a:Lmr;

    .line 318
    invoke-virtual {v1}, Lmr;->e()Lack;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Llg;->app_erro:I

    .line 319
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Llg;->app_erro_mensagem:I

    .line 320
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Llg;->app_tentar_novamente:I

    new-instance v2, Lnb;

    invoke-direct {v2, p0}, Lnb;-><init>(Lmx;)V

    .line 321
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Llg;->app_cancelar:I

    new-instance v2, Lna;

    invoke-direct {v2, p0}, Lna;-><init>(Lmx;)V

    .line 325
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 329
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 330
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 331
    return-void
.end method
