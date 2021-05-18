.class public Lbr/com/santander/dynamicauth/features/idsantander/a/a;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Landroid/net/Uri;

.field private e:Landroid/app/Activity;

.field private f:Lbr/com/santander/dynamicauth/features/idsantander/view/PlayGifView/PlayGifView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private final i:J


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "819B98B42786BFBEC717C789AF7B3"

    iput-object v0, p0, Lbr/com/santander/dynamicauth/features/idsantander/a/a;->a:Ljava/lang/String;

    const-string v0, "com.santander.app.idsantander.idsantanderprovedor"

    iput-object v0, p0, Lbr/com/santander/dynamicauth/features/idsantander/a/a;->b:Ljava/lang/String;

    const-string v0, "content://com.santander.app.idsantander.idsantanderprovedor/"

    iput-object v0, p0, Lbr/com/santander/dynamicauth/features/idsantander/a/a;->c:Ljava/lang/String;

    const-string v0, "content://com.santander.app.idsantander.idsantanderprovedor/819B98B42786BFBEC717C789AF7B3"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lbr/com/santander/dynamicauth/features/idsantander/a/a;->d:Landroid/net/Uri;

    const-wide/16 v0, 0x5dc

    iput-wide v0, p0, Lbr/com/santander/dynamicauth/features/idsantander/a/a;->i:J

    iput-object p1, p0, Lbr/com/santander/dynamicauth/features/idsantander/a/a;->e:Landroid/app/Activity;

    sget v0, Lbr/com/santander/dynamicauth/R$id;->validacao_id_santandder_gif:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lbr/com/santander/dynamicauth/features/idsantander/view/PlayGifView/PlayGifView;

    iput-object v0, p0, Lbr/com/santander/dynamicauth/features/idsantander/a/a;->f:Lbr/com/santander/dynamicauth/features/idsantander/view/PlayGifView/PlayGifView;

    iget-object v0, p0, Lbr/com/santander/dynamicauth/features/idsantander/a/a;->f:Lbr/com/santander/dynamicauth/features/idsantander/view/PlayGifView/PlayGifView;

    sget v1, Lbr/com/santander/dynamicauth/R$drawable;->id_santander_anima_habilitacao:I

    invoke-virtual {v0, v1}, Lbr/com/santander/dynamicauth/features/idsantander/view/PlayGifView/PlayGifView;->setGifResource(I)V

    sget v0, Lbr/com/santander/dynamicauth/R$id;->validacao_id_santandder_text_view_titulo:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbr/com/santander/dynamicauth/features/idsantander/a/a;->g:Landroid/widget/TextView;

    sget v0, Lbr/com/santander/dynamicauth/R$id;->validacao_id_santandder_text_view_sub_titulo_1:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbr/com/santander/dynamicauth/features/idsantander/a/a;->h:Landroid/widget/TextView;

    invoke-direct {p0}, Lbr/com/santander/dynamicauth/features/idsantander/a/a;->c()V

    return-void
.end method

