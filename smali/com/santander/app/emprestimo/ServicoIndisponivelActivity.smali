.class public Lcom/santander/app/emprestimo/ServicoIndisponivelActivity;
.super Lgrs;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "EXTRA_TYPE"


# instance fields
.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lgrs;-><init>()V

    return-void
.end method

.method private a()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/santander/app/emprestimo/ServicoIndisponivelActivity;->b()Ljava/lang/String;

    move-result-object v0

    .line 40
    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/ServicoIndisponivelActivity;->c(Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method public static a(Landroid/content/Context;I)V
    .locals 2
    .param p1    # I
        .annotation build Lhxu;
        .end annotation
    .end param

    .prologue
    .line 25
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/emprestimo/ServicoIndisponivelActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 26
    const-string v1, "EXTRA_TYPE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 27
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 28
    return-void
.end method

.method private b()Ljava/lang/String;
    .locals 3

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/santander/app/emprestimo/ServicoIndisponivelActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 45
    invoke-virtual {p0}, Lcom/santander/app/emprestimo/ServicoIndisponivelActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "EXTRA_TYPE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/santander/app/emprestimo/ServicoIndisponivelActivity;->b:I

    .line 47
    :cond_0
    const/4 v0, 0x0

    .line 48
    iget v1, p0, Lcom/santander/app/emprestimo/ServicoIndisponivelActivity;->b:I

    packed-switch v1, :pswitch_data_0

    .line 73
    :goto_0
    :pswitch_0
    return-object v0

    .line 50
    :pswitch_1
    const v0, 0x7f090a9e

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/ServicoIndisponivelActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 54
    :pswitch_2
    const v0, 0x7f090330

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/ServicoIndisponivelActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 58
    :pswitch_3
    const v0, 0x7f090a96

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/ServicoIndisponivelActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 62
    :pswitch_4
    const v0, 0x7f090a97

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/ServicoIndisponivelActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 66
    :pswitch_5
    const v0, 0x7f090ab6

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/ServicoIndisponivelActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 70
    :pswitch_6
    const v0, 0x7f0908f7

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/ServicoIndisponivelActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 48
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 32
    invoke-super {p0, p1}, Lgrs;->onCreate(Landroid/os/Bundle;)V

    .line 33
    const v0, 0x7f0400a7

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/ServicoIndisponivelActivity;->setContentView(I)V

    .line 35
    invoke-direct {p0}, Lcom/santander/app/emprestimo/ServicoIndisponivelActivity;->a()V

    .line 36
    return-void
.end method
