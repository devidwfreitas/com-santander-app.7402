.class public Lcom/santander/app/homenaologada/login/presentation/VersionAlertActivity;
.super Lgrs;
.source "SourceFile"


# instance fields
.field private a:Landroid/widget/Button;

.field private b:Landroid/widget/Button;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:I

.field private f:Landroid/view/View$OnClickListener;

.field private g:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Lgrs;-><init>()V

    .line 95
    new-instance v0, Litd;

    invoke-direct {v0, p0}, Litd;-><init>(Lcom/santander/app/homenaologada/login/presentation/VersionAlertActivity;)V

    iput-object v0, p0, Lcom/santander/app/homenaologada/login/presentation/VersionAlertActivity;->f:Landroid/view/View$OnClickListener;

    .line 102
    new-instance v0, Lite;

    invoke-direct {v0, p0}, Lite;-><init>(Lcom/santander/app/homenaologada/login/presentation/VersionAlertActivity;)V

    iput-object v0, p0, Lcom/santander/app/homenaologada/login/presentation/VersionAlertActivity;->g:Landroid/view/View$OnClickListener;

    return-void
.end method

.method private a(I)Landroid/text/SpannableString;
    .locals 4
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x0

    .line 68
    new-instance v0, Landroid/text/SpannableString;

    invoke-virtual {p0, p1}, Lcom/santander/app/homenaologada/login/presentation/VersionAlertActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 69
    new-instance v1, Landroid/text/style/UnderlineSpan;

    invoke-direct {v1}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v2

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 70
    return-object v0
.end method

.method private a()V
    .locals 1

    .prologue
    .line 38
    const v0, 0x7f10045d

    invoke-virtual {p0, v0}, Lcom/santander/app/homenaologada/login/presentation/VersionAlertActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/santander/app/homenaologada/login/presentation/VersionAlertActivity;->a:Landroid/widget/Button;

    .line 39
    const v0, 0x7f10045b

    invoke-virtual {p0, v0}, Lcom/santander/app/homenaologada/login/presentation/VersionAlertActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/homenaologada/login/presentation/VersionAlertActivity;->c:Landroid/widget/TextView;

    .line 40
    const v0, 0x7f10045c

    invoke-virtual {p0, v0}, Lcom/santander/app/homenaologada/login/presentation/VersionAlertActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/homenaologada/login/presentation/VersionAlertActivity;->d:Landroid/widget/TextView;

    .line 41
    const v0, 0x7f10045e

    invoke-virtual {p0, v0}, Lcom/santander/app/homenaologada/login/presentation/VersionAlertActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/santander/app/homenaologada/login/presentation/VersionAlertActivity;->b:Landroid/widget/Button;

    .line 42
    return-void
.end method

