.class public Lcom/santander/app/transferencia/presentation/CadastroFavorecidoActivity;
.super Lgrs;
.source "SourceFile"

# interfaces
.implements Lmno;


# static fields
.field private static final a:Ljava/lang/String; = "CadastroFavorecidoActivity"

.field private static final b:I = 0x378


# instance fields
.field private A:Lbr/com/santander/uisdk/SantanderSwitch;

.field private B:Landroid/widget/Button;

.field private C:Lmkq;

.field private D:Lmip;

.field private E:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmkq;",
            ">;"
        }
    .end annotation
.end field

.field private F:Lmkw;

.field private G:Lmpq;

.field private H:Lcom/santander/app/contacorrente/domain/Conta;

.field private I:Landroid/text/TextWatcher;

.field private c:Landroid/widget/LinearLayout;

.field private d:Landroid/widget/RelativeLayout;

.field private e:Landroid/widget/LinearLayout;

.field private f:Lcom/santander/app/components/view/ClickToSelectEditText;

.field private g:Landroid/widget/EditText;

.field private w:Landroid/widget/EditText;

.field private x:Landroid/widget/EditText;

.field private y:Landroid/widget/EditText;

.field private z:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Lgrs;-><init>()V

    .line 368
    new-instance v0, Lmnn;

    invoke-direct {v0, p0}, Lmnn;-><init>(Lcom/santander/app/transferencia/presentation/CadastroFavorecidoActivity;)V

    iput-object v0, p0, Lcom/santander/app/transferencia/presentation/CadastroFavorecidoActivity;->I:Landroid/text/TextWatcher;

    return-void
.end method

