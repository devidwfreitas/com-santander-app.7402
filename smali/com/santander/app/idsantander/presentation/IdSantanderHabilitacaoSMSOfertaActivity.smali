.class public Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoSMSOfertaActivity;
.super Lgrs;
.source "SourceFile"

# interfaces
.implements Lizo;


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/Button;

.field private e:Landroid/widget/Button;

.field private f:Lcom/santander/app/components/view/PlayGifView/PlayGifView;

.field private g:Ljav;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lgrs;-><init>()V

    return-void
.end method

.method private a([Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoSMSOfertaActivity;->i:Landroid/app/Activity;

    const/4 v1, 0x7

    invoke-static {v0, p1, v1}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 107
    return-void
.end method

.method private c()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 60
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoSMSOfertaActivity;->d:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 61
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoSMSOfertaActivity;->e:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 62
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoSMSOfertaActivity;->c:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 64
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoSMSOfertaActivity;->f:Lcom/santander/app/components/view/PlayGifView/PlayGifView;

    const v1, 0x7f02055c

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/PlayGifView/PlayGifView;->setGifResource(I)V

    .line 66
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoSMSOfertaActivity;->a:Landroid/widget/TextView;

    const v1, 0x7f090ad2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 68
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoSMSOfertaActivity;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoSMSOfertaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09094f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoSMSOfertaActivity;->d:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoSMSOfertaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090162

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 72
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoSMSOfertaActivity;->e:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoSMSOfertaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090163

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 74
    new-instance v0, Ljas;

    invoke-direct {v0, p0, p0}, Ljas;-><init>(Lizo;Landroid/support/v7/app/AppCompatActivity;)V

    iput-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoSMSOfertaActivity;->g:Ljav;

    .line 75
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoSMSOfertaActivity;->g:Ljav;

    invoke-interface {v0}, Ljav;->a()V

    .line 76
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 121
    return-void
.end method

.method public a(I)V
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoSMSOfertaActivity;->e:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setVisibility(I)V

    .line 117
    return-void
.end method

.method public a(Landroid/view/View$OnClickListener;)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 86
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v0, v3, :cond_5

    .line 88
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoSMSOfertaActivity;->i:Landroid/app/Activity;

    const-string v3, "android.permission.RECEIVE_SMS"

    invoke-static {v0, v3}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 89
    :goto_0
    iget-object v3, p0, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoSMSOfertaActivity;->i:Landroid/app/Activity;

    const-string v4, "android.permission.READ_SMS"

    invoke-static {v3, v4}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_1

    move v3, v1

    .line 91
    :goto_1
    if-nez v0, :cond_2

    if-nez v3, :cond_2

    .line 92
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "android.permission.READ_SMS"

    aput-object v3, v0, v2

    const-string v2, "android.permission.RECEIVE_SMS"

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoSMSOfertaActivity;->a([Ljava/lang/String;)V

    .line 103
    :goto_2
    return-void

    :cond_0
    move v0, v2

    .line 88
    goto :goto_0

    :cond_1
    move v3, v2

    .line 89
    goto :goto_1

    .line 93
    :cond_2
    if-eqz v0, :cond_3

    if-nez v3, :cond_3

    .line 94
    new-array v0, v1, [Ljava/lang/String;

    const-string v1, "android.permission.READ_SMS"

    aput-object v1, v0, v2

    invoke-direct {p0, v0}, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoSMSOfertaActivity;->a([Ljava/lang/String;)V

    goto :goto_2

    .line 95
    :cond_3
    if-nez v0, :cond_4

    if-eqz v3, :cond_4

    .line 96
    new-array v0, v1, [Ljava/lang/String;

    const-string v1, "android.permission.RECEIVE_SMS"

    aput-object v1, v0, v2

    invoke-direct {p0, v0}, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoSMSOfertaActivity;->a([Ljava/lang/String;)V

    goto :goto_2

    .line 98
    :cond_4
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoSMSOfertaActivity;->d:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 101
    :cond_5
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoSMSOfertaActivity;->d:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2
.end method

.method public b()V
    .locals 0

    .prologue
    .line 126
    return-void
.end method

.method public b(Landroid/view/View$OnClickListener;)V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoSMSOfertaActivity;->e:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 81
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 38
    invoke-super {p0, p1}, Lgrs;->onCreate(Landroid/os/Bundle;)V

    .line 39
    invoke-virtual {p0}, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoSMSOfertaActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 40
    invoke-virtual {p0}, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoSMSOfertaActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->hide()V

    .line 41
    const v0, 0x7f040075

    invoke-virtual {p0, v0}, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoSMSOfertaActivity;->setContentView(I)V

    .line 43
    const v0, 0x7f10032d

    invoke-virtual {p0, v0}, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoSMSOfertaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoSMSOfertaActivity;->a:Landroid/widget/TextView;

    .line 45
    const v0, 0x7f10032e

    invoke-virtual {p0, v0}, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoSMSOfertaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoSMSOfertaActivity;->b:Landroid/widget/TextView;

    .line 47
    const v0, 0x7f100358

    invoke-virtual {p0, v0}, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoSMSOfertaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoSMSOfertaActivity;->c:Landroid/widget/TextView;

    .line 49
    const v0, 0x7f10034f

    invoke-virtual {p0, v0}, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoSMSOfertaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoSMSOfertaActivity;->d:Landroid/widget/Button;

    .line 51
    const v0, 0x7f100352

    invoke-virtual {p0, v0}, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoSMSOfertaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoSMSOfertaActivity;->e:Landroid/widget/Button;

    .line 53
    const v0, 0x7f10032c

    invoke-virtual {p0, v0}, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoSMSOfertaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/PlayGifView/PlayGifView;

    iput-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoSMSOfertaActivity;->f:Lcom/santander/app/components/view/PlayGifView/PlayGifView;

    .line 55
    invoke-direct {p0}, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoSMSOfertaActivity;->c()V

    .line 56
    return-void
.end method
