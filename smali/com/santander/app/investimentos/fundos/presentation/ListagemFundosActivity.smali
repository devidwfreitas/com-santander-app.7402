.class public Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;
.super Lgrs;
.source "SourceFile"

# interfaces
.implements Ljhk;


# instance fields
.field private A:Lgtg;

.field private B:Ljdw;

.field private C:Ljava/lang/String;

.field private D:Landroid/content/Intent;

.field private E:Landroid/widget/LinearLayout;

.field private F:Landroid/widget/ImageView;

.field private G:Landroid/widget/TextView;

.field private H:Landroid/widget/LinearLayout;

.field private I:Landroid/app/Dialog;

.field private J:Landroid/widget/TextView;

.field private K:Landroid/widget/Button;

.field private L:Landroid/view/MenuItem;

.field private M:Z

.field private N:Landroid/widget/ScrollView;

.field private O:Landroid/widget/LinearLayout;

.field private P:Landroid/widget/TextView;

.field private a:Ljix;

.field private b:Lcom/santander/app/components/view/buttontabhost/ButtonTabHost;

.field private c:Landroid/widget/LinearLayout;

.field private d:Landroid/widget/LinearLayout;

.field private e:Landroid/widget/Button;

.field private f:Landroid/widget/ExpandableListView;

.field private g:Landroid/app/Activity;

.field private w:Landroid/widget/TextView;

.field private x:Landroid/widget/LinearLayout;

.field private y:Landroid/widget/LinearLayout;

.field private z:Ljhw;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Lgrs;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;->I:Landroid/app/Dialog;

    return-object v0
.end method

