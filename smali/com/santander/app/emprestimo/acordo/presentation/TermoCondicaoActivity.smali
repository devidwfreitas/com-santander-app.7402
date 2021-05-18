.class public Lcom/santander/app/emprestimo/acordo/presentation/TermoCondicaoActivity;
.super Lgoj;
.source "SourceFile"


# static fields
.field private static final c:Ljava/lang/String; = "tagCompartilhar"


# instance fields
.field public a:Landroid/widget/Button;

.field protected b:Z

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lgoj;-><init>()V

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/TermoCondicaoActivity;->b:Z

    return-void
.end method

.method private a()V
    .locals 3

    .prologue
    .line 78
    iget-object v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/TermoCondicaoActivity;->f:Ljava/lang/String;

    invoke-static {v0}, Lhhr;->d(Ljava/lang/String;)V

    .line 79
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 80
    invoke-static {}, Lcom/santander/app/MinhaConta;->b()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    invoke-static {p0, v0, v1}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 91
    :goto_0
    return-void

    .line 86
    :cond_0
    invoke-virtual {p0}, Lcom/santander/app/emprestimo/acordo/presentation/TermoCondicaoActivity;->k()V

    goto :goto_0

    .line 89
    :cond_1
    invoke-virtual {p0}, Lcom/santander/app/emprestimo/acordo/presentation/TermoCondicaoActivity;->k()V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Lhgb;)V
    .locals 3

    .prologue
    .line 33
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/emprestimo/acordo/presentation/TermoCondicaoActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 34
    const-string v1, "android.intent.extra.TITLE"

    invoke-interface {p1}, Lhgb;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 35
    const-string v1, "android.intent.extra.TEXT"

    invoke-interface {p1}, Lhgb;->j()Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 36
    const-string v1, "tagCompartilhar"

    invoke-interface {p1}, Lhgb;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 37
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 38
    return-void
.end method

.method public static synthetic a(Lcom/santander/app/emprestimo/acordo/presentation/TermoCondicaoActivity;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/santander/app/emprestimo/acordo/presentation/TermoCondicaoActivity;->a()V

    return-void
.end method


# virtual methods
.method public k()V
    .locals 6

    .prologue
    const v5, 0x7f1000f3

    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 95
    iget-object v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/TermoCondicaoActivity;->a:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 96
    invoke-virtual {p0, v5}, Lcom/santander/app/emprestimo/acordo/presentation/TermoCondicaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 98
    const v0, 0x7f1000f2

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/acordo/presentation/TermoCondicaoActivity;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 99
    iget-object v1, p0, Lcom/santander/app/emprestimo/acordo/presentation/TermoCondicaoActivity;->f:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {p0, v1, v2, v0}, Lcom/santander/app/emprestimo/acordo/presentation/TermoCondicaoActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    invoke-virtual {p0, v5}, Lcom/santander/app/emprestimo/acordo/presentation/TermoCondicaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 102
    iget-object v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/TermoCondicaoActivity;->a:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 103
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 47
    invoke-super {p0, p1}, Lgoj;->onCreate(Landroid/os/Bundle;)V

    .line 48
    const v0, 0x7f04001e

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/acordo/presentation/TermoCondicaoActivity;->setContentView(I)V

    .line 50
    invoke-virtual {p0}, Lcom/santander/app/emprestimo/acordo/presentation/TermoCondicaoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 51
    invoke-virtual {p0}, Lcom/santander/app/emprestimo/acordo/presentation/TermoCondicaoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "tagCompartilhar"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/TermoCondicaoActivity;->g:Ljava/lang/String;

    .line 52
    invoke-virtual {p0}, Lcom/santander/app/emprestimo/acordo/presentation/TermoCondicaoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.extra.TITLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/TermoCondicaoActivity;->f:Ljava/lang/String;

    .line 54
    invoke-virtual {p0}, Lcom/santander/app/emprestimo/acordo/presentation/TermoCondicaoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 56
    iget-object v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/TermoCondicaoActivity;->f:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/acordo/presentation/TermoCondicaoActivity;->c(Ljava/lang/String;)V

    .line 58
    const v0, 0x7f1000f4

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/acordo/presentation/TermoCondicaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 59
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    const v0, 0x7f1000f5

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/acordo/presentation/TermoCondicaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/TermoCondicaoActivity;->a:Landroid/widget/Button;

    .line 63
    iget-boolean v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/TermoCondicaoActivity;->b:Z

    if-eqz v0, :cond_1

    .line 64
    iget-object v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/TermoCondicaoActivity;->a:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 65
    iget-object v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/TermoCondicaoActivity;->a:Landroid/widget/Button;

    new-instance v1, Lhgx;

    invoke-direct {v1, p0}, Lhgx;-><init>(Lcom/santander/app/emprestimo/acordo/presentation/TermoCondicaoActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    :cond_0
    :goto_0
    return-void

    .line 72
    :cond_1
    iget-object v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/TermoCondicaoActivity;->a:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method
