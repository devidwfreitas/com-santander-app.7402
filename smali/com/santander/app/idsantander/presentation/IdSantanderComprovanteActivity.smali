.class public Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;
.super Lgrs;
.source "SourceFile"

# interfaces
.implements Liyd;


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/Button;

.field private e:Landroid/widget/Button;

.field private f:Lcom/santander/app/components/view/PlayGifView/PlayGifView;

.field private g:Ljae;

.field private w:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Lgrs;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->w:Z

    return-void
.end method

.method private a(I)V
    .locals 1

    .prologue
    .line 518
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 519
    invoke-virtual {p0, p1, v0}, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->setResult(ILandroid/content/Intent;)V

    .line 520
    invoke-virtual {p0}, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->finish()V

    .line 521
    return-void
.end method

.method public static synthetic a(Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;ZZ)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->a(ZZ)V

    return-void
.end method

.method private a(ZZ)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 481
    const-string v0, "qrPreferences"

    invoke-virtual {p0, v0, v2}, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {}, Lmzr;->n()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 483
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    invoke-virtual {v0}, Lmiq;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->y()Lmwy;

    move-result-object v0

    invoke-virtual {v0, v2}, Lmwy;->a(Z)V

    .line 485
    if-eqz p1, :cond_0

    .line 486
    sget-object v0, Lnat;->VER_MAIS_TARDE:Lnat;

    invoke-virtual {v0}, Lnat;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {}, Lmzr;->n()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 489
    :cond_0
    if-eqz p2, :cond_1

    .line 490
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->a(I)V

    .line 495
    :goto_0
    return-void

    .line 494
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static synthetic a(Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;)Z
    .locals 1

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->w:Z

    return v0
.end method

