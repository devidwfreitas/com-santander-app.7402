.class public Lcom/santander/app/pagamentos/titulos/presentation/ConfirmarPagamentoActivity;
.super Lgrs;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Ljuk;
.implements Lnau;


# instance fields
.field private a:Ljsr;

.field private b:Lcom/santander/app/components/view/SantanderButtonView;

.field private c:Lcom/santander/app/components/view/SantanderTextView;

.field private d:Lcom/santander/app/components/view/SantanderTextView;

.field private e:Ljvx;

.field private final f:I

.field private g:Landroid/widget/LinearLayout;

.field private w:Landroid/widget/LinearLayout;

.field private x:Landroid/widget/ExpandableListView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Lgrs;-><init>()V

    .line 53
    const/4 v0, 0x1

    iput v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/ConfirmarPagamentoActivity;->f:I

    return-void
.end method

.method public static synthetic a(Lcom/santander/app/pagamentos/titulos/presentation/ConfirmarPagamentoActivity;)Landroid/widget/ExpandableListView;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/ConfirmarPagamentoActivity;->x:Landroid/widget/ExpandableListView;

    return-object v0
.end method

.method private a()V
    .locals 3

    .prologue
    const v1, 0x7f100ce2

    const/16 v2, 0x8

    .line 81
    const v0, 0x7f100ce4

    invoke-virtual {p0, v0}, Lcom/santander/app/pagamentos/titulos/presentation/ConfirmarPagamentoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/ConfirmarPagamentoActivity;->w:Landroid/widget/LinearLayout;

    .line 84
    iget-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/ConfirmarPagamentoActivity;->a:Ljsr;

    invoke-virtual {v0}, Ljsr;->d()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 85
    invoke-virtual {p0, v1}, Lcom/santander/app/pagamentos/titulos/presentation/ConfirmarPagamentoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 90
    :goto_0
    const v0, 0x7f100cde

    invoke-virtual {p0, v0}, Lcom/santander/app/pagamentos/titulos/presentation/ConfirmarPagamentoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/ConfirmarPagamentoActivity;->g:Landroid/widget/LinearLayout;

    .line 91
    iget-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/ConfirmarPagamentoActivity;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 93
    const v0, 0x7f100ce3

    invoke-virtual {p0, v0}, Lcom/santander/app/pagamentos/titulos/presentation/ConfirmarPagamentoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/SantanderTextView;

    iput-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/ConfirmarPagamentoActivity;->d:Lcom/santander/app/components/view/SantanderTextView;

    .line 94
    iget-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/ConfirmarPagamentoActivity;->d:Lcom/santander/app/components/view/SantanderTextView;

    invoke-virtual {v0}, Lcom/santander/app/components/view/SantanderTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 95
    const-string v1, "R$-"

    iget-object v2, p0, Lcom/santander/app/pagamentos/titulos/presentation/ConfirmarPagamentoActivity;->a:Ljsr;

    invoke-virtual {v2}, Ljsr;->j()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnaj;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 96
    iget-object v1, p0, Lcom/santander/app/pagamentos/titulos/presentation/ConfirmarPagamentoActivity;->d:Lcom/santander/app/components/view/SantanderTextView;

    invoke-virtual {v1, v0}, Lcom/santander/app/components/view/SantanderTextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    const v0, 0x7f100ce1

    invoke-virtual {p0, v0}, Lcom/santander/app/pagamentos/titulos/presentation/ConfirmarPagamentoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/SantanderTextView;

    iput-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/ConfirmarPagamentoActivity;->c:Lcom/santander/app/components/view/SantanderTextView;

    .line 99
    iget-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/ConfirmarPagamentoActivity;->c:Lcom/santander/app/components/view/SantanderTextView;

    iget-object v1, p0, Lcom/santander/app/pagamentos/titulos/presentation/ConfirmarPagamentoActivity;->a:Ljsr;

    invoke-virtual {v1}, Ljsr;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/SantanderTextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    const v0, 0x7f100cdf

    invoke-virtual {p0, v0}, Lcom/santander/app/pagamentos/titulos/presentation/ConfirmarPagamentoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/SantanderButtonView;

    iput-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/ConfirmarPagamentoActivity;->b:Lcom/santander/app/components/view/SantanderButtonView;

    .line 102
    iget-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/ConfirmarPagamentoActivity;->b:Lcom/santander/app/components/view/SantanderButtonView;

    invoke-virtual {v0, p0}, Lcom/santander/app/components/view/SantanderButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    const v0, 0x7f100ce5

    invoke-virtual {p0, v0}, Lcom/santander/app/pagamentos/titulos/presentation/ConfirmarPagamentoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ExpandableListView;

    iput-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/ConfirmarPagamentoActivity;->x:Landroid/widget/ExpandableListView;

    .line 105
    return-void

    .line 87
    :cond_0
    invoke-virtual {p0, v1}, Lcom/santander/app/pagamentos/titulos/presentation/ConfirmarPagamentoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private a(Landroid/widget/ExpandableListView;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 195
    invoke-virtual {p1}, Landroid/widget/ExpandableListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    move v0, v1

    move v2, v1

    .line 198
    :goto_0
    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 199
    const/4 v4, 0x0

    invoke-interface {v3, v0, v4, p1}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 200
    invoke-virtual {v4, v1, v1}, Landroid/view/View;->measure(II)V

    .line 201
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v2, v4

    .line 202
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "i  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 198
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 205
    :cond_0
    invoke-virtual {p1}, Landroid/widget/ExpandableListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 207
    invoke-virtual {p1}, Landroid/widget/ExpandableListView;->getDividerHeight()I

    move-result v1

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    mul-int/2addr v1, v3

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 208
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "params.height =  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 210
    invoke-virtual {p1, v0}, Landroid/widget/ExpandableListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 211
    invoke-virtual {p1}, Landroid/widget/ExpandableListView;->requestLayout()V

    .line 212
    return-void
.end method

.method private a(Landroid/widget/ExpandableListView;I)V
    .locals 11

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 216
    .line 217
    invoke-virtual {p1}, Landroid/widget/ExpandableListView;->getExpandableListAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v0

    .line 219
    invoke-virtual {p1}, Landroid/widget/ExpandableListView;->getWidth()I

    move-result v1

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    move v1, v3

    move v2, v3

    .line 221
    :goto_0
    invoke-interface {v0}, Landroid/widget/ExpandableListAdapter;->getGroupCount()I

    move-result v5

    if-ge v1, v5, :cond_4

    .line 222
    invoke-interface {v0, v1, v3, v4, p1}, Landroid/widget/ExpandableListAdapter;->getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 224
    invoke-virtual {v5, v7, v3}, Landroid/view/View;->measure(II)V

    .line 226
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v2, v5

    .line 228
    invoke-virtual {p1, v1}, Landroid/widget/ExpandableListView;->isGroupExpanded(I)Z

    move-result v5

    if-eqz v5, :cond_0

    if-eq v1, p2, :cond_1

    .line 229
    :cond_0
    invoke-virtual {p1, v1}, Landroid/widget/ExpandableListView;->isGroupExpanded(I)Z

    move-result v5

    if-nez v5, :cond_3

    if-ne v1, p2, :cond_3

    :cond_1
    move v6, v2

    move v2, v3

    .line 231
    :goto_1
    invoke-interface {v0, v1}, Landroid/widget/ExpandableListAdapter;->getChildrenCount(I)I

    move-result v5

    if-ge v2, v5, :cond_2

    move-object v5, p1

    .line 233
    invoke-interface/range {v0 .. v5}, Landroid/widget/ExpandableListAdapter;->getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 236
    const-string v8, "Count"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0, v1}, Landroid/widget/ExpandableListAdapter;->getChildrenCount(I)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    new-instance v8, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v8, v7, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 243
    invoke-virtual {v5, v3, v3}, Landroid/view/View;->measure(II)V

    .line 244
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v5, v6

    .line 246
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "totalHeight"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 231
    add-int/lit8 v2, v2, 0x1

    move v6, v5

    goto :goto_1

    :cond_2
    move v2, v6

    .line 221
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 251
    :cond_4
    invoke-virtual {p1}, Landroid/widget/ExpandableListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 253
    invoke-virtual {p1}, Landroid/widget/ExpandableListView;->getDividerHeight()I

    move-result v3

    .line 254
    invoke-interface {v0}, Landroid/widget/ExpandableListAdapter;->getGroupCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    mul-int/2addr v0, v3

    add-int/2addr v0, v2

    .line 256
    const/16 v2, 0xa

    if-ge v0, v2, :cond_5

    .line 257
    const/16 v0, 0x64

    .line 259
    :cond_5
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 260
    invoke-virtual {p1, v1}, Landroid/widget/ExpandableListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 261
    invoke-virtual {p1}, Landroid/widget/ExpandableListView;->requestLayout()V

    .line 263
    return-void
