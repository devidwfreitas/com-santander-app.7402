.class public Lmuu;
.super Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;
.source "SourceFile"


# instance fields
.field protected a:Lmsy;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private f:I
    .annotation build Landroid/support/annotation/StringRes;
    .end annotation
.end field

.field private g:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;-><init>()V

    return-void
.end method

.method static synthetic a(Lmuu;)I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lmuu;->f:I

    return v0
.end method

.method static synthetic b(Lmuu;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lmuu;->j()V

    return-void
.end method

.method private d(Ljava/lang/String;)Lbfj;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 155
    new-instance v0, Lbfj;

    invoke-direct {v0}, Lbfj;-><init>()V

    const-string v1, "Verifique em seu Cart\u00e3o de Seguran\u00e7a On-line, o c\u00f3digo correspondente ao n\u00famero: "

    .line 156
    invoke-virtual {v0, v1}, Lbfj;->a(Ljava/lang/CharSequence;)Lbfj;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Landroid/text/style/StyleSpan;

    invoke-direct {v3, v4}, Landroid/text/style/StyleSpan;-><init>(I)V

    aput-object v3, v1, v2

    new-instance v2, Landroid/text/style/AbsoluteSizeSpan;

    const/16 v3, 0x12

    invoke-direct {v2, v3, v4}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    aput-object v2, v1, v4

    .line 157
    invoke-virtual {v0, p1, v1}, Lbfj;->a(Ljava/lang/CharSequence;[Ljava/lang/Object;)Lbfj;

    move-result-object v0

    .line 155
    return-object v0
.end method

.method private j()V
    .locals 2

    .prologue
    .line 142
    iget-object v0, p0, Lmuu;->a:Lmsy;

    if-nez v0, :cond_0

    .line 146
    :goto_0
    return-void

    .line 144
    :cond_0
    iget-object v0, p0, Lmuu;->g:Landroid/view/View$OnClickListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 145
    iget-object v0, p0, Lmuu;->a:Lmsy;

    invoke-interface {v0}, Lmsy;->f()V

    goto :goto_0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 48
    const-string v0, "CSO"

    invoke-static {v0}, Lmwm;->e(Ljava/lang/String;)V

    .line 49
    const v0, 0x7f090b5e

    iput v0, p0, Lmuu;->f:I

    .line 50
    const v0, 0x7f0403ae

    return v0
.end method

.method public a(I)V
    .locals 3
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 119
    iget-object v0, p0, Lmuu;->a:Lmsy;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lmuu;->a:Lmsy;

    invoke-virtual {p0, p1}, Lmuu;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lmux;

    invoke-direct {v2, p0}, Lmux;-><init>(Lmuu;)V

    invoke-interface {v0, v1, v2}, Lmsy;->a(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 127
    :cond_0
    return-void
.end method

.method public a(Landroid/view/View$OnClickListener;)V
    .locals 2

    .prologue
    .line 80
    iput-object p1, p0, Lmuu;->g:Landroid/view/View$OnClickListener;

    .line 81
    iget-object v0, p0, Lmuu;->c:Landroid/view/View;

    const v1, 0x7f1011f0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    return-void
.end method

.method public a(Lftz;)V
    .locals 3

    .prologue
    .line 107
    iget-object v0, p0, Lmuu;->a:Lmsy;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lmuu;->a:Lmsy;

    invoke-virtual {p1}, Lftz;->c()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lmuw;

    invoke-direct {v2, p0}, Lmuw;-><init>(Lmuu;)V

    invoke-interface {v0, v1, v2}, Lmsy;->a(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 115
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/Integer;)V
    .locals 3

    .prologue
    .line 131
    iget-object v0, p0, Lmuu;->a:Lmsy;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lmuu;->a:Lmsy;

    const v1, 0x7f0903b9

    invoke-virtual {p0, v1}, Lmuu;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lmuy;

    invoke-direct {v2, p0}, Lmuy;-><init>(Lmuu;)V

    invoke-interface {v0, v1, v2}, Lmsy;->a(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 139
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 70
    iget-object v0, p0, Lmuu;->d:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 71
    iget-object v0, p0, Lmuu;->c:Landroid/view/View;

    const v1, 0x7f1011ed

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 72
    invoke-direct {p0, p1}, Lmuu;->d(Ljava/lang/String;)Lbfj;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    iget-object v0, p0, Lmuu;->a:Lmsy;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lmuu;->a:Lmsy;

    invoke-interface {v0}, Lmsy;->e()V

    .line 76
    :cond_0
    return-void
.end method

.method public b()I
    .locals 1

    .prologue
    .line 55
    const-string v0, "ID"

    invoke-static {v0}, Lmwm;->e(Ljava/lang/String;)V

    .line 56
    const v0, 0x7f090b5f

    iput v0, p0, Lmuu;->f:I

    .line 57
    invoke-super {p0}, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;->b()I

    move-result v0

    return v0
.end method

.method public b(Landroid/view/View$OnClickListener;)V
    .locals 1

    .prologue
    .line 86
    new-instance v0, Lmuv;

    invoke-direct {v0, p0, p1}, Lmuv;-><init>(Lmuu;Landroid/view/View$OnClickListener;)V

    invoke-super {p0, v0}, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;->b(Landroid/view/View$OnClickListener;)V

    .line 96
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lmuu;->a:Lmsy;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lmuu;->a:Lmsy;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lmsy;->a(I)V

    .line 103
    :cond_0
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 38
    invoke-super {p0, p1}, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;->onAttach(Landroid/content/Context;)V

    .line 40
    :try_start_0
    check-cast p1, Lmsy;

    iput-object p1, p0, Lmuu;->a:Lmsy;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    :goto_0
    return-void

    .line 41
    :catch_0
    move-exception v0

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lmuu;->a:Lmsy;

    goto :goto_0
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 150
    invoke-super {p0}, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;->onDetach()V

    .line 151
    const/4 v0, 0x0

    iput-object v0, p0, Lmuu;->a:Lmsy;

    .line 152
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 62
    invoke-super {p0, p1, p2}, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 63
    iget-object v0, p0, Lmuu;->a:Lmsy;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lmuu;->a:Lmsy;

    iget v1, p0, Lmuu;->f:I

    invoke-virtual {p0, v1}, Lmuu;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lmsy;->a(Ljava/lang/String;)V

    .line 66
    :cond_0
    return-void
.end method
