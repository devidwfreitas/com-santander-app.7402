.class public Lcom/santander/app/FuturosActivity;
.super Lgrs;
.source "SourceFile"


# instance fields
.field public a:Landroid/app/Dialog;

.field private final b:Ljava/lang/String;

.field private c:Lcom/santander/app/contacorrente/domain/Conta;

.field private d:Landroid/app/Activity;

.field private e:Lfva;

.field private f:Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;

.field private g:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Lgrs;-><init>()V

    .line 35
    const-string v0, "FuturosActivity"

    iput-object v0, p0, Lcom/santander/app/FuturosActivity;->b:Ljava/lang/String;

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/santander/app/FuturosActivity;->a:Landroid/app/Dialog;

    return-void
.end method

.method public static synthetic a(Lcom/santander/app/FuturosActivity;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/santander/app/FuturosActivity;->d:Landroid/app/Activity;

    return-object v0
.end method

.method public static synthetic a(Lcom/santander/app/FuturosActivity;Lcom/santander/app/contacorrente/domain/Conta;)Lcom/santander/app/contacorrente/domain/Conta;
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/santander/app/FuturosActivity;->c:Lcom/santander/app/contacorrente/domain/Conta;

    return-object p1
.end method

.method public static synthetic a(Lcom/santander/app/FuturosActivity;Lfva;)Lfva;
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/santander/app/FuturosActivity;->e:Lfva;

    return-object p1
.end method

.method private a()V
    .locals 10

    .prologue
    const v9, 0x7f10062c

    const v8, 0x7f090708

    const v7, 0x7f040322

    const/16 v6, 0x8

    const/4 v3, 0x0

    .line 69
    move v2, v3

    :goto_0
    iget-object v0, p0, Lcom/santander/app/FuturosActivity;->e:Lfva;

    invoke-virtual {v0}, Lfva;->g()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    .line 70
    invoke-virtual {p0}, Lcom/santander/app/FuturosActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v7, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 71
    add-int/lit8 v0, v2, 0x64

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 73
    const v0, 0x7f100ffe

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 74
    iget-object v1, p0, Lcom/santander/app/FuturosActivity;->e:Lfva;

    invoke-virtual {v1}, Lfva;->g()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfvc;

    invoke-virtual {v1}, Lfvc;->e()Ljava/lang/String;

    move-result-object v1

    const-string v5, "-"

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v5, -0x1

    if-eq v1, v5, :cond_0

    .line 75
    invoke-virtual {p0}, Lcom/santander/app/FuturosActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v5, 0x7f0e016a

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 77
    :cond_0
    iget-object v1, p0, Lcom/santander/app/FuturosActivity;->e:Lfva;

    invoke-virtual {v1}, Lfva;->g()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfvc;

    invoke-virtual {v1}, Lfvc;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    const/high16 v1, 0x41800000    # 16.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 79
    const v0, 0x7f100ffd

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 80
    iget-object v1, p0, Lcom/santander/app/FuturosActivity;->e:Lfva;

    invoke-virtual {v1}, Lfva;->g()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfvc;

    invoke-virtual {v1}, Lfvc;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    const/high16 v1, 0x41400000    # 12.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 83
    const v0, 0x7f100ffc

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 84
    const/16 v1, 0xf

    invoke-virtual {v0, v1, v3, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 85
    iget-object v1, p0, Lcom/santander/app/FuturosActivity;->e:Lfva;

    invoke-virtual {v1}, Lfva;->g()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfvc;

    invoke-virtual {v1}, Lfvc;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    iget-object v0, p0, Lcom/santander/app/FuturosActivity;->e:Lfva;

    invoke-virtual {v0}, Lfva;->g()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne v2, v0, :cond_1

    .line 90
    const v0, 0x7f100fcd

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 91
    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/santander/app/FuturosActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    :cond_1
    iget-object v0, p0, Lcom/santander/app/FuturosActivity;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 69
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_0

    .line 97
    :cond_2
    iget-object v0, p0, Lcom/santander/app/FuturosActivity;->e:Lfva;

    invoke-virtual {v0}, Lfva;->g()Ljava/util/Vector;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/santander/app/FuturosActivity;->e:Lfva;

    invoke-virtual {v0}, Lfva;->g()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_4

    .line 98
    :cond_3
    invoke-virtual {p0}, Lcom/santander/app/FuturosActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v7, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 99
    const v0, 0x7f100fcd

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 100
    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/santander/app/FuturosActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09070a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/santander/app/FuturosActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    const v0, 0x7f100fcc

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 103
    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 104
    const v0, 0x7f100ffe

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 105
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 106
    const v0, 0x7f100ffd

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 107
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 108
    const v0, 0x7f100ffc

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 109
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 111
    iget-object v0, p0, Lcom/santander/app/FuturosActivity;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 113
    :cond_4
    return-void
.end method

.method public static synthetic b(Lcom/santander/app/FuturosActivity;)Lcom/santander/app/contacorrente/domain/Conta;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/santander/app/FuturosActivity;->c:Lcom/santander/app/contacorrente/domain/Conta;

    return-object v0
.end method

.method public static synthetic c(Lcom/santander/app/FuturosActivity;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/santander/app/FuturosActivity;->g:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public static synthetic d(Lcom/santander/app/FuturosActivity;)Lfva;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/santander/app/FuturosActivity;->e:Lfva;

    return-object v0
.end method

.method public static synthetic e(Lcom/santander/app/FuturosActivity;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/santander/app/FuturosActivity;->a()V

    return-void
.end method


# virtual methods
.method public goExtratos(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 117
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 118
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v1, v0, -0x64

    .line 120
    new-instance v2, Landroid/content/Intent;

    const-class v0, Lcom/santander/app/FuturosExtratoActivity;

    invoke-direct {v2, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 121
    const-string v3, "data"

    iget-object v0, p0, Lcom/santander/app/FuturosActivity;->e:Lfva;

    invoke-virtual {v0}, Lfva;->g()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfvc;

    invoke-virtual {v0}, Lfvc;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 122
    const-string v3, "label"

    iget-object v0, p0, Lcom/santander/app/FuturosActivity;->e:Lfva;

    invoke-virtual {v0}, Lfva;->g()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfvc;

    invoke-virtual {v0}, Lfvc;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 123
    const-string v3, "valor"

    iget-object v0, p0, Lcom/santander/app/FuturosActivity;->e:Lfva;

    invoke-virtual {v0}, Lfva;->g()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfvc;

    invoke-virtual {v0}, Lfvc;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 124
    invoke-virtual {p0, v2}, Lcom/santander/app/FuturosActivity;->startActivity(Landroid/content/Intent;)V

    .line 126
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 47
    invoke-super {p0, p1}, Lgrs;->onCreate(Landroid/os/Bundle;)V

    .line 49
    const v0, 0x7f04020d

    invoke-virtual {p0, v0}, Lcom/santander/app/FuturosActivity;->setContentView(I)V

    .line 50
    const v0, 0x7f090709

    invoke-virtual {p0, v0}, Lcom/santander/app/FuturosActivity;->c(I)V

    .line 52
    iput-object p0, p0, Lcom/santander/app/FuturosActivity;->d:Landroid/app/Activity;

    .line 54
    const v0, 0x7f100a1f

    invoke-virtual {p0, v0}, Lcom/santander/app/FuturosActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/santander/app/FuturosActivity;->g:Landroid/widget/LinearLayout;

    .line 56
    const v0, 0x7f100139

    invoke-virtual {p0, v0}, Lcom/santander/app/FuturosActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;

    iput-object v0, p0, Lcom/santander/app/FuturosActivity;->f:Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;

    .line 57
    iget-object v0, p0, Lcom/santander/app/FuturosActivity;->f:Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;

    invoke-static {}, Lgmy;->e()Lamy;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;->setAdapter(Lamr;)V

    .line 58
    iget-object v0, p0, Lcom/santander/app/FuturosActivity;->f:Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;

    new-instance v1, Lfhz;

    invoke-direct {v1, p0}, Lfhz;-><init>(Lcom/santander/app/FuturosActivity;)V

    invoke-virtual {v0, v1}, Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;->setOnItemSelectedListener(Lamt;)V

    .line 65
    return-void
.end method