.method public static synthetic a(Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;->D:Landroid/content/Intent;

    return-object p1
.end method

.method private a(Landroid/widget/ExpandableListView;)V
    .locals 9

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 425
    .line 426
    invoke-virtual {p1}, Landroid/widget/ExpandableListView;->getExpandableListAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v0

    check-cast v0, Ljhw;

    move v1, v3

    move v2, v3

    move v5, v3

    .line 428
    :goto_0
    invoke-virtual {v0}, Ljhw;->getGroupCount()I

    move-result v6

    if-ge v1, v6, :cond_2

    .line 429
    const/4 v6, 0x1

    invoke-virtual {v0, v1, v6, v4, p1}, Ljhw;->getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 430
    invoke-virtual {v6, v3, v3}, Landroid/view/View;->measure(II)V

    .line 431
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v2, v6

    .line 433
    invoke-virtual {p1, v1}, Landroid/widget/ExpandableListView;->isGroupExpanded(I)Z

    move-result v6

    if-eqz v6, :cond_1

    move v6, v2

    move v2, v3

    .line 434
    :goto_1
    invoke-virtual {v0, v1}, Ljhw;->getChildrenCount(I)I

    move-result v7

    if-ge v2, v7, :cond_0

    move-object v5, p1

    .line 435
    invoke-virtual/range {v0 .. v5}, Ljhw;->getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 436
    invoke-virtual {v7, v3, v3}, Landroid/view/View;->measure(II)V

    .line 437
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v5, v6

    .line 438
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    .line 434
    add-int/lit8 v2, v2, 0x1

    move v8, v5

    move v5, v6

    move v6, v8

    goto :goto_1

    :cond_0
    move v2, v6

    .line 428
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 443
    :cond_2
    invoke-virtual {p1}, Landroid/widget/ExpandableListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 444
    invoke-virtual {p1}, Landroid/widget/ExpandableListView;->getDividerHeight()I

    move-result v3

    invoke-virtual {v0}, Ljhw;->getGroupCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    mul-int/2addr v0, v3

    add-int/2addr v0, v2

    add-int/2addr v0, v5

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 445
    invoke-virtual {p1, v1}, Landroid/widget/ExpandableListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 446
    invoke-virtual {p1}, Landroid/widget/ExpandableListView;->requestLayout()V

    .line 447
    return-void
.end method

.method public static synthetic a(Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;Ljdv;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;->a(Ljdv;)V

    return-void
.end method

.method private a(Ljdv;)V
    .locals 2

    .prologue
    .line 295
    const-string v0, "Investimentos_Fundos_Acao"

    const-string v1, "TodosOsFundos"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    iget-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;->z:Ljhw;

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;->z:Ljhw;

    invoke-virtual {v0}, Ljhw;->a()V

    .line 300
    :cond_0
    iget-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;->L:Landroid/view/MenuItem;

    if-eqz v0, :cond_1

    .line 301
    iget-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;->L:Landroid/view/MenuItem;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 304
    :cond_1
    iget-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;->d:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 305
    iget-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;->c:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 306
    iget-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;->a:Ljix;

    invoke-virtual {v0}, Ljix;->c()V

    .line 307
    iget-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;->a:Ljix;

    invoke-virtual {v0, p1}, Ljix;->a(Ljdv;)V

    .line 308
    return-void
.end method

.method public static synthetic b(Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;->g()V

    return-void
.end method

.method public static synthetic c(Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;)Ljdw;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;->B:Ljdw;

    return-object v0
.end method

.method public static synthetic d(Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;->g:Landroid/app/Activity;

    return-object v0
.end method

.method private d()V
    .locals 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;->D:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 125
    iget-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;->D:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "crm_fundos"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;->b:Lcom/santander/app/components/view/buttontabhost/ButtonTabHost;

    invoke-virtual {v0}, Lcom/santander/app/components/view/buttontabhost/ButtonTabHost;->setSelectedButtonTab2()V

    .line 127
    iget-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;->a:Ljix;

    invoke-virtual {v0}, Ljix;->a()V

    .line 137
    :goto_0
    return-void

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;->D:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "todos_fundos"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 129
    iget-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;->b:Lcom/santander/app/components/view/buttontabhost/ButtonTabHost;

    invoke-virtual {v0}, Lcom/santander/app/components/view/buttontabhost/ButtonTabHost;->setSelectedButtonTab2()V

    .line 130
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;->a(Ljdv;)V

    goto :goto_0

    .line 132
    :cond_1
    invoke-direct {p0}, Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;->g()V

    goto :goto_0

    .line 135
    :cond_2
    invoke-direct {p0}, Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;->g()V

    goto :goto_0
.end method

.method public static synthetic e(Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;)Landroid/content/Intent;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;->D:Landroid/content/Intent;

    return-object v0
.end method

.method private e()V
    .locals 2

    .prologue
    .line 140
    new-instance v0, Landroid/app/Dialog;

    const v1, 0x7f0b0224

    invoke-direct {v0, p0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;->I:Landroid/app/Dialog;

    .line 141
    iget-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;->I:Landroid/app/Dialog;

    const v1, 0x7f040182

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 142
    iget-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;->I:Landroid/app/Dialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 143
    iget-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;->I:Landroid/app/Dialog;

    const v1, 0x7f100770

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;->J:Landroid/widget/TextView;

    .line 144
    iget-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;->I:Landroid/app/Dialog;

    const v1, 0x7f100771

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;->K:Landroid/widget/Button;

    .line 145
    iget-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;->K:Landroid/widget/Button;

    const v1, 0x7f090199

    invoke-virtual {p0, v1}, Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 147
    iget-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;->I:Landroid/app/Dialog;

    const v1, 0x7f1003fe

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Ljhc;

    invoke-direct {v1, p0}, Ljhc;-><init>(Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    iget-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;->I:Landroid/app/Dialog;

    const v1, 0x7f100402

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Ljhd;

    invoke-direct {v1, p0}, Ljhd;-><init>(Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    iget-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;->K:Landroid/widget/Button;

    new-instance v1, Ljhe;

    invoke-direct {v1, p0}, Ljhe;-><init>(Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    return-void
.end method

.method public static synthetic f(Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;)Lcom/santander/app/components/view/buttontabhost/ButtonTabHost;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;->b:Lcom/santander/app/components/view/buttontabhost/ButtonTabHost;

    return-object v0
.end method

.method private f()V
    .locals 3

    .prologue
    .line 220
    iput-object p0, p0, Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;->g:Landroid/app/Activity;

    .line 222
    const v0, 0x7f100c8b

    invoke-virtual {p0, v0}, Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/buttontabhost/ButtonTabHost;

    iput-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;->b:Lcom/santander/app/components/view/buttontabhost/ButtonTabHost;

    .line 223
    iget-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;->b:Lcom/santander/app/components/view/buttontabhost/ButtonTabHost;

    new-instance v1, Ljhf;

    invoke-direct {v1, p0}, Ljhf;-><init>(Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;)V

    invoke-virtual {v0, p0, v1}, Lcom/santander/app/components/view/buttontabhost/ButtonTabHost;->a(Landroid/content/Context;Lgsw;)V

    .line 251
    const v0, 0x7f100c7a

    invoke-virtual {p0, v0}, Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;->N:Landroid/widget/ScrollView;

    .line 253
    const v0, 0x7f100c8d

    invoke-virtual {p0, v0}, Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;->x:Landroid/widget/LinearLayout;

    .line 254
    const v0, 0x7f100c8e

    invoke-virtual {p0, v0}, Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;->w:Landroid/widget/TextView;

    .line 255
    const v0, 0x7f100c8f

    invoke-virtual {p0, v0}, Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;->O:Landroid/widget/LinearLayout;

    .line 256
    const v0, 0x7f100a05

    invoke-virtual {p0, v0}, Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;->P:Landroid/widget/TextView;

    .line 257
    const v0, 0x7f100c8c

    invoke-virtual {p0, v0}, Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;->c:Landroid/widget/LinearLayout;

    .line 258
    const v0, 0x7f100c92

    invoke-virtual {p0, v0}, Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;->d:Landroid/widget/LinearLayout;

    .line 259
    const v0, 0x7f100c93

    invoke-virtual {p0, v0}, Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;->E:Landroid/widget/LinearLayout;

    .line 260
    const v0, 0x7f100c95

    invoke-virtual {p0, v0}, Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;->F:Landroid/widget/ImageView;

    .line 261
    iget-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;->E:Landroid/widget/LinearLayout;

    new-instance v1, Ljhg;

    invoke-direct {v1, p0}, Ljhg;-><init>(Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 270
    const v0, 0x7f100c96

    invoke-virtual {p0, v0}, Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;->H:Landroid/widget/LinearLayout;

    .line 271
    const v0, 0x7f100c94

    invoke-virtual {p0, v0}, Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;->G:Landroid/widget/TextView;

    .line 272
    const v0, 0x7f100c90

    invoke-virtual {p0, v0}, Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;->y:Landroid/widget/LinearLayout;

    .line 273
    const v0, 0x7f100c91

    invoke-virtual {p0, v0}, Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;->e:Landroid/widget/Button;

    .line 274
    iget-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;->e:Landroid/widget/Button;

    new-instance v1, Ljhh;

    invoke-direct {v1, p0}, Ljhh;-><init>(Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 283
    const v0, 0x7f100c97

    invoke-virtual {p0, v0}, Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ExpandableListView;

    iput-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;->f:Landroid/widget/ExpandableListView;

    .line 285
    new-instance v0, Lgtg;

    iget-object v1, p0, Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;->g:Landroid/app/Activity;

    new-instance v2, Ljhi;

    invoke-direct {v2, p0}, Ljhi;-><init>(Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;)V

    invoke-direct {v0, v1, v2}, Lgtg;-><init>(Landroid/app/Activity;Lgti;)V

    iput-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;->A:Lgtg;

    .line 292
    return-void
.end method

.method public static synthetic g(Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;)Lgtg;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;->A:Lgtg;

    return-object v0
.end method

.method private g()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 311
    const-string v0, "Investimentos_Fundos_Acao"

    const-string v1, "MeusFundos"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    iget-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;->z:Ljhw;

    if-eqz v0, :cond_0

    .line 314
    iget-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;->z:Ljhw;

    invoke-virtual {v0}, Ljhw;->a()V

    .line 316
    :cond_0
    iget-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;->L:Landroid/view/MenuItem;

    if-eqz v0, :cond_1

    .line 317
    iget-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;->L:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 320
    :cond_1
    iget-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 321
    iget-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;->d:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 322
    iget-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;->a:Ljix;

    invoke-virtual {v0}, Ljix;->a()V

    .line 323
    return-void
.end method

.method private h()Ljie;
    .locals 1

    .prologue
    .line 373
    new-instance v0, Ljhj;

    invoke-direct {v0, p0}, Ljhj;-><init>(Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;)V

    return-object v0
.end method

.method public static synthetic h(Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;)Z
    .locals 1

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;->M:Z

    return v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 203
    const v0, 0x7f09078a

    invoke-virtual {p0, v0}, Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;->a(Ljava/lang/String;)V

    .line 204
    iget-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;->I:Landroid/app/Dialog;

    const v1, 0x7f1003fe

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 205
    iget-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;->I:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 206
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 215
    iget-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;->J:Landroid/widget/TextView;

    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 216
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 339
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 340
    iget-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;->x:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 341
    iget-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;->w:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 342
    iget-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;->O:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 343
    iget-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;->P:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 344
    iget-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;->y:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 347
    :goto_0
    return-void

    .line 346
    :cond_0
    iget-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;->y:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public a(Ljdm;Ljem;)V
    .locals 3

    .prologue
    .line 327
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljdm;->d()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 328
    invoke-virtual {p1}, Ljdm;->d()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->copy(Ljava/util/List;Ljava/util/List;)V

    .line 330
    new-instance v1, Ljhw;

    invoke-direct {p0}, Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;->h()Ljie;

    move-result-object v2

    invoke-direct {v1, p0, v0, v2, p2}, Ljhw;-><init>(Landroid/content/Context;Ljava/util/List;Ljie;Ljem;)V

    iput-object v1, p0, Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;->z:Ljhw;

    .line 331
    iget-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;->f:Landroid/widget/ExpandableListView;

    iget-object v1, p0, Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;->z:Ljhw;

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 332
    iget-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;->f:Landroid/widget/ExpandableListView;

    invoke-direct {p0, v0}, Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;->a(Landroid/widget/ExpandableListView;)V

    .line 333
    iget-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;->N:Landroid/widget/ScrollView;

    const/4 v1, 0x5

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/widget/ScrollView;->scrollTo(II)V

    .line 334
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;->B:Ljdw;

    .line 335
    return-void
.end method

.method public a(Ljdq;)V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 352
    invoke-virtual {p1}, Ljdq;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 353
    iget-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;->E:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 354
    iget-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;->H:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 355
    iget-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;->E:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 356
    iget-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;->F:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 357
    iget-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;->G:Landroid/widget/TextView;

    const-string v1, "Recusado"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 370
    :goto_0
    return-void

    .line 359
    :cond_0
    invoke-virtual {p1}, Ljdq;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 360
    iget-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;->E:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 361
    iget-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;->H:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 362
    iget-object v1, p0, Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;->G:Landroid/widget/TextView;

    invoke-virtual {p1}, Ljdq;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljdq;->c()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    const-string v0, ""

    goto :goto_1

    .line 364
    :cond_2
    iget-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;->E:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 365
    iget-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;->H:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 366
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;->M:Z

    goto :goto_0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 209
    const-string v0, "Para novas contrata\u00e7\u00f5es fale agora com nossa assessoria especializada. <br/>Escolha sua op\u00e7\u00e3o:"

    invoke-virtual {p0, v0}, Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;->a(Ljava/lang/String;)V

    .line 210
    iget-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;->I:Landroid/app/Dialog;

    const v1, 0x7f1003fe

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 211
    iget-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;->I:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 212
    return-void
.end method

.method public c()V
    .locals 3

    .prologue
    .line 419
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 420
    const-string v1, "tipo"

    sget-object v2, Lnat;->USUARIO_CONSULTIVO:Lnat;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 421
    invoke-virtual {p0, v0}, Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;->startActivity(Landroid/content/Intent;)V

    .line 422
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 451
    invoke-static {p0}, Lgpu;->b(Landroid/app/Activity;)V

    .line 452
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 453
    const-string v0, "filtro"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 454
    const-string v0, "filtro"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljdw;

    iput-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;->B:Ljdw;

    .line 455
    iget-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;->b:Lcom/santander/app/components/view/buttontabhost/ButtonTabHost;

    invoke-virtual {v0}, Lcom/santander/app/components/view/buttontabhost/ButtonTabHost;->setSelectedButtonTab2()V

    .line 456
    iget-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;->B:Ljdw;

    invoke-virtual {v0}, Ljdw;->c()Ljdv;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;->a(Ljdv;)V

    .line 463
    :cond_0
    :goto_0
    return-void

    .line 458
    :cond_1
    iget-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;->b:Lcom/santander/app/components/view/buttontabhost/ButtonTabHost;

    invoke-virtual {v0}, Lcom/santander/app/components/view/buttontabhost/ButtonTabHost;->setSelectedButtonTab2()V

    .line 459
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;->a(Ljdv;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 96
    invoke-super {p0, p1}, Lgrs;->onCreate(Landroid/os/Bundle;)V

    .line 98
    const v0, 0x7f040080

    invoke-virtual {p0, v0}, Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;->setContentView(I)V

    .line 100
    invoke-virtual {p0}, Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;->D:Landroid/content/Intent;

    .line 102
    invoke-virtual {p0}, Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 103
    if-eqz v0, :cond_0

    .line 104
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 105
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 106
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 107
    invoke-virtual {p0}, Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090685

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lgpu;->a(Landroid/app/Activity;Landroid/support/v7/app/ActionBar;Ljava/lang/String;)V

    .line 110
    :cond_0
    new-instance v0, Ljix;

    invoke-direct {v0, p0}, Ljix;-><init>(Ljhk;)V

    iput-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;->a:Ljix;

    .line 111
    invoke-direct {p0}, Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;->f()V

    .line 113
    invoke-direct {p0}, Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;->d()V

    .line 115
    iget-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;->b:Lcom/santander/app/components/view/buttontabhost/ButtonTabHost;

    new-instance v1, Ljhb;

    invoke-direct {v1, p0}, Ljhb;-><init>(Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;)V

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/buttontabhost/ButtonTabHost;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 175
    invoke-virtual {p0}, Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 176
    const v1, 0x7f12000a

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 178
    invoke-interface {p1, v2}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;->L:Landroid/view/MenuItem;

    .line 179
    iget-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;->L:Landroid/view/MenuItem;

    const v1, 0x7f02019c

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 180
    iget-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;->L:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 182
    invoke-super {p0, p1}, Lgrs;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 188
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 199
    :goto_0
    return v3

    .line 190
    :pswitch_0
    const-string v0, "Investimentos_Fundos_Acao"

    const-string v1, "Filtrar"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;->g:Landroid/app/Activity;

    const-class v2, Lcom/santander/app/investimentos/fundos/presentation/FiltroFundosActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;->D:Landroid/content/Intent;

    .line 193
    iget-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;->D:Landroid/content/Intent;

    invoke-virtual {p0, v0, v3}, Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 188
    nop

    :pswitch_data_0
    .packed-switch 0x7f101209
        :pswitch_0
    .end packed-switch
.end method