.end method

.method public static synthetic a(Lcom/santander/app/pagamentos/titulos/presentation/ConfirmarPagamentoActivity;Landroid/widget/ExpandableListView;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/santander/app/pagamentos/titulos/presentation/ConfirmarPagamentoActivity;->a(Landroid/widget/ExpandableListView;)V

    return-void
.end method

.method public static synthetic a(Lcom/santander/app/pagamentos/titulos/presentation/ConfirmarPagamentoActivity;Landroid/widget/ExpandableListView;I)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lcom/santander/app/pagamentos/titulos/presentation/ConfirmarPagamentoActivity;->a(Landroid/widget/ExpandableListView;I)V

    return-void
.end method

.method private b()V
    .locals 4

    .prologue
    const v3, 0x7f100cde

    .line 109
    invoke-virtual {p0}, Lcom/santander/app/pagamentos/titulos/presentation/ConfirmarPagamentoActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 110
    invoke-virtual {v0, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 112
    if-nez v1, :cond_0

    .line 113
    new-instance v1, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;

    invoke-direct {v1}, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;-><init>()V

    .line 114
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;->b(I)V

    .line 115
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 116
    invoke-virtual {v0, v3, v1}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 117
    const/16 v1, 0x1001

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->setTransition(I)Landroid/support/v4/app/FragmentTransaction;

    .line 118
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/ConfirmarPagamentoActivity;->g:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 122
    iget-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/ConfirmarPagamentoActivity;->w:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 123
    return-void
.end method


# virtual methods
.method public a(IZ)V
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/ConfirmarPagamentoActivity;->e:Ljvx;

    invoke-interface {v0}, Ljvx;->b()V

    .line 155
    return-void
.end method

.method public a(Landroid/widget/LinearLayout;)V
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/ConfirmarPagamentoActivity;->w:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 167
    return-void
.end method

.method public a(Lgvb;)V
    .locals 2

    .prologue
    .line 159
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 160
    const-string v1, "comprovanteBase"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 161
    invoke-virtual {p0, v0}, Lcom/santander/app/pagamentos/titulos/presentation/ConfirmarPagamentoActivity;->startActivity(Landroid/content/Intent;)V

    .line 162
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljst;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 171
    iget-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/ConfirmarPagamentoActivity;->x:Landroid/widget/ExpandableListView;

    new-instance v1, Ljvm;

    invoke-direct {v1, p0, p1}, Ljvm;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 172
    iget-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/ConfirmarPagamentoActivity;->x:Landroid/widget/ExpandableListView;

    invoke-direct {p0, v0}, Lcom/santander/app/pagamentos/titulos/presentation/ConfirmarPagamentoActivity;->a(Landroid/widget/ExpandableListView;)V

    .line 174
    iget-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/ConfirmarPagamentoActivity;->x:Landroid/widget/ExpandableListView;

    new-instance v1, Ljuh;

    invoke-direct {v1, p0}, Ljuh;-><init>(Lcom/santander/app/pagamentos/titulos/presentation/ConfirmarPagamentoActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setOnGroupExpandListener(Landroid/widget/ExpandableListView$OnGroupExpandListener;)V

    .line 186
    iget-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/ConfirmarPagamentoActivity;->x:Landroid/widget/ExpandableListView;

    new-instance v1, Ljui;

    invoke-direct {v1, p0}, Ljui;-><init>(Lcom/santander/app/pagamentos/titulos/presentation/ConfirmarPagamentoActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setOnGroupCollapseListener(Landroid/widget/ExpandableListView$OnGroupCollapseListener;)V

    .line 192
    return-void
.end method

.method public finish()V
    .locals 2

    .prologue
    .line 267
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/santander/app/pagamentos/titulos/presentation/ConfirmarPagamentoActivity;->startActivity(Landroid/content/Intent;)V

    .line 268
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 143
    iget-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/ConfirmarPagamentoActivity;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/ConfirmarPagamentoActivity;->g:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 145
    iget-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/ConfirmarPagamentoActivity;->w:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 150
    :goto_0
    return-void

    .line 147
    :cond_0
    invoke-super {p0}, Lgrs;->onBackPressed()V

    .line 148
    invoke-virtual {p0}, Lcom/santander/app/pagamentos/titulos/presentation/ConfirmarPagamentoActivity;->finish()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 128
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 139
    :goto_0
    return-void

    .line 130
    :pswitch_0
    const-string v0, "Pagamentos_Pagamento_Confirmacao_Acao"

    const-string v1, "Continuar"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    invoke-virtual {v0}, Lmiq;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    invoke-virtual {v0}, Lmiq;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->C()Lipi;

    move-result-object v0

    const-string v1, "00000121"

    invoke-interface {v0, v1}, Lipi;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 133
    :cond_0
    invoke-direct {p0}, Lcom/santander/app/pagamentos/titulos/presentation/ConfirmarPagamentoActivity;->b()V

    goto :goto_0

    .line 135
    :cond_1
    invoke-virtual {p0, v2, v2}, Lcom/santander/app/pagamentos/titulos/presentation/ConfirmarPagamentoActivity;->a(IZ)V

    goto :goto_0

    .line 128
    :pswitch_data_0
    .packed-switch 0x7f100cdf
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 59
    invoke-super {p0, p1}, Lgrs;->onCreate(Landroid/os/Bundle;)V

    .line 61
    invoke-virtual {p0}, Lcom/santander/app/pagamentos/titulos/presentation/ConfirmarPagamentoActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 62
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 63
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 64
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 65
    const v1, 0x7f090a8c

    invoke-virtual {p0, v1}, Lcom/santander/app/pagamentos/titulos/presentation/ConfirmarPagamentoActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lgpu;->a(Landroid/app/Activity;Landroid/support/v7/app/ActionBar;Ljava/lang/String;)V

    .line 67
    const v0, 0x7f040093

    invoke-virtual {p0, v0}, Lcom/santander/app/pagamentos/titulos/presentation/ConfirmarPagamentoActivity;->setContentView(I)V

    .line 70
    invoke-virtual {p0}, Lcom/santander/app/pagamentos/titulos/presentation/ConfirmarPagamentoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 72
    const-string v1, "Titulos"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljsr;

    iput-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/ConfirmarPagamentoActivity;->a:Ljsr;

    .line 74
    invoke-direct {p0}, Lcom/santander/app/pagamentos/titulos/presentation/ConfirmarPagamentoActivity;->a()V

    .line 76
    new-instance v0, Ljvy;

    iget-object v1, p0, Lcom/santander/app/pagamentos/titulos/presentation/ConfirmarPagamentoActivity;->a:Ljsr;

    invoke-direct {v0, v1, p0}, Ljvy;-><init>(Ljsr;Ljuk;)V

    iput-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/ConfirmarPagamentoActivity;->e:Ljvx;

    .line 77
    return-void
.end method
