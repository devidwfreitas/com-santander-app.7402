.class public Lilk;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field private b:Landroid/view/View;

.field private c:Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;

.field private d:Landroid/content/SharedPreferences;

.field private e:Ljava/lang/String;

.field private f:I

.field private g:I

.field private h:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 30
    const-string v0, "PoupancaNovaContaContratoFragment"

    iput-object v0, p0, Lilk;->a:Ljava/lang/String;

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lilk;->c:Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;

    return-void
.end method

.method private a()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 81
    invoke-virtual {p0}, Lilk;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "carrinhoPoupanca"

    invoke-virtual {v0, v1, v3}, Landroid/support/v4/app/FragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lilk;->d:Landroid/content/SharedPreferences;

    .line 83
    iget-object v0, p0, Lilk;->d:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 85
    const-string v1, "conta"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 86
    const-string v1, "contaAplicacao"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 87
    const-string v1, "valor"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 88
    const-string v1, "dataPosition"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 89
    const-string v1, "data"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 90
    const-string v1, "clickCard"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 91
    const-string v1, "cpf"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 92
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 94
    return-void
.end method

.method static synthetic a(Lilk;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lilk;->c()V

    return-void
.end method

.method static synthetic b(Lilk;)Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lilk;->c:Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;

    return-object v0
.end method

.method private b()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 98
    invoke-virtual {p0}, Lilk;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "carrinhoPoupanca"

    invoke-virtual {v0, v1, v3}, Landroid/support/v4/app/FragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lilk;->d:Landroid/content/SharedPreferences;

    .line 99
    iget-object v0, p0, Lilk;->d:Landroid/content/SharedPreferences;

    const-string v1, "valor"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lilk;->e:Ljava/lang/String;

    .line 100
    iget-object v0, p0, Lilk;->d:Landroid/content/SharedPreferences;

    const-string v1, "contaAplicacao"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lilk;->f:I

    .line 101
    iget-object v0, p0, Lilk;->d:Landroid/content/SharedPreferences;

    const-string v1, "conta"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lilk;->g:I

    .line 102
    iget-object v0, p0, Lilk;->d:Landroid/content/SharedPreferences;

    const-string v1, "dataPosition"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lilk;->h:I

    .line 103
    invoke-direct {p0}, Lilk;->a()V

    .line 104
    return-void
.end method

.method private c()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 107
    invoke-virtual {p0}, Lilk;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "carrinhoPoupanca"

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lilk;->d:Landroid/content/SharedPreferences;

    .line 109
    iget-object v0, p0, Lilk;->d:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 111
    :try_start_0
    new-instance v1, Ljava/lang/String;

    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v2

    invoke-virtual {v2}, Lmiq;->f()Lmir;

    move-result-object v2

    invoke-virtual {v2}, Lmir;->k()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v2}, Lorg/apache/commons/codec/binary/Base64;->encodeBase64([B)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    .line 113
    iget v2, p0, Lilk;->g:I

    .line 114
    iget v3, p0, Lilk;->f:I

    .line 115
    iget v4, p0, Lilk;->h:I

    .line 116
    const-string v5, ""

    .line 117
    iget-object v6, p0, Lilk;->e:Ljava/lang/String;

    .line 119
    const-string v7, "conta"

    invoke-interface {v0, v7, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 120
    const-string v2, "contaAplicacao"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 121
    const-string v2, "valor"

    invoke-interface {v0, v2, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 122
    const-string v2, "dataPosition"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 123
    const-string v2, "data"

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 124
    const-string v2, "clickCard"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 126
    const-string v2, "cpf"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 127
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    :goto_0
    return-void

    .line 129
    :catch_0
    move-exception v0

    .line 130
    const-string v1, "ERROR"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic c(Lilk;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lilk;->a()V

    return-void
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 43
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 44
    check-cast p1, Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;

    iput-object p1, p0, Lilk;->c:Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;

    .line 45
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    .line 50
    const v0, 0x7f04034a

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lilk;->b:Landroid/view/View;

    .line 51
    invoke-direct {p0}, Lilk;->b()V

    .line 52
    iget-object v0, p0, Lilk;->b:Landroid/view/View;

    const v1, 0x7f10109b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 53
    invoke-virtual {p0}, Lilk;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0905e0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    iget-object v0, p0, Lilk;->b:Landroid/view/View;

    const v1, 0x7f1009d7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 56
    new-instance v1, Lill;

    invoke-direct {v1, p0}, Lill;-><init>(Lilk;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    iget-object v0, p0, Lilk;->b:Landroid/view/View;

    const v1, 0x7f100ace

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 66
    new-instance v1, Lilm;

    invoke-direct {v1, p0}, Lilm;-><init>(Lilk;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    iget-object v0, p0, Lilk;->b:Landroid/view/View;

    return-object v0
.end method
