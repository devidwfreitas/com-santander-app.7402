.class public Lcom/santander/app/previdencia/presentation/AporteActivity;
.super Lgrs;
.source "SourceFile"

# interfaces
.implements Lkek;


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/EditText;

.field private e:Landroid/widget/Button;

.field private f:Lkdg;

.field private g:Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;

.field private w:Lamy;

.field private x:Lcom/santander/app/contacorrente/domain/Conta;

.field private y:Lkfn;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lgrs;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/santander/app/previdencia/presentation/AporteActivity;Lcom/santander/app/contacorrente/domain/Conta;)Lcom/santander/app/contacorrente/domain/Conta;
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/santander/app/previdencia/presentation/AporteActivity;->x:Lcom/santander/app/contacorrente/domain/Conta;

    return-object p1
.end method

.method public static synthetic a(Lcom/santander/app/previdencia/presentation/AporteActivity;)Lkfn;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/santander/app/previdencia/presentation/AporteActivity;->y:Lkfn;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 63
    const v0, 0x7f100a6e

    invoke-virtual {p0, v0}, Lcom/santander/app/previdencia/presentation/AporteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/previdencia/presentation/AporteActivity;->a:Landroid/widget/TextView;

    .line 64
    const v0, 0x7f100a70

    invoke-virtual {p0, v0}, Lcom/santander/app/previdencia/presentation/AporteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/previdencia/presentation/AporteActivity;->b:Landroid/widget/TextView;

    .line 65
    const v0, 0x7f100a72

    invoke-virtual {p0, v0}, Lcom/santander/app/previdencia/presentation/AporteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/previdencia/presentation/AporteActivity;->c:Landroid/widget/TextView;

    .line 66
    const v0, 0x7f100a75

    invoke-virtual {p0, v0}, Lcom/santander/app/previdencia/presentation/AporteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/santander/app/previdencia/presentation/AporteActivity;->d:Landroid/widget/EditText;

    .line 67
    const v0, 0x7f1009d7

    invoke-virtual {p0, v0}, Lcom/santander/app/previdencia/presentation/AporteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/santander/app/previdencia/presentation/AporteActivity;->e:Landroid/widget/Button;

    .line 68
    iget-object v0, p0, Lcom/santander/app/previdencia/presentation/AporteActivity;->e:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/santander/app/previdencia/presentation/AporteActivity;->b()Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    const v0, 0x7f100139

    invoke-virtual {p0, v0}, Lcom/santander/app/previdencia/presentation/AporteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;

    iput-object v0, p0, Lcom/santander/app/previdencia/presentation/AporteActivity;->g:Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;

    .line 72
    invoke-virtual {p0}, Lcom/santander/app/previdencia/presentation/AporteActivity;->c()V

    .line 74
    iget-object v0, p0, Lcom/santander/app/previdencia/presentation/AporteActivity;->d:Landroid/widget/EditText;

    new-instance v1, Lmyy;

    iget-object v2, p0, Lcom/santander/app/previdencia/presentation/AporteActivity;->d:Landroid/widget/EditText;

    invoke-direct {v1, v2}, Lmyy;-><init>(Landroid/widget/EditText;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 76
    new-instance v0, Lkfo;

    invoke-direct {v0, p0}, Lkfo;-><init>(Lkek;)V

    iput-object v0, p0, Lcom/santander/app/previdencia/presentation/AporteActivity;->y:Lkfn;

    .line 77
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lanb;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 111
    new-instance v0, Lamy;

    invoke-direct {v0, p1}, Lamy;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/santander/app/previdencia/presentation/AporteActivity;->w:Lamy;

    .line 112
    iget-object v0, p0, Lcom/santander/app/previdencia/presentation/AporteActivity;->g:Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;

    iget-object v1, p0, Lcom/santander/app/previdencia/presentation/AporteActivity;->w:Lamy;

    invoke-virtual {v0, v1}, Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;->setAdapter(Lamr;)V

    .line 113
    iget-object v0, p0, Lcom/santander/app/previdencia/presentation/AporteActivity;->g:Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;

    new-instance v1, Lkeg;

    invoke-direct {v1, p0}, Lkeg;-><init>(Lcom/santander/app/previdencia/presentation/AporteActivity;)V

    invoke-virtual {v0, v1}, Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;->setOnItemSelectedListener(Lamt;)V

    .line 119
    return-void
.end method

.method b()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 80
    new-instance v0, Lkef;

    invoke-direct {v0, p0}, Lkef;-><init>(Lcom/santander/app/previdencia/presentation/AporteActivity;)V

    return-object v0
.end method

.method public c()V
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/santander/app/previdencia/presentation/AporteActivity;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/santander/app/previdencia/presentation/AporteActivity;->f:Lkdg;

    invoke-virtual {v1}, Lkdg;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    iget-object v0, p0, Lcom/santander/app/previdencia/presentation/AporteActivity;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/santander/app/previdencia/presentation/AporteActivity;->f:Lkdg;

    invoke-virtual {v1}, Lkdg;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    iget-object v0, p0, Lcom/santander/app/previdencia/presentation/AporteActivity;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/santander/app/previdencia/presentation/AporteActivity;->f:Lkdg;

    invoke-virtual {v1}, Lkdg;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    return-void
.end method

.method public d()V
    .locals 3

    .prologue
    .line 96
    iget-object v0, p0, Lcom/santander/app/previdencia/presentation/AporteActivity;->f:Lkdg;

    iget-object v1, p0, Lcom/santander/app/previdencia/presentation/AporteActivity;->x:Lcom/santander/app/contacorrente/domain/Conta;

    invoke-virtual {v1}, Lcom/santander/app/contacorrente/domain/Conta;->getAgencia()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkdg;->c(Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcom/santander/app/previdencia/presentation/AporteActivity;->f:Lkdg;

    iget-object v1, p0, Lcom/santander/app/previdencia/presentation/AporteActivity;->x:Lcom/santander/app/contacorrente/domain/Conta;

    invoke-virtual {v1}, Lcom/santander/app/contacorrente/domain/Conta;->getCuenta()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkdg;->d(Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lcom/santander/app/previdencia/presentation/AporteActivity;->f:Lkdg;

    invoke-virtual {p0}, Lcom/santander/app/previdencia/presentation/AporteActivity;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkdg;->b(Ljava/lang/String;)V

    .line 99
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/previdencia/presentation/AporteConfirmacaoActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 100
    const-string v1, "aporte_informacao"

    iget-object v2, p0, Lcom/santander/app/previdencia/presentation/AporteActivity;->f:Lkdg;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 101
    invoke-virtual {p0, v0}, Lcom/santander/app/previdencia/presentation/AporteActivity;->startActivity(Landroid/content/Intent;)V

    .line 102
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/santander/app/previdencia/presentation/AporteActivity;->d:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/santander/app/previdencia/presentation/AporteActivity;->d:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 50
    invoke-super {p0, p1}, Lgrs;->onCreate(Landroid/os/Bundle;)V

    .line 52
    const v0, 0x7f0400e4

    invoke-virtual {p0, v0}, Lcom/santander/app/previdencia/presentation/AporteActivity;->setContentView(I)V

    .line 54
    invoke-virtual {p0}, Lcom/santander/app/previdencia/presentation/AporteActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "aporte"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lkdg;

    iput-object v0, p0, Lcom/santander/app/previdencia/presentation/AporteActivity;->f:Lkdg;

    .line 56
    const v0, 0x7f0900cd

    invoke-virtual {p0, v0}, Lcom/santander/app/previdencia/presentation/AporteActivity;->c(I)V

    .line 58
    invoke-virtual {p0}, Lcom/santander/app/previdencia/presentation/AporteActivity;->a()V

    .line 59
    return-void
.end method