.method public static synthetic b(Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->g()V

    return-void
.end method

.method public static synthetic c(Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->k()V

    return-void
.end method

.method public static synthetic d(Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->n()V

    return-void
.end method

.method private e()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 353
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->e:Landroid/widget/Button;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 354
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 355
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->d:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 357
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->f:Lcom/santander/app/components/view/PlayGifView/PlayGifView;

    const v1, 0x7f020559

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/PlayGifView/PlayGifView;->setGifResource(I)V

    .line 359
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->a:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090adb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 360
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09093a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 362
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->d:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090165

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 363
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->d:Landroid/widget/Button;

    new-instance v1, Lixr;

    invoke-direct {v1, p0}, Lixr;-><init>(Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 369
    return-void
.end method

.method public static synthetic e(Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->h()V

    return-void
.end method

.method private f()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 373
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->d:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 374
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->e:Landroid/widget/Button;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 375
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 377
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->f:Lcom/santander/app/components/view/PlayGifView/PlayGifView;

    const v1, 0x7f020559

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/PlayGifView/PlayGifView;->setGifResource(I)V

    .line 379
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->a:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090adb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 380
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090953

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 382
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->d:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090165

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 383
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->d:Landroid/widget/Button;

    new-instance v1, Lixs;

    invoke-direct {v1, p0}, Lixs;-><init>(Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 389
    return-void
.end method

.method public static synthetic f(Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->i()V

    return-void
.end method

.method private g()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 454
    const-string v0, "qrPreferences"

    invoke-virtual {p0, v0, v2}, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {}, Lmzr;->n()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 455
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    invoke-virtual {v0}, Lmiq;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->y()Lmwy;

    move-result-object v0

    invoke-virtual {v0, v2}, Lmwy;->a(Z)V

    .line 457
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->v:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->y()Lmwy;

    move-result-object v0

    invoke-virtual {v0}, Lmwy;->a()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lnaz;->MODO_CONSULTIVO_TELA_06_APARELHO_NAO_HABILITADO:Lnaz;

    invoke-virtual {v1}, Lnaz;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->v:Lmip;

    .line 458
    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->y()Lmwy;

    move-result-object v0

    invoke-virtual {v0}, Lmwy;->a()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lnaz;->CONVERSAO_ID_OBRIGATORIA_TELA_41:Lnaz;

    invoke-virtual {v1}, Lnaz;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->v:Lmip;

    .line 459
    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->y()Lmwy;

    move-result-object v0

    invoke-virtual {v0}, Lmwy;->a()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lnaz;->HABILITAR_ID_NOVAMENTE_TELA_50_OU_MODO_CONSULTIVO:Lnaz;

    invoke-virtual {v1}, Lnaz;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->v:Lmip;

    .line 460
    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->y()Lmwy;

    move-result-object v0

    invoke-virtual {v0}, Lmwy;->a()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lnaz;->CONVERSAO_ID_OBRIGATORIA_TELA_41_ATIVACAO_CSO:Lnaz;

    invoke-virtual {v1}, Lnaz;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 462
    :cond_0
    sget-object v0, Lnat;->VER_MAIS_TARDE:Lnat;

    invoke-virtual {v0}, Lnat;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {}, Lmzr;->n()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 476
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->startActivity(Landroid/content/Intent;)V

    .line 477
    return-void

    .line 464
    :cond_1
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->v:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->y()Lmwy;

    move-result-object v0

    invoke-virtual {v0}, Lmwy;->a()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lnaz;->OFERTAR_ID_TELA_OFERTA_ATIVACAO_CSO:Lnaz;

    invoke-virtual {v1}, Lnaz;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->v:Lmip;

    .line 465
    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->y()Lmwy;

    move-result-object v0

    invoke-virtual {v0}, Lmwy;->a()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lnaz;->OFERTAR_ID_CSO_TRANSACIONAL:Lnaz;

    invoke-virtual {v1}, Lnaz;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->v:Lmip;

    .line 466
    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->y()Lmwy;

    move-result-object v0

    invoke-virtual {v0}, Lmwy;->a()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lnaz;->TELA_OFERTA_ATIVACAO_CSO:Lnaz;

    invoke-virtual {v1}, Lnaz;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->v:Lmip;

    .line 467
    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->y()Lmwy;

    move-result-object v0

    invoke-virtual {v0}, Lmwy;->a()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lnaz;->CSO_TRANSACIONAL:Lnaz;

    invoke-virtual {v1}, Lnaz;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 469
    :cond_2
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->v:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->y()Lmwy;

    move-result-object v0

    sget-object v1, Lnaz;->OFERTAR_ID_CSO_TRANSACIONAL:Lnaz;

    invoke-virtual {v1}, Lnaz;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmwy;->a(Ljava/lang/String;)V

    .line 470
    sget-object v0, Lnat;->VER_MAIS_TARDE:Lnat;

    invoke-virtual {v0}, Lnat;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {}, Lmzr;->n()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    .line 472
    :cond_3
    sget-object v0, Lnat;->VER_MAIS_TARDE:Lnat;

    invoke-virtual {v0}, Lnat;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {}, Lmzr;->n()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 473
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->v:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->y()Lmwy;

    move-result-object v0

    sget-object v1, Lnaz;->HOME_CONSULTIVA:Lnaz;

    invoke-virtual {v1}, Lnaz;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmwy;->a(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public static synthetic g(Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->j()V

    return-void
.end method

.method private h()V
    .locals 2

    .prologue
    .line 498
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->startActivity(Landroid/content/Intent;)V

    .line 499
    return-void
.end method

.method private i()V
    .locals 2

    .prologue
    .line 502
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/idsantander/presentation/IdSantanderSincroniaActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->startActivity(Landroid/content/Intent;)V

    .line 503
    return-void
.end method

.method private j()V
    .locals 2

    .prologue
    .line 506
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/idsantander/presentation/IdSantanderOtimizacaoActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->startActivity(Landroid/content/Intent;)V

    .line 507
    return-void
.end method

.method private k()V
    .locals 2

    .prologue
    .line 510
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/idsantander/presentation/IdSantanderEscolhaCelularActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->startActivity(Landroid/content/Intent;)V

    .line 511
    return-void
.end method

.method private k(Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 393
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->d:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 394
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->e:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 396
    invoke-direct {p0, p1}, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 398
    if-eqz v0, :cond_0

    .line 399
    iget-object v1, p0, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 400
    iget-object v1, p0, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->c:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090549

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "%data%"

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 406
    :goto_0
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->f:Lcom/santander/app/components/view/PlayGifView/PlayGifView;

    const v1, 0x7f02055d

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/PlayGifView/PlayGifView;->setGifResource(I)V

    .line 408
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->a:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090ad7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 409
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090939

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 411
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->d:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090166

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 412
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->d:Landroid/widget/Button;

    new-instance v1, Lixt;

    invoke-direct {v1, p0}, Lixt;-><init>(Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 425
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->e:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09016e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 426
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->e:Landroid/widget/Button;

    new-instance v1, Lixu;

    invoke-direct {v1, p0}, Lixu;-><init>(Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 433
    return-void

    .line 403
    :cond_0
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->c:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private l(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 437
    if-nez p1, :cond_1

    .line 449
    :cond_0
    :goto_0
    return-object v0

    .line 441
    :cond_1
    const-string v1, "|"

    invoke-static {v1}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 445
    array-length v2, v1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 446
    const/4 v0, 0x1

    aget-object v0, v1, v0

    goto :goto_0
.end method

.method private n()V
    .locals 2

    .prologue
    .line 514
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoQrOuAtmOfertaActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->startActivity(Landroid/content/Intent;)V

    .line 515
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 96
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    invoke-virtual {v0}, Lmiq;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->y()Lmwy;

    move-result-object v0

    sget-object v1, Lnaz;->TRANSACIONAL_COM_ID_OU_OTIMIZACAO:Lnaz;

    invoke-virtual {v1}, Lnaz;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmwy;->a(Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 99
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->d:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 100
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->e:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 102
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->f:Lcom/santander/app/components/view/PlayGifView/PlayGifView;

    const v1, 0x7f020561

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/PlayGifView/PlayGifView;->setGifResource(I)V

    .line 104
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->a:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090ada

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09093d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->d:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090165

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 108
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->d:Landroid/widget/Button;

    new-instance v1, Lixv;

    invoke-direct {v1, p0}, Lixv;-><init>(Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 74
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->d:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 75
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->e:Landroid/widget/Button;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 76
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 78
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->f:Lcom/santander/app/components/view/PlayGifView/PlayGifView;

    const v1, 0x7f020559

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/PlayGifView/PlayGifView;->setGifResource(I)V

    .line 80
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->a:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090adb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09093f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->c:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090549

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "%data%"

    invoke-virtual {v1, v2, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->d:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090165

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 85
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->d:Landroid/widget/Button;

    new-instance v1, Lixm;

    invoke-direct {v1, p0}, Lixm;-><init>(Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    return-void
.end method

.method public b()V
    .locals 3

    .prologue
    const/4 v1, 0x4

    .line 203
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->e:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 204
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 205
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->d:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 207
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->f:Lcom/santander/app/components/view/PlayGifView/PlayGifView;

    const v1, 0x7f020560

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/PlayGifView/PlayGifView;->setGifResource(I)V

    .line 209
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->a:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090ad8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 210
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09093b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 212
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->d:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090165

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 213
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->d:Landroid/widget/Button;

    new-instance v1, Liya;

    invoke-direct {v1, p0}, Liya;-><init>(Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 220
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 118
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->e:Landroid/widget/Button;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 119
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 120
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->d:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 122
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->f:Lcom/santander/app/components/view/PlayGifView/PlayGifView;

    const v1, 0x7f020559

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/PlayGifView/PlayGifView;->setGifResource(I)V

    .line 124
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->a:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090adb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09093f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->c:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090549

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "%data%"

    invoke-virtual {v1, v2, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->d:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090165

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 129
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->d:Landroid/widget/Button;

    new-instance v1, Lixw;

    invoke-direct {v1, p0}, Lixw;-><init>(Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 255
    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->w:Z

    invoke-direct {p0, v0, v1}, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->a(ZZ)V

    .line 256
    return-void
.end method

.method public d()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 260
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    invoke-virtual {v0}, Lmiq;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->y()Lmwy;

    move-result-object v0

    sget-object v1, Lnaz;->TRANSACIONAL_COM_ID_OU_OTIMIZACAO:Lnaz;

    invoke-virtual {v1}, Lnaz;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmwy;->a(Ljava/lang/String;)V

    .line 262
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 263
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->d:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 264
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->e:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 266
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->f:Lcom/santander/app/components/view/PlayGifView/PlayGifView;

    const v1, 0x7f020561

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/PlayGifView/PlayGifView;->setGifResource(I)V

    .line 268
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->a:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090ada

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 269
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090938

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 271
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->d:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090165

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 272
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->d:Landroid/widget/Button;

    new-instance v1, Lixn;

    invoke-direct {v1, p0}, Lixn;-><init>(Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 278
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 140
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->e:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 141
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 142
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->d:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 144
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->f:Lcom/santander/app/components/view/PlayGifView/PlayGifView;

    const v1, 0x7f020559

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/PlayGifView/PlayGifView;->setGifResource(I)V

    .line 146
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->a:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090adb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09093e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->c:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090549

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "%data%"

    invoke-virtual {v1, v2, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->d:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090166

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 151
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->d:Landroid/widget/Button;

    new-instance v1, Lixx;

    invoke-direct {v1, p0}, Lixx;-><init>(Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->e:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09016e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 170
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->e:Landroid/widget/Button;

    new-instance v1, Lixy;

    invoke-direct {v1, p0}, Lixy;-><init>(Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 181
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->e:Landroid/widget/Button;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 182
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 183
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->d:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 185
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->f:Lcom/santander/app/components/view/PlayGifView/PlayGifView;

    const v1, 0x7f020559

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/PlayGifView/PlayGifView;->setGifResource(I)V

    .line 187
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->a:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090adb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 188
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09093f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 189
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->c:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090549

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "%data%"

    invoke-virtual {v1, v2, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 191
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->d:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090165

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 192
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->d:Landroid/widget/Button;

    new-instance v1, Lixz;

    invoke-direct {v1, p0}, Lixz;-><init>(Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 198
    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 225
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->e:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 226
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 227
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->d:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 229
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->f:Lcom/santander/app/components/view/PlayGifView/PlayGifView;

    const v1, 0x7f02055e

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/PlayGifView/PlayGifView;->setGifResource(I)V

    .line 231
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->a:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090ad9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 232
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09093c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 233
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->c:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090549

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "%data%"

    invoke-virtual {v1, v2, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 235
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->d:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090166

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 236
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->d:Landroid/widget/Button;

    new-instance v1, Liyb;

    invoke-direct {v1, p0}, Liyb;-><init>(Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 243
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->e:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09016d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 244
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->e:Landroid/widget/Button;

    new-instance v1, Liyc;

    invoke-direct {v1, p0}, Liyc;-><init>(Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 251
    return-void
.end method

.method public g(Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 283
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->e:Landroid/widget/Button;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 284
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 285
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->d:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 287
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->f:Lcom/santander/app/components/view/PlayGifView/PlayGifView;

    const v1, 0x7f02055e

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/PlayGifView/PlayGifView;->setGifResource(I)V

    .line 289
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->a:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090adb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 290
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090951

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 291
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->c:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090549

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "%data%"

    invoke-virtual {v1, v2, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 293
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->d:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090165

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 294
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->d:Landroid/widget/Button;

    new-instance v1, Lixo;

    invoke-direct {v1, p0}, Lixo;-><init>(Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 300
    return-void
.end method

.method public h(Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 305
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->e:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 306
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 307
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->d:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 309
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->f:Lcom/santander/app/components/view/PlayGifView/PlayGifView;

    const v1, 0x7f02055e

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/PlayGifView/PlayGifView;->setGifResource(I)V

    .line 311
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->a:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090adb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 312
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090952

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 313
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->c:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090549

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "%data%"

    invoke-virtual {v1, v2, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 315
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->d:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090166

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 316
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->d:Landroid/widget/Button;

    new-instance v1, Lixp;

    invoke-direct {v1, p0}, Lixp;-><init>(Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 323
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->e:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090164

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 324
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->e:Landroid/widget/Button;

    new-instance v1, Lixq;

    invoke-direct {v1, p0}, Lixq;-><init>(Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 330
    return-void
.end method

.method public i(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 335
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "-1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 336
    :cond_0
    invoke-direct {p0}, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->e()V

    .line 344
    :goto_0
    return-void

    .line 337
    :cond_1
    const-string v0, "falhaComunicacao"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 338
    invoke-direct {p0, p1}, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->k(Ljava/lang/String;)V

    goto :goto_0

    .line 339
    :cond_2
    const-string v0, "permissaoSms"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 340
    invoke-direct {p0}, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->f()V

    goto :goto_0

    .line 342
    :cond_3
    invoke-direct {p0}, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->e()V

    goto :goto_0
.end method

.method public j(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 348
    invoke-direct {p0}, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->k()V

    .line 349
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 69
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 44
    invoke-super {p0, p1}, Lgrs;->onCreate(Landroid/os/Bundle;)V

    .line 45
    invoke-virtual {p0}, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 46
    invoke-virtual {p0}, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->hide()V

    .line 47
    const v0, 0x7f040075

    invoke-virtual {p0, v0}, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->setContentView(I)V

    .line 49
    const v0, 0x7f10032d

    invoke-virtual {p0, v0}, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->a:Landroid/widget/TextView;

    .line 50
    const v0, 0x7f10032e

    invoke-virtual {p0, v0}, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->b:Landroid/widget/TextView;

    .line 51
    const v0, 0x7f100358

    invoke-virtual {p0, v0}, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->c:Landroid/widget/TextView;

    .line 53
    const v0, 0x7f10034f

    invoke-virtual {p0, v0}, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->d:Landroid/widget/Button;

    .line 54
    const v0, 0x7f100352

    invoke-virtual {p0, v0}, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->e:Landroid/widget/Button;

    .line 56
    const v0, 0x7f10032c

    invoke-virtual {p0, v0}, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/PlayGifView/PlayGifView;

    iput-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->f:Lcom/santander/app/components/view/PlayGifView/PlayGifView;

    .line 58
    invoke-virtual {p0}, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->getCallingActivity()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->w:Z

    .line 60
    new-instance v0, Ljaf;

    invoke-direct {v0, p0}, Ljaf;-><init>(Liyd;)V

    iput-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->g:Ljae;

    .line 62
    iget-object v3, p0, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->g:Ljae;

    .line 63
    invoke-virtual {p0}, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "content"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "content"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 64
    :goto_1
    invoke-virtual {p0}, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v4, "id"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "id"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Liut;

    .line 63
    :goto_2
    invoke-interface {v3, v1, v0}, Ljae;->a(Ljava/lang/String;Liut;)V

    .line 65
    return-void

    .line 58
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    move-object v1, v2

    .line 63
    goto :goto_1

    :cond_2
    move-object v0, v2

    .line 64
    goto :goto_2
.end method