.method public static synthetic a(Lcom/santander/app/transferencia/presentation/CadastroFavorecidoActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/CadastroFavorecidoActivity;->g:Landroid/widget/EditText;

    return-object v0
.end method

.method public static synthetic a(Lcom/santander/app/transferencia/presentation/CadastroFavorecidoActivity;Lmkq;)Lmkq;
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/santander/app/transferencia/presentation/CadastroFavorecidoActivity;->C:Lmkq;

    return-object p1
.end method

.method public static synthetic b(Lcom/santander/app/transferencia/presentation/CadastroFavorecidoActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/CadastroFavorecidoActivity;->w:Landroid/widget/EditText;

    return-object v0
.end method

.method public static synthetic c(Lcom/santander/app/transferencia/presentation/CadastroFavorecidoActivity;)Lmkq;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/CadastroFavorecidoActivity;->C:Lmkq;

    return-object v0
.end method

.method public static synthetic d(Lcom/santander/app/transferencia/presentation/CadastroFavorecidoActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/CadastroFavorecidoActivity;->x:Landroid/widget/EditText;

    return-object v0
.end method

.method private d()V
    .locals 4

    .prologue
    const/16 v2, 0x8

    const/4 v3, 0x0

    .line 87
    invoke-virtual {p0}, Lcom/santander/app/transferencia/presentation/CadastroFavorecidoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "contaSelecionada"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/santander/app/contacorrente/domain/Conta;

    iput-object v0, p0, Lcom/santander/app/transferencia/presentation/CadastroFavorecidoActivity;->H:Lcom/santander/app/contacorrente/domain/Conta;

    .line 89
    const v0, 0x7f100a89

    invoke-virtual {p0, v0}, Lcom/santander/app/transferencia/presentation/CadastroFavorecidoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/santander/app/transferencia/presentation/CadastroFavorecidoActivity;->c:Landroid/widget/LinearLayout;

    .line 90
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/CadastroFavorecidoActivity;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 92
    const v0, 0x7f100a80

    invoke-virtual {p0, v0}, Lcom/santander/app/transferencia/presentation/CadastroFavorecidoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/santander/app/transferencia/presentation/CadastroFavorecidoActivity;->d:Landroid/widget/RelativeLayout;

    .line 93
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/CadastroFavorecidoActivity;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 95
    const v0, 0x7f100a8e

    invoke-virtual {p0, v0}, Lcom/santander/app/transferencia/presentation/CadastroFavorecidoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/santander/app/transferencia/presentation/CadastroFavorecidoActivity;->e:Landroid/widget/LinearLayout;

    .line 96
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/CadastroFavorecidoActivity;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 98
    const v0, 0x7f100a7f

    invoke-virtual {p0, v0}, Lcom/santander/app/transferencia/presentation/CadastroFavorecidoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/ClickToSelectEditText;

    iput-object v0, p0, Lcom/santander/app/transferencia/presentation/CadastroFavorecidoActivity;->f:Lcom/santander/app/components/view/ClickToSelectEditText;

    .line 99
    const v0, 0x7f100a82

    invoke-virtual {p0, v0}, Lcom/santander/app/transferencia/presentation/CadastroFavorecidoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/santander/app/transferencia/presentation/CadastroFavorecidoActivity;->g:Landroid/widget/EditText;

    .line 100
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/CadastroFavorecidoActivity;->g:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 101
    const v0, 0x7f100a83

    invoke-virtual {p0, v0}, Lcom/santander/app/transferencia/presentation/CadastroFavorecidoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/santander/app/transferencia/presentation/CadastroFavorecidoActivity;->w:Landroid/widget/EditText;

    .line 102
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/CadastroFavorecidoActivity;->w:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 105
    const v0, 0x7f100a85

    invoke-virtual {p0, v0}, Lcom/santander/app/transferencia/presentation/CadastroFavorecidoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/santander/app/transferencia/presentation/CadastroFavorecidoActivity;->x:Landroid/widget/EditText;

    .line 106
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/CadastroFavorecidoActivity;->x:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 107
    const v0, 0x7f100a8b

    invoke-virtual {p0, v0}, Lcom/santander/app/transferencia/presentation/CadastroFavorecidoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/santander/app/transferencia/presentation/CadastroFavorecidoActivity;->y:Landroid/widget/EditText;

    .line 108
    const v0, 0x7f100a8d

    invoke-virtual {p0, v0}, Lcom/santander/app/transferencia/presentation/CadastroFavorecidoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/santander/app/transferencia/presentation/CadastroFavorecidoActivity;->z:Landroid/widget/EditText;

    .line 109
    const v0, 0x7f100a8f

    invoke-virtual {p0, v0}, Lcom/santander/app/transferencia/presentation/CadastroFavorecidoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lbr/com/santander/uisdk/SantanderSwitch;

    iput-object v0, p0, Lcom/santander/app/transferencia/presentation/CadastroFavorecidoActivity;->A:Lbr/com/santander/uisdk/SantanderSwitch;

    .line 110
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/transferencia/presentation/CadastroFavorecidoActivity;->D:Lmip;

    .line 113
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/CadastroFavorecidoActivity;->g:Landroid/widget/EditText;

    new-instance v1, Lmnj;

    invoke-direct {v1, p0}, Lmnj;-><init>(Lcom/santander/app/transferencia/presentation/CadastroFavorecidoActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 132
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/CadastroFavorecidoActivity;->w:Landroid/widget/EditText;

    new-instance v1, Lmnk;

    invoke-direct {v1, p0}, Lmnk;-><init>(Lcom/santander/app/transferencia/presentation/CadastroFavorecidoActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 156
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/CadastroFavorecidoActivity;->g:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/santander/app/transferencia/presentation/CadastroFavorecidoActivity;->I:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 157
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/CadastroFavorecidoActivity;->w:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/santander/app/transferencia/presentation/CadastroFavorecidoActivity;->I:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 158
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/CadastroFavorecidoActivity;->x:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/santander/app/transferencia/presentation/CadastroFavorecidoActivity;->I:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 159
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/CadastroFavorecidoActivity;->y:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/santander/app/transferencia/presentation/CadastroFavorecidoActivity;->I:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 160
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/CadastroFavorecidoActivity;->z:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/santander/app/transferencia/presentation/CadastroFavorecidoActivity;->I:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 163
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/CadastroFavorecidoActivity;->z:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/santander/app/transferencia/presentation/CadastroFavorecidoActivity;->z:Landroid/widget/EditText;

    sget-object v2, Lnap;->AUTO:Lnap;

    invoke-static {v1, v2}, Lnam;->a(Landroid/widget/EditText;Lnap;)Landroid/text/TextWatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 165
    const v0, 0x7f100a7c

    invoke-virtual {p0, v0}, Lcom/santander/app/transferencia/presentation/CadastroFavorecidoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/santander/app/transferencia/presentation/CadastroFavorecidoActivity;->B:Landroid/widget/Button;

    .line 166
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/CadastroFavorecidoActivity;->B:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 167
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/CadastroFavorecidoActivity;->B:Landroid/widget/Button;

    new-instance v1, Lmnl;

    invoke-direct {v1, p0}, Lmnl;-><init>(Lcom/santander/app/transferencia/presentation/CadastroFavorecidoActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/CadastroFavorecidoActivity;->B:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 178
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/CadastroFavorecidoActivity;->f:Lcom/santander/app/components/view/ClickToSelectEditText;

    new-instance v1, Lmnm;

    invoke-direct {v1, p0}, Lmnm;-><init>(Lcom/santander/app/transferencia/presentation/CadastroFavorecidoActivity;)V

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/ClickToSelectEditText;->setOnItemSelectedListener(Lgpd;)V

    .line 202
    new-instance v0, Lmpr;

    invoke-direct {v0, p0}, Lmpr;-><init>(Lmno;)V

    iput-object v0, p0, Lcom/santander/app/transferencia/presentation/CadastroFavorecidoActivity;->G:Lmpq;

    .line 203
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/CadastroFavorecidoActivity;->G:Lmpq;

    invoke-interface {v0}, Lmpq;->c()V

    .line 204
    return-void
.end method

.method public static synthetic e(Lcom/santander/app/transferencia/presentation/CadastroFavorecidoActivity;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/CadastroFavorecidoActivity;->E:Ljava/util/ArrayList;

    return-object v0
.end method

.method private e()Lmkw;
    .locals 3

    .prologue
    .line 214
    new-instance v1, Lmkw;

    invoke-direct {v1}, Lmkw;-><init>()V

    .line 216
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/CadastroFavorecidoActivity;->D:Lmip;

    invoke-interface {v0}, Lmip;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lmkw;->setConnUuid(Ljava/lang/String;)V

    .line 217
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/CadastroFavorecidoActivity;->D:Lmip;

    invoke-interface {v0}, Lmip;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lmkw;->setTokenSessao(Ljava/lang/String;)V

    .line 218
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/CadastroFavorecidoActivity;->D:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->m()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lmkw;->setTokenTransacao(Ljava/lang/String;)V

    .line 219
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/CadastroFavorecidoActivity;->C:Lmkq;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/CadastroFavorecidoActivity;->C:Lmkq;

    invoke-virtual {v0}, Lmkq;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x4

    invoke-static {v0, v2}, Lnaj;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Lmkw;->c(Ljava/lang/String;)V

    .line 220
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/CadastroFavorecidoActivity;->f:Lcom/santander/app/components/view/ClickToSelectEditText;

    invoke-virtual {v0}, Lcom/santander/app/components/view/ClickToSelectEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lmkw;->k(Ljava/lang/String;)V

    .line 221
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/CadastroFavorecidoActivity;->C:Lmkq;

    invoke-virtual {v0}, Lmkq;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lmkw;->l(Ljava/lang/String;)V

    .line 222
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/CadastroFavorecidoActivity;->H:Lcom/santander/app/contacorrente/domain/Conta;

    invoke-virtual {v0}, Lcom/santander/app/contacorrente/domain/Conta;->getAgencia()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lmkw;->a(Ljava/lang/String;)V

    .line 223
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/CadastroFavorecidoActivity;->H:Lcom/santander/app/contacorrente/domain/Conta;

    invoke-virtual {v0}, Lcom/santander/app/contacorrente/domain/Conta;->getCuenta()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lmkw;->b(Ljava/lang/String;)V

    .line 224
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/CadastroFavorecidoActivity;->g:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/CadastroFavorecidoActivity;->g:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v0}, Lmkw;->d(Ljava/lang/String;)V

    .line 225
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/CadastroFavorecidoActivity;->w:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/CadastroFavorecidoActivity;->w:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v1, v0}, Lmkw;->e(Ljava/lang/String;)V

    .line 226
    invoke-direct {p0}, Lcom/santander/app/transferencia/presentation/CadastroFavorecidoActivity;->h()Z

    move-result v0

    invoke-virtual {v1, v0}, Lmkw;->b(Z)V

    .line 227
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/CadastroFavorecidoActivity;->x:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/CadastroFavorecidoActivity;->x:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-virtual {v1, v0}, Lmkw;->j(Ljava/lang/String;)V

    .line 228
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/CadastroFavorecidoActivity;->z:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/CadastroFavorecidoActivity;->z:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :goto_4
    invoke-virtual {v1, v0}, Lmkw;->f(Ljava/lang/String;)V

    .line 229
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/CadastroFavorecidoActivity;->y:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/CadastroFavorecidoActivity;->y:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :goto_5
    invoke-virtual {v1, v0}, Lmkw;->h(Ljava/lang/String;)V

    .line 230
    invoke-virtual {v1}, Lmkw;->m()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "03"

    :goto_6
    invoke-virtual {v1, v0}, Lmkw;->g(Ljava/lang/String;)V

    .line 231
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/CadastroFavorecidoActivity;->A:Lbr/com/santander/uisdk/SantanderSwitch;

    invoke-virtual {v0}, Lbr/com/santander/uisdk/SantanderSwitch;->a()Z

    move-result v0

    invoke-virtual {v1, v0}, Lmkw;->a(Z)V

    .line 233
    return-object v1

    .line 219
    :cond_0
    const-string v0, ""

    goto/16 :goto_0

    .line 224
    :cond_1
    const-string v0, ""

    goto/16 :goto_1

    .line 225
    :cond_2
    const-string v0, ""

    goto :goto_2

    .line 227
    :cond_3
    const-string v0, ""

    goto :goto_3

    .line 228
    :cond_4
    const-string v0, ""

    goto :goto_4

    .line 229
    :cond_5
    const-string v0, ""

    goto :goto_5

    .line 230
    :cond_6
    const-string v0, "01"

    goto :goto_6
.end method

.method public static synthetic f(Lcom/santander/app/transferencia/presentation/CadastroFavorecidoActivity;)Lmpq;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/CadastroFavorecidoActivity;->G:Lmpq;

    return-object v0
.end method

.method private f()V
    .locals 5

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 303
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/CadastroFavorecidoActivity;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 304
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/CadastroFavorecidoActivity;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 305
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/CadastroFavorecidoActivity;->C:Lmkq;

    invoke-virtual {v0}, Lmkq;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "033"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/CadastroFavorecidoActivity;->C:Lmkq;

    invoke-virtual {v0}, Lmkq;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0033"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 306
    :cond_0
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/CadastroFavorecidoActivity;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 307
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/CadastroFavorecidoActivity;->w:Landroid/widget/EditText;

    new-array v1, v2, [Landroid/text/InputFilter;

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 312
    :goto_0
    return-void

    .line 309
    :cond_1
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/CadastroFavorecidoActivity;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 310
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/CadastroFavorecidoActivity;->w:Landroid/widget/EditText;

    new-array v1, v2, [Landroid/text/InputFilter;

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    const/16 v3, 0xb

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    goto :goto_0
.end method

.method private g()V
    .locals 2

    .prologue
    .line 326
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/CadastroFavorecidoActivity;->x:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 327
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/CadastroFavorecidoActivity;->w:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 328
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/CadastroFavorecidoActivity;->g:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 329
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/CadastroFavorecidoActivity;->z:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 330
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/CadastroFavorecidoActivity;->y:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 331
    return-void
.end method

.method public static synthetic g(Lcom/santander/app/transferencia/presentation/CadastroFavorecidoActivity;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/santander/app/transferencia/presentation/CadastroFavorecidoActivity;->f()V

    return-void
.end method

.method public static synthetic h(Lcom/santander/app/transferencia/presentation/CadastroFavorecidoActivity;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/santander/app/transferencia/presentation/CadastroFavorecidoActivity;->g()V

    return-void
.end method

.method private h()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 335
    iget-object v1, p0, Lcom/santander/app/transferencia/presentation/CadastroFavorecidoActivity;->C:Lmkq;

    if-eqz v1, :cond_2

    .line 336
    const-string v1, ""

    iget-object v2, p0, Lcom/santander/app/transferencia/presentation/CadastroFavorecidoActivity;->w:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/santander/app/transferencia/presentation/CadastroFavorecidoActivity;->C:Lmkq;

    invoke-virtual {v1}, Lmkq;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "033"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/santander/app/transferencia/presentation/CadastroFavorecidoActivity;->C:Lmkq;

    invoke-virtual {v1}, Lmkq;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "0033"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 337
    :cond_1
    const-string v1, "6"

    iget-object v2, p0, Lcom/santander/app/transferencia/presentation/CadastroFavorecidoActivity;->w:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 341
    :cond_2
    return v0
.end method

.method private i()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 346
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/CadastroFavorecidoActivity;->B:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 348
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/CadastroFavorecidoActivity;->C:Lmkq;

    invoke-virtual {v0}, Lmkq;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "033"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/CadastroFavorecidoActivity;->C:Lmkq;

    invoke-virtual {v0}, Lmkq;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0033"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 349
    :cond_0
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/CadastroFavorecidoActivity;->f:Lcom/santander/app/components/view/ClickToSelectEditText;

    invoke-virtual {v0}, Lcom/santander/app/components/view/ClickToSelectEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/CadastroFavorecidoActivity;->x:Landroid/widget/EditText;

    .line 350
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/CadastroFavorecidoActivity;->w:Landroid/widget/EditText;

    .line 351
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/CadastroFavorecidoActivity;->g:Landroid/widget/EditText;

    .line 352
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 353
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/CadastroFavorecidoActivity;->B:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 366
    :cond_1
    :goto_0
    return-void

    .line 357
    :cond_2
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/CadastroFavorecidoActivity;->f:Lcom/santander/app/components/view/ClickToSelectEditText;

    invoke-virtual {v0}, Lcom/santander/app/components/view/ClickToSelectEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/CadastroFavorecidoActivity;->z:Landroid/widget/EditText;

    .line 358
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/CadastroFavorecidoActivity;->y:Landroid/widget/EditText;

    .line 359
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/CadastroFavorecidoActivity;->x:Landroid/widget/EditText;

    .line 360
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/CadastroFavorecidoActivity;->w:Landroid/widget/EditText;

    .line 361
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/CadastroFavorecidoActivity;->g:Landroid/widget/EditText;

    .line 362
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 363
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/CadastroFavorecidoActivity;->B:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method public static synthetic i(Lcom/santander/app/transferencia/presentation/CadastroFavorecidoActivity;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/santander/app/transferencia/presentation/CadastroFavorecidoActivity;->i()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 208
    invoke-direct {p0}, Lcom/santander/app/transferencia/presentation/CadastroFavorecidoActivity;->e()Lmkw;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/transferencia/presentation/CadastroFavorecidoActivity;->F:Lmkw;

    .line 209
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/CadastroFavorecidoActivity;->G:Lmpq;

    iget-object v1, p0, Lcom/santander/app/transferencia/presentation/CadastroFavorecidoActivity;->F:Lmkw;

    iget-object v2, p0, Lcom/santander/app/transferencia/presentation/CadastroFavorecidoActivity;->H:Lcom/santander/app/contacorrente/domain/Conta;

    invoke-virtual {v2}, Lcom/santander/app/contacorrente/domain/Conta;->getIndexConta()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lmpq;->a(Lmkw;I)V

    .line 210
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 299
    invoke-static {p0, p1}, Lmxn;->e(Landroid/app/Activity;Ljava/lang/String;)Landroid/app/Dialog;

    .line 300
    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 5

    .prologue
    const v4, 0x7f100a87

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 282
    packed-switch p2, :pswitch_data_0

    .line 290
    :pswitch_0
    invoke-virtual {p0, p2}, Lcom/santander/app/transferencia/presentation/CadastroFavorecidoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TextInputLayout;

    const-string v1, ""

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    move-object v1, p1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/support/design/widget/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 291
    invoke-virtual {p0, p2}, Lcom/santander/app/transferencia/presentation/CadastroFavorecidoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TextInputLayout;

    const-string v1, ""

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    :goto_1
    invoke-virtual {v0, v2}, Landroid/support/design/widget/TextInputLayout;->setErrorEnabled(Z)V

    .line 294
    :goto_2
    invoke-virtual {p0, p2}, Lcom/santander/app/transferencia/presentation/CadastroFavorecidoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 295
    return-void

    .line 286
    :pswitch_1
    invoke-virtual {p0, v4}, Lcom/santander/app/transferencia/presentation/CadastroFavorecidoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TextInputLayout;

    const-string v1, ""

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    move-object v1, p1

    :goto_3
    invoke-virtual {v0, v1}, Landroid/support/design/widget/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 287
    invoke-virtual {p0, v4}, Lcom/santander/app/transferencia/presentation/CadastroFavorecidoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TextInputLayout;

    const-string v1, ""

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    move v1, v2

    :goto_4
    invoke-virtual {v0, v1}, Landroid/support/design/widget/TextInputLayout;->setErrorEnabled(Z)V

    goto :goto_2

    .line 286
    :cond_0
    const-string v1, ""

    goto :goto_3

    :cond_1
    move v1, v3

    .line 287
    goto :goto_4

    .line 290
    :cond_2
    const-string v1, ""

    goto :goto_0

    :cond_3
    move v2, v3

    .line 291
    goto :goto_1

    .line 282
    :pswitch_data_0
    .packed-switch 0x7f100a81
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public a(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lmkq;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 244
    iput-object p1, p0, Lcom/santander/app/transferencia/presentation/CadastroFavorecidoActivity;->E:Ljava/util/ArrayList;

    .line 245
    invoke-virtual {p0}, Lcom/santander/app/transferencia/presentation/CadastroFavorecidoActivity;->b()V

    .line 246
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lmkq;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 238
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/CadastroFavorecidoActivity;->f:Lcom/santander/app/components/view/ClickToSelectEditText;

    invoke-virtual {v0, p1}, Lcom/santander/app/components/view/ClickToSelectEditText;->setItems(Ljava/util/List;)V

    .line 240
    return-void
.end method

.method public b()V
    .locals 3

    .prologue
    .line 250
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/transferencia/presentation/ListagemTodosBancosActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 251
    const-string v1, "todosBancos"

    iget-object v2, p0, Lcom/santander/app/transferencia/presentation/CadastroFavorecidoActivity;->E:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 252
    const/16 v1, 0x378

    invoke-virtual {p0, v0, v1}, Lcom/santander/app/transferencia/presentation/CadastroFavorecidoActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 253
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 316
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 317
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/CadastroFavorecidoActivity;->F:Lmkw;

    invoke-virtual {v0, p1}, Lmkw;->h(Ljava/lang/String;)V

    .line 319
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 320
    const-string v1, "result"

    iget-object v2, p0, Lcom/santander/app/transferencia/presentation/CadastroFavorecidoActivity;->F:Lmkw;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 321
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/santander/app/transferencia/presentation/CadastroFavorecidoActivity;->setResult(ILandroid/content/Intent;)V

    .line 322
    invoke-virtual {p0}, Lcom/santander/app/transferencia/presentation/CadastroFavorecidoActivity;->finish()V

    .line 323
    return-void
.end method

.method public c()V
    .locals 0

    .prologue
    .line 258
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .prologue
    .line 262
    invoke-super {p0, p1, p2, p3}, Lgrs;->onActivityResult(IILandroid/content/Intent;)V

    .line 263
    invoke-static {p0}, Lgpu;->b(Landroid/app/Activity;)V

    .line 265
    const/16 v0, 0x378

    if-ne p1, v0, :cond_0

    .line 266
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 267
    const-string v0, "result"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lmkq;

    .line 268
    iput-object v0, p0, Lcom/santander/app/transferencia/presentation/CadastroFavorecidoActivity;->C:Lmkq;

    .line 269
    iget-object v1, p0, Lcom/santander/app/transferencia/presentation/CadastroFavorecidoActivity;->f:Lcom/santander/app/components/view/ClickToSelectEditText;

    invoke-virtual {v0}, Lmkq;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/santander/app/components/view/ClickToSelectEditText;->setText(Ljava/lang/CharSequence;)V

    .line 271
    invoke-direct {p0}, Lcom/santander/app/transferencia/presentation/CadastroFavorecidoActivity;->f()V

    .line 277
    :cond_0
    :goto_0
    return-void

    .line 272
    :cond_1
    if-nez p2, :cond_0

    .line 273
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/santander/app/transferencia/presentation/CadastroFavorecidoActivity;->C:Lmkq;

    .line 274
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/CadastroFavorecidoActivity;->f:Lcom/santander/app/components/view/ClickToSelectEditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/ClickToSelectEditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 71
    invoke-super {p0, p1}, Lgrs;->onCreate(Landroid/os/Bundle;)V

    .line 74
    const v0, 0x7f0400fa

    invoke-virtual {p0, v0}, Lcom/santander/app/transferencia/presentation/CadastroFavorecidoActivity;->setContentView(I)V

    .line 75
    invoke-virtual {p0}, Lcom/santander/app/transferencia/presentation/CadastroFavorecidoActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 76
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 77
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 78
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 80
    const v1, 0x7f090b0d

    invoke-virtual {p0, v1}, Lcom/santander/app/transferencia/presentation/CadastroFavorecidoActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lgpu;->a(Landroid/app/Activity;Landroid/support/v7/app/ActionBar;Ljava/lang/String;)V

    .line 82
    invoke-direct {p0}, Lcom/santander/app/transferencia/presentation/CadastroFavorecidoActivity;->d()V

    .line 83
    return-void
.end method