.method public static synthetic a(Lbr/com/santander/dynamicauth/features/idsantander/a/a;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lbr/com/santander/dynamicauth/features/idsantander/a/a;->e:Landroid/app/Activity;

    return-object v0
.end method

.method private a()Ljava/lang/String;
    .locals 6

    const/4 v2, 0x0

    iget-object v0, p0, Lbr/com/santander/dynamicauth/features/idsantander/a/a;->e:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lbr/com/santander/dynamicauth/features/idsantander/a/a;->d:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, ""

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "ID: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "_id"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " CONTENT: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "content"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "line.separator"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return-object v0

    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public static synthetic a(Lbr/com/santander/dynamicauth/features/idsantander/a/a;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lbr/com/santander/dynamicauth/features/idsantander/a/a;->c(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 6

    const/4 v4, 0x0

    iget-object v0, p0, Lbr/com/santander/dynamicauth/features/idsantander/a/a;->h:Landroid/widget/TextView;

    iget-object v1, p0, Lbr/com/santander/dynamicauth/features/idsantander/a/a;->e:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lbr/com/santander/dynamicauth/R$string;->titulo_validacao_id_santander:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v0, ""

    :try_start_0
    invoke-static {p1}, Lalb;->a(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ErrD"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lkl;

    invoke-direct {v2, p0, v0}, Lkl;-><init>(Lbr/com/santander/dynamicauth/features/idsantander/a/a;Ljava/lang/String;)V

    const-wide/16 v4, 0x5dc

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_0
    :try_start_1
    const-string v0, "EddD"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {v1}, Lbr/com/santander/dynamicauth/exception/DynamicAuthException;->showException(Ljava/lang/Exception;)V

    iget-object v1, p0, Lbr/com/santander/dynamicauth/features/idsantander/a/a;->e:Landroid/app/Activity;

    sget-object v2, Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;->ERRO_ID_SANTANDER:Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;

    invoke-virtual {v2}, Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v4, v4, v4, v2}, Lbr/com/santander/dynamicauth/DynamicAuthService;->initError(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lbr/com/santander/dynamicauth/features/idsantander/a/a;->e:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method public static synthetic b(Lbr/com/santander/dynamicauth/features/idsantander/a/a;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lbr/com/santander/dynamicauth/features/idsantander/a/a;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b()V
    .locals 3

    iget-object v0, p0, Lbr/com/santander/dynamicauth/features/idsantander/a/a;->f:Lbr/com/santander/dynamicauth/features/idsantander/view/PlayGifView/PlayGifView;

    sget v1, Lbr/com/santander/dynamicauth/R$drawable;->id_santander_alerta_aparelho_nao_habilitado:I

    invoke-virtual {v0, v1}, Lbr/com/santander/dynamicauth/features/idsantander/view/PlayGifView/PlayGifView;->setGifResource(I)V

    iget-object v0, p0, Lbr/com/santander/dynamicauth/features/idsantander/a/a;->g:Landroid/widget/TextView;

    iget-object v1, p0, Lbr/com/santander/dynamicauth/features/idsantander/a/a;->e:Landroid/app/Activity;

    sget v2, Lbr/com/santander/dynamicauth/R$string;->validacao_id_santander_titulo_nao_habilitado:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lbr/com/santander/dynamicauth/features/idsantander/a/a;->h:Landroid/widget/TextView;

    iget-object v1, p0, Lbr/com/santander/dynamicauth/features/idsantander/a/a;->e:Landroid/app/Activity;

    sget v2, Lbr/com/santander/dynamicauth/R$string;->validacao_id_santander_subtitulo_nao_habilitado:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static synthetic b(Lbr/com/santander/dynamicauth/features/idsantander/a/a;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lbr/com/santander/dynamicauth/features/idsantander/a/a;->b(Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lbr/com/santander/dynamicauth/features/idsantander/a/a;->h:Landroid/widget/TextView;

    iget-object v1, p0, Lbr/com/santander/dynamicauth/features/idsantander/a/a;->e:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lbr/com/santander/dynamicauth/R$string;->titulo_validacao_id_santander:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lbr/com/santander/dynamicauth/features/idsantander/a/a;->e:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    iget-object v0, p0, Lbr/com/santander/dynamicauth/features/idsantander/a/a;->e:Landroid/app/Activity;

    invoke-static {v0, p1}, Lalb;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lkm;

    invoke-direct {v2, p0, v0}, Lkm;-><init>(Lbr/com/santander/dynamicauth/features/idsantander/a/a;Ljava/lang/String;)V

    const-wide/16 v4, 0x5dc

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private c()V
    .locals 4

    iget-object v0, p0, Lbr/com/santander/dynamicauth/features/idsantander/a/a;->h:Landroid/widget/TextView;

    iget-object v1, p0, Lbr/com/santander/dynamicauth/features/idsantander/a/a;->e:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lbr/com/santander/dynamicauth/R$string;->titulo_enviando_id_santander:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lko;

    invoke-direct {v1, p0}, Lko;-><init>(Lbr/com/santander/dynamicauth/features/idsantander/a/a;)V

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static synthetic c(Lbr/com/santander/dynamicauth/features/idsantander/a/a;)V
    .locals 0

    invoke-direct {p0}, Lbr/com/santander/dynamicauth/features/idsantander/a/a;->b()V

    return-void
.end method

.method public static synthetic c(Lbr/com/santander/dynamicauth/features/idsantander/a/a;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lbr/com/santander/dynamicauth/features/idsantander/a/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lbr/com/santander/dynamicauth/features/idsantander/a/a;->f:Lbr/com/santander/dynamicauth/features/idsantander/view/PlayGifView/PlayGifView;

    sget v1, Lbr/com/santander/dynamicauth/R$drawable;->id_santander_anima_ok:I

    invoke-virtual {v0, v1}, Lbr/com/santander/dynamicauth/features/idsantander/view/PlayGifView/PlayGifView;->setGifResource(I)V

    iget-object v0, p0, Lbr/com/santander/dynamicauth/features/idsantander/a/a;->h:Landroid/widget/TextView;

    iget-object v1, p0, Lbr/com/santander/dynamicauth/features/idsantander/a/a;->e:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lbr/com/santander/dynamicauth/R$string;->titulo_validado_id_santander:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lkn;

    invoke-direct {v1, p0, p1}, Lkn;-><init>(Lbr/com/santander/dynamicauth/features/idsantander/a/a;Ljava/lang/String;)V

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
