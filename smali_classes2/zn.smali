.class public Lzn;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lbr/com/santander/investimentoV2/shared/view/PlayGifView/PlayGifView;

.field private b:Landroid/support/v4/app/Fragment;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/Button;

.field private g:Lacg;

.field private h:Lack;

.field private i:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lack;Landroid/view/View;Landroid/support/v4/app/Fragment;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p3, p0, Lzn;->b:Landroid/support/v4/app/Fragment;

    .line 31
    iput-object p1, p0, Lzn;->h:Lack;

    .line 32
    invoke-virtual {p1}, Lack;->a()Lacf;

    move-result-object v0

    check-cast v0, Lacg;

    iput-object v0, p0, Lzn;->g:Lacg;

    .line 33
    iput-object p4, p0, Lzn;->i:Ljava/lang/String;

    .line 35
    sget v0, Lla;->validacao_id_santandder_gif:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lbr/com/santander/investimentoV2/shared/view/PlayGifView/PlayGifView;

    iput-object v0, p0, Lzn;->a:Lbr/com/santander/investimentoV2/shared/view/PlayGifView/PlayGifView;

    .line 36
    iget-object v0, p0, Lzn;->a:Lbr/com/santander/investimentoV2/shared/view/PlayGifView/PlayGifView;

    sget v1, Lkz;->id_santander_anima_habilitacao:I

    invoke-virtual {v0, v1}, Lbr/com/santander/investimentoV2/shared/view/PlayGifView/PlayGifView;->setGifResource(I)V

    .line 38
    sget v0, Lla;->validacao_id_santandder_text_view_titulo:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lzn;->c:Landroid/widget/TextView;

    .line 39
    sget v0, Lla;->validacao_id_santandder_text_view_sub_titulo_1:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lzn;->d:Landroid/widget/TextView;

    .line 40
    sget v0, Lla;->validacao_id_santandder_text_view_sub_titulo_2:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lzn;->e:Landroid/widget/TextView;

    .line 41
    sget v0, Lla;->validacao_id_santander_button:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lzn;->f:Landroid/widget/Button;

    .line 43
    if-eqz p4, :cond_0

    .line 44
    invoke-direct {p0}, Lzn;->a()V

    .line 49
    :goto_0
    invoke-virtual {p1}, Lack;->a()Lacf;

    move-result-object v0

    if-nez v0, :cond_1

    .line 50
    new-instance v0, Lacg;

    invoke-direct {v0}, Lacg;-><init>()V

    iput-object v0, p0, Lzn;->g:Lacg;

    .line 54
    :goto_1
    return-void

    .line 46
    :cond_0
    invoke-direct {p0}, Lzn;->b()V

    goto :goto_0

    .line 52
    :cond_1
    invoke-virtual {p1}, Lack;->a()Lacf;

    move-result-object v0

    check-cast v0, Lacg;

    iput-object v0, p0, Lzn;->g:Lacg;

    goto :goto_1
.end method

.method static synthetic a(Lzn;)Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lzn;->b:Landroid/support/v4/app/Fragment;

    return-object v0
.end method

.method private a()V
    .locals 4

    .prologue
    .line 57
    iget-object v0, p0, Lzn;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lzn;->b:Landroid/support/v4/app/Fragment;

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget v2, Llg;->validacao_id_santander_titulo_habilitacao:I

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    iget-object v0, p0, Lzn;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lzn;->b:Landroid/support/v4/app/Fragment;

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget v2, Llg;->validacao_id_santander_sub_titulo_habilitacao:I

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    iget-object v0, p0, Lzn;->e:Landroid/widget/TextView;

    iget-object v1, p0, Lzn;->b:Landroid/support/v4/app/Fragment;

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget v2, Llg;->app_aguarde:I

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    iget-object v0, p0, Lzn;->i:Ljava/lang/String;

    invoke-static {v0}, Lalb;->a(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 62
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ErrD"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 64
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 65
    const-string v1, "INVEBR-OTP"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    :try_start_0
    invoke-static {}, Lji;->a()Lji;

    move-result-object v1

    invoke-virtual {v1, v0}, Lji;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 69
    invoke-static {}, Lzs;->a()Lzs;

    move-result-object v1

    iget-object v2, p0, Lzn;->h:Lack;

    iget-object v3, p0, Lzn;->g:Lacg;

    invoke-virtual {v1, v2, v3, v0}, Lzs;->a(Landroid/content/Context;Lacg;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    :goto_0
    return-void

    .line 70
    :catch_0
    move-exception v0

    .line 71
    const-string v0, "INVEBR-ErroOTP"

    const-string v1, "erro na criptografia"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 74
    :cond_0
    const-string v0, "INVEBR-ErroOTP"

    const-string v1, "erro na gera\u00e7\u00e3o"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private b()V
    .locals 3

    .prologue
    .line 81
    iget-object v0, p0, Lzn;->a:Lbr/com/santander/investimentoV2/shared/view/PlayGifView/PlayGifView;

    sget v1, Lkz;->id_santander_alerta_aparelho_nao_habilitado:I

    invoke-virtual {v0, v1}, Lbr/com/santander/investimentoV2/shared/view/PlayGifView/PlayGifView;->setGifResource(I)V

    .line 83
    iget-object v0, p0, Lzn;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lzn;->b:Landroid/support/v4/app/Fragment;

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget v2, Llg;->validacao_id_santander_titulo_nao_habilitado:I

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    iget-object v0, p0, Lzn;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lzn;->b:Landroid/support/v4/app/Fragment;

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget v2, Llg;->validacao_id_santander_subtitulo_nao_habilitado:I

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    iget-object v0, p0, Lzn;->f:Landroid/widget/Button;

    iget-object v1, p0, Lzn;->b:Landroid/support/v4/app/Fragment;

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget v2, Llg;->validacao_id_santander_button:I

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 87
    iget-object v0, p0, Lzn;->f:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 88
    iget-object v0, p0, Lzn;->f:Landroid/widget/Button;

    new-instance v1, Lzo;

    invoke-direct {v1, p0}, Lzo;-><init>(Lzn;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    return-void
.end method