.method public static synthetic a(Lcom/santander/app/homenaologada/login/presentation/VersionAlertActivity;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/santander/app/homenaologada/login/presentation/VersionAlertActivity;->e()V

    return-void
.end method

.method private b()V
    .locals 2

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/santander/app/homenaologada/login/presentation/VersionAlertActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 47
    if-eqz v0, :cond_0

    .line 48
    const-string v1, "extra_check_version_action"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/santander/app/homenaologada/login/presentation/VersionAlertActivity;->e:I

    .line 50
    :cond_0
    return-void
.end method

.method public static synthetic b(Lcom/santander/app/homenaologada/login/presentation/VersionAlertActivity;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/santander/app/homenaologada/login/presentation/VersionAlertActivity;->f()V

    return-void
.end method

.method private c()V
    .locals 2

    .prologue
    .line 53
    iget v0, p0, Lcom/santander/app/homenaologada/login/presentation/VersionAlertActivity;->e:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 55
    iget-object v0, p0, Lcom/santander/app/homenaologada/login/presentation/VersionAlertActivity;->a:Landroid/widget/Button;

    const v1, 0x7f090bbb

    invoke-direct {p0, v1}, Lcom/santander/app/homenaologada/login/presentation/VersionAlertActivity;->a(I)Landroid/text/SpannableString;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 56
    iget-object v0, p0, Lcom/santander/app/homenaologada/login/presentation/VersionAlertActivity;->c:Landroid/widget/TextView;

    const v1, 0x7f090bbf

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 57
    iget-object v0, p0, Lcom/santander/app/homenaologada/login/presentation/VersionAlertActivity;->d:Landroid/widget/TextView;

    const v1, 0x7f090bc0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 65
    :cond_0
    :goto_0
    return-void

    .line 59
    :cond_1
    iget v0, p0, Lcom/santander/app/homenaologada/login/presentation/VersionAlertActivity;->e:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 61
    iget-object v0, p0, Lcom/santander/app/homenaologada/login/presentation/VersionAlertActivity;->a:Landroid/widget/Button;

    const v1, 0x7f090bbc

    invoke-direct {p0, v1}, Lcom/santander/app/homenaologada/login/presentation/VersionAlertActivity;->a(I)Landroid/text/SpannableString;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 62
    iget-object v0, p0, Lcom/santander/app/homenaologada/login/presentation/VersionAlertActivity;->c:Landroid/widget/TextView;

    const v1, 0x7f090bbd

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 63
    iget-object v0, p0, Lcom/santander/app/homenaologada/login/presentation/VersionAlertActivity;->d:Landroid/widget/TextView;

    const v1, 0x7f090bbe

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method private d()V
    .locals 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/santander/app/homenaologada/login/presentation/VersionAlertActivity;->a:Landroid/widget/Button;

    iget-object v1, p0, Lcom/santander/app/homenaologada/login/presentation/VersionAlertActivity;->f:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    iget-object v0, p0, Lcom/santander/app/homenaologada/login/presentation/VersionAlertActivity;->b:Landroid/widget/Button;

    iget-object v1, p0, Lcom/santander/app/homenaologada/login/presentation/VersionAlertActivity;->g:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    return-void
.end method

.method private e()V
    .locals 2

    .prologue
    .line 79
    iget v0, p0, Lcom/santander/app/homenaologada/login/presentation/VersionAlertActivity;->e:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 80
    const/16 v0, 0x3e8

    invoke-virtual {p0, v0}, Lcom/santander/app/homenaologada/login/presentation/VersionAlertActivity;->setResult(I)V

    .line 83
    :cond_0
    invoke-virtual {p0}, Lcom/santander/app/homenaologada/login/presentation/VersionAlertActivity;->finish()V

    .line 84
    return-void
.end method

.method private f()V
    .locals 5

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/santander/app/homenaologada/login/presentation/VersionAlertActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 89
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "market://details?id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v1}, Lcom/santander/app/homenaologada/login/presentation/VersionAlertActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    :goto_0
    return-void

    .line 90
    :catch_0
    move-exception v1

    .line 91
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    const v3, 0x7f0904fa

    invoke-virtual {p0, v3}, Lcom/santander/app/homenaologada/login/presentation/VersionAlertActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v1}, Lcom/santander/app/homenaologada/login/presentation/VersionAlertActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 28
    invoke-super {p0, p1}, Lgrs;->onCreate(Landroid/os/Bundle;)V

    .line 29
    const v0, 0x7f0400b8

    invoke-virtual {p0, v0}, Lcom/santander/app/homenaologada/login/presentation/VersionAlertActivity;->setContentView(I)V

    .line 31
    invoke-direct {p0}, Lcom/santander/app/homenaologada/login/presentation/VersionAlertActivity;->a()V

    .line 32
    invoke-direct {p0}, Lcom/santander/app/homenaologada/login/presentation/VersionAlertActivity;->b()V

    .line 33
    invoke-direct {p0}, Lcom/santander/app/homenaologada/login/presentation/VersionAlertActivity;->c()V

    .line 34
    invoke-direct {p0}, Lcom/santander/app/homenaologada/login/presentation/VersionAlertActivity;->d()V

    .line 35
    return-void
.end method
