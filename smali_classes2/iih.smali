.class public Liih;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;

.field private c:Lnau;

.field private d:Lftq;

.field private e:Lftt;

.field private f:Lfuu;

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 41
    const-string v0, "ConfirmarInvestimentoAplicacaoPasoUnoFragment"

    iput-object v0, p0, Liih;->a:Ljava/lang/String;

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Liih;->c:Lnau;

    return-void
.end method

.method private a()V
    .locals 10

    .prologue
    const/4 v3, 0x0

    .line 152
    iget-object v0, p0, Liih;->b:Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;

    const-string v1, "CDBPreferences"

    invoke-virtual {v0, v1, v3}, Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 153
    iget-object v1, p0, Liih;->b:Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;

    const-string v2, "cardPreferences"

    invoke-virtual {v1, v2, v3}, Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 157
    :try_start_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 159
    iget-object v2, p0, Liih;->f:Lfuu;

    invoke-virtual {v2}, Lfuu;->getAgencia()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v2}, Lorg/apache/commons/codec/binary/Base64;->encodeBase64([B)[B

    move-result-object v2

    .line 160
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([B)V

    .line 162
    iget-object v2, p0, Liih;->f:Lfuu;

    invoke-virtual {v2}, Lfuu;->getAgencia()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v2}, Lorg/apache/commons/codec/binary/Base64;->encodeBase64([B)[B

    move-result-object v2

    .line 163
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v2}, Ljava/lang/String;-><init>([B)V

    .line 165
    iget-object v2, p0, Liih;->e:Lftt;

    invoke-virtual {v2}, Lftt;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v2}, Lorg/apache/commons/codec/binary/Base64;->encodeBase64([B)[B

    move-result-object v2

    .line 166
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v2}, Ljava/lang/String;-><init>([B)V

    .line 168
    iget-object v2, p0, Liih;->d:Lftq;

    invoke-virtual {v2}, Lftq;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v2}, Lorg/apache/commons/codec/binary/Base64;->encodeBase64([B)[B

    move-result-object v2

    .line 169
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v2}, Ljava/lang/String;-><init>([B)V

    .line 171
    iget-object v2, p0, Liih;->d:Lftq;

    invoke-virtual {v2}, Lftq;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v2}, Lorg/apache/commons/codec/binary/Base64;->encodeBase64([B)[B

    move-result-object v2

    .line 172
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v2}, Ljava/lang/String;-><init>([B)V

    .line 174
    iget-object v2, p0, Liih;->e:Lftt;

    invoke-virtual {v2}, Lftt;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v2}, Lorg/apache/commons/codec/binary/Base64;->encodeBase64([B)[B

    move-result-object v2

    .line 175
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v2}, Ljava/lang/String;-><init>([B)V

    .line 177
    iget-object v2, p0, Liih;->g:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v2}, Lorg/apache/commons/codec/binary/Base64;->encodeBase64([B)[B

    move-result-object v2

    .line 178
    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v2}, Ljava/lang/String;-><init>([B)V

    .line 180
    const-string v2, "contaCDB"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 181
    const-string v2, "agenciaCDB"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 182
    const-string v2, "valorCDB"

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 183
    const-string v2, "codigoProdutoCDB"

    invoke-interface {v0, v2, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 184
    const-string v2, "nomeProdutoCDB"

    invoke-interface {v0, v2, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 185
    const-string v2, "prazoCDB"

    invoke-interface {v0, v2, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 186
    const-string v2, "agendadoCDB"

    invoke-interface {v0, v2, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 187
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 190
    new-instance v0, Ljava/lang/String;

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

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    .line 191
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 192
    const-string v2, "isCardCDB"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 193
    const-string v2, "cpfCDB"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 194
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    :goto_0
    return-void

    .line 196
    :catch_0
    move-exception v0

    .line 197
    const-string v1, "ERROR"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic a(Liih;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Liih;->b()V

    return-void
.end method

.method static synthetic b(Liih;)Lnau;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Liih;->c:Lnau;

    return-object v0
.end method

.method private b()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 203
    iget-object v0, p0, Liih;->b:Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;

    const-string v1, "CDBPreferences"

    invoke-virtual {v0, v1, v4}, Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 204
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 205
    iget-object v1, p0, Liih;->b:Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;

    const-string v2, "cardPreferences"

    invoke-virtual {v1, v2, v4}, Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 206
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 208
    const-string v2, "contaCDB"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 209
    const-string v2, "agenciaCDB"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 210
    const-string v2, "valorCDB"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 211
    const-string v2, "codigoProdutoCDB"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 212
    const-string v2, "nomeProdutoCDB"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 213
    const-string v2, "prazoCDB"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 214
    const-string v2, "agendadoCDB"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 215
    const-string v2, "cpfCDB"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 216
    const-string v2, "isCardCDB"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 218
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 219
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 220
    return-void
.end method


# virtual methods
.method public a(Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Liih;->b:Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;

    .line 135
    return-void
.end method

.method public a(Lftq;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Liih;->d:Lftq;

    .line 127
    return-void
.end method

.method public a(Lftt;)V
    .locals 0

    .prologue
    .line 130
    iput-object p1, p0, Liih;->e:Lftt;

    .line 131
    return-void
.end method

.method public a(Lfuu;)V
    .locals 0

    .prologue
    .line 138
    iput-object p1, p0, Liih;->f:Lfuu;

    .line 139
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 142
    iput-object p1, p0, Liih;->g:Ljava/lang/String;

    .line 143
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 54
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 56
    check-cast p1, Lnau;

    iput-object p1, p0, Liih;->c:Lnau;

    .line 57
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 10

    .prologue
    const/4 v6, 0x0

    .line 62
    const v0, 0x7f040283

    invoke-virtual {p1, v0, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    .line 64
    const v0, 0x7f100d80

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 65
    const v1, 0x7f100d81

    invoke-virtual {v7, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 66
    const v2, 0x7f100d76

    invoke-virtual {v7, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 67
    const v3, 0x7f100d82

    invoke-virtual {v7, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 68
    const v4, 0x7f100d83

    invoke-virtual {v7, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 69
    const v5, 0x7f100d7b

    invoke-virtual {v7, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 71
    iget-object v8, p0, Liih;->d:Lftq;

    invoke-virtual {v8}, Lftq;->b()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Liih;->e:Lftt;

    invoke-virtual {v8}, Lftt;->d()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, " "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Liih;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f09059d

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    iget-object v0, p0, Liih;->b:Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;

    invoke-virtual {v0}, Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 74
    invoke-virtual {p0}, Liih;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09059b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    iget-object v0, p0, Liih;->b:Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;

    invoke-virtual {v0}, Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnak;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    :goto_0
    iget-object v0, p0, Liih;->e:Lftt;

    invoke-virtual {v0}, Lftt;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    iget-object v0, p0, Liih;->e:Lftt;

    invoke-virtual {v0}, Lftt;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnaj;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    const v0, 0x7f100d84

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 86
    iget-object v1, p0, Liih;->e:Lftt;

    invoke-virtual {v1}, Lftt;->i()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 87
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 107
    :cond_0
    const v0, 0x7f10006e

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 108
    new-instance v1, Liii;

    invoke-direct {v1, p0}, Liii;-><init>(Liih;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    invoke-direct {p0}, Liih;->a()V

    .line 122
    return-object v7

    .line 77
    :cond_1
    invoke-virtual {p0}, Liih;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09059c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    iget-object v0, p0, Liih;->b:Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;

    invoke-virtual {v0}, Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;->b()Lftt;

    move-result-object v0

    invoke-virtual {v0}, Lftt;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnak;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 89
    :cond_2
    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    move v3, v6

    .line 90
    :goto_1
    iget-object v1, p0, Liih;->e:Lftt;

    invoke-virtual {v1}, Lftt;->i()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v3, v1, :cond_0

    .line 91
    iget-object v1, p0, Liih;->e:Lftt;

    invoke-virtual {v1}, Lftt;->i()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lftu;

    .line 92
    const v2, 0x7f04035e

    const/4 v4, 0x0

    invoke-virtual {p1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 93
    const v2, 0x7f100d86

    invoke-virtual {v4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 94
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lftu;->d()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lnak;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " a "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 95
    invoke-virtual {v1}, Lftu;->c()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lnak;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 94
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    const v2, 0x7f100d87

    invoke-virtual {v4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 98
    invoke-virtual {v1}, Lftu;->a()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lnaj;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    const v2, 0x7f100d88

    invoke-virtual {v4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 101
    invoke-virtual {v1}, Lftu;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 90
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 147
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 148
    return-void
.end method
