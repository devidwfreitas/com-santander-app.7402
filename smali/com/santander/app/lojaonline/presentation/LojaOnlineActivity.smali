.class public Lcom/santander/app/lojaonline/presentation/LojaOnlineActivity;
.super Lgrs;
.source "SourceFile"

# interfaces
.implements Ljnv;
.implements Ljnz;


# static fields
.field private static final a:Ljava/lang/String; = "LojaOnlineActivity"


# instance fields
.field private A:Landroid/view/View$OnClickListener;

.field private b:Landroid/view/View;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/support/v7/widget/RecyclerView;

.field private e:Landroid/widget/LinearLayout;

.field private f:Landroid/support/v7/widget/RecyclerView;

.field private g:Landroid/widget/TextView;

.field private w:Landroid/support/v4/widget/NestedScrollView;

.field private x:Ljoa;

.field private y:Landroid/app/Dialog;

.field private z:Landroid/support/v7/widget/RecyclerView$OnScrollListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Lgrs;-><init>()V

    .line 166
    new-instance v0, Ljnq;

    invoke-direct {v0, p0}, Ljnq;-><init>(Lcom/santander/app/lojaonline/presentation/LojaOnlineActivity;)V

    iput-object v0, p0, Lcom/santander/app/lojaonline/presentation/LojaOnlineActivity;->z:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    .line 216
    new-instance v0, Ljnr;

    invoke-direct {v0, p0}, Ljnr;-><init>(Lcom/santander/app/lojaonline/presentation/LojaOnlineActivity;)V

    iput-object v0, p0, Lcom/santander/app/lojaonline/presentation/LojaOnlineActivity;->A:Landroid/view/View$OnClickListener;

    return-void
.end method

.method private a(ILcom/santander/app/lojaonline/domain/LojaCampaign$Campaign;)Landroid/app/Dialog;
    .locals 3
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 250
    .line 251
    new-instance v0, Ljns;

    invoke-direct {v0, p0, p2, p0}, Ljns;-><init>(Lcom/santander/app/lojaonline/presentation/LojaOnlineActivity;Lcom/santander/app/lojaonline/domain/LojaCampaign$Campaign;Landroid/content/Context;)V

    .line 262
    new-instance v1, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0903b7

    .line 263
    invoke-virtual {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    .line 264
    invoke-virtual {v1, p1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f090072

    .line 265
    invoke-virtual {v1, v2, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f090208

    .line 266
    invoke-virtual {v1, v2, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 267
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 268
    new-instance v1, Ljnt;

    invoke-direct {v1, p0, p0}, Ljnt;-><init>(Lcom/santander/app/lojaonline/presentation/LojaOnlineActivity;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 277
    return-object v0
.end method

.method public static synthetic a(Lcom/santander/app/lojaonline/presentation/LojaOnlineActivity;I)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/santander/app/lojaonline/presentation/LojaOnlineActivity;->e(I)V

    return-void
.end method

.method private d(I)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 183
    iget-object v0, p0, Lcom/santander/app/lojaonline/presentation/LojaOnlineActivity;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    move v0, v1

    .line 184
    :goto_0
    if-ge v0, p1, :cond_0

    .line 185
    new-instance v2, Lcom/santander/app/lojaonline/presentation/DotView;

    invoke-direct {v2, p0}, Lcom/santander/app/lojaonline/presentation/DotView;-><init>(Landroid/content/Context;)V

    .line 186
    iget-object v3, p0, Lcom/santander/app/lojaonline/presentation/LojaOnlineActivity;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 184
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 188
    :cond_0
    invoke-direct {p0, v1}, Lcom/santander/app/lojaonline/presentation/LojaOnlineActivity;->e(I)V

    .line 189
    return-void
.end method

.method private e(I)V
    .locals 2

    .prologue
    .line 192
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/santander/app/lojaonline/presentation/LojaOnlineActivity;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 193
    iget-object v0, p0, Lcom/santander/app/lojaonline/presentation/LojaOnlineActivity;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/lojaonline/presentation/DotView;

    .line 194
    if-ne v1, p1, :cond_0

    .line 195
    invoke-virtual {v0}, Lcom/santander/app/lojaonline/presentation/DotView;->a()V

    .line 192
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 197
    :cond_0
    invoke-virtual {v0}, Lcom/santander/app/lojaonline/presentation/DotView;->b()V

    goto :goto_1

    .line 200
    :cond_1
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/santander/app/lojaonline/presentation/LojaOnlineActivity;->b()V

    .line 97
    invoke-static {p0}, Lmxn;->b(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/lojaonline/presentation/LojaOnlineActivity;->y:Landroid/app/Dialog;

    .line 98
    return-void
.end method

.method public a(I)V
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/santander/app/lojaonline/presentation/LojaOnlineActivity;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 122
    return-void
.end method

.method public a(Landroid/net/Uri;)V
    .locals 1

    .prologue
    .line 227
    invoke-static {}, Lhbr;->a()Lhbr;

    move-result-object v0

    .line 228
    invoke-virtual {v0, p0, p1}, Lhbr;->a(Landroid/content/Context;Landroid/net/Uri;)V

    .line 229
    return-void
.end method

.method public a(Lcom/santander/app/lojaonline/domain/LojaCampaign$Campaign;)V
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/santander/app/lojaonline/presentation/LojaOnlineActivity;->x:Ljoa;

    invoke-interface {v0, p1}, Ljoa;->a(Lcom/santander/app/lojaonline/domain/LojaCampaign$Campaign;)V

    .line 214
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/santander/app/lojaonline/presentation/LojaOnlineActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 111
    invoke-static {v0, p1}, Lgpu;->b(Landroid/support/v7/app/ActionBar;Ljava/lang/String;)V

    .line 112
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/santander/app/lojaonline/domain/LojaCampaign$Campaign;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 151
    new-instance v0, Ljnw;

    invoke-direct {v0, p1, v4}, Ljnw;-><init>(Ljava/util/List;Z)V

    .line 152
    invoke-virtual {v0, p0}, Ljnw;->a(Ljnz;)V

    .line 153
    iget-object v1, p0, Lcom/santander/app/lojaonline/presentation/LojaOnlineActivity;->d:Landroid/support/v7/widget/RecyclerView;

    new-instance v2, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v2, p0, v3, v3}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 155
    iget-object v1, p0, Lcom/santander/app/lojaonline/presentation/LojaOnlineActivity;->d:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v4}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 156
    iget-object v1, p0, Lcom/santander/app/lojaonline/presentation/LojaOnlineActivity;->d:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 158
    new-instance v1, Landroid/support/v7/widget/PagerSnapHelper;

    invoke-direct {v1}, Landroid/support/v7/widget/PagerSnapHelper;-><init>()V

    .line 159
    iget-object v2, p0, Lcom/santander/app/lojaonline/presentation/LojaOnlineActivity;->d:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/PagerSnapHelper;->attachToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 161
    iget-object v1, p0, Lcom/santander/app/lojaonline/presentation/LojaOnlineActivity;->d:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, p0, Lcom/santander/app/lojaonline/presentation/LojaOnlineActivity;->z:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 163
    invoke-virtual {v0}, Ljnw;->getItemCount()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/santander/app/lojaonline/presentation/LojaOnlineActivity;->d(I)V

    .line 164
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/santander/app/lojaonline/presentation/LojaOnlineActivity;->y:Landroid/app/Dialog;

    if-nez v0, :cond_0

    .line 106
    :goto_0
    return-void

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/santander/app/lojaonline/presentation/LojaOnlineActivity;->y:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 105
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/santander/app/lojaonline/presentation/LojaOnlineActivity;->y:Landroid/app/Dialog;

    goto :goto_0
.end method

.method public b(I)V
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/santander/app/lojaonline/presentation/LojaOnlineActivity;->b:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 127
    return-void
.end method

.method public b(Lcom/santander/app/lojaonline/domain/LojaCampaign$Campaign;)V
    .locals 1

    .prologue
    .line 233
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    invoke-virtual {v0}, Lmiq;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f090134

    .line 236
    :goto_0
    invoke-direct {p0, v0, p1}, Lcom/santander/app/lojaonline/presentation/LojaOnlineActivity;->a(ILcom/santander/app/lojaonline/domain/LojaCampaign$Campaign;)Landroid/app/Dialog;

    move-result-object v0

    .line 237
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 238
    return-void

    .line 233
    :cond_0
    const v0, 0x7f090133

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/santander/app/lojaonline/presentation/LojaOnlineActivity;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    return-void
.end method

.method public b(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/santander/app/lojaonline/domain/LojaCampaign$Campaign;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 204
    new-instance v0, Ljnw;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Ljnw;-><init>(Ljava/util/List;Z)V

    .line 205
    invoke-virtual {v0, p0}, Ljnw;->a(Ljnz;)V

    .line 206
    iget-object v1, p0, Lcom/santander/app/lojaonline/presentation/LojaOnlineActivity;->f:Landroid/support/v7/widget/RecyclerView;

    new-instance v2, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v2, p0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 207
    iget-object v1, p0, Lcom/santander/app/lojaonline/presentation/LojaOnlineActivity;->f:Landroid/support/v7/widget/RecyclerView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 208
    iget-object v1, p0, Lcom/santander/app/lojaonline/presentation/LojaOnlineActivity;->f:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 209
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/santander/app/lojaonline/presentation/LojaOnlineActivity;->d:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 132
    return-void
.end method

.method public c(Lcom/santander/app/lojaonline/domain/LojaCampaign$Campaign;)V
    .locals 1

    .prologue
    .line 242
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    invoke-virtual {v0}, Lmiq;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f090139

    .line 245
    :goto_0
    invoke-direct {p0, v0, p1}, Lcom/santander/app/lojaonline/presentation/LojaOnlineActivity;->a(ILcom/santander/app/lojaonline/domain/LojaCampaign$Campaign;)Landroid/app/Dialog;

    move-result-object v0

    .line 246
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 247
    return-void

    .line 242
    :cond_0
    const v0, 0x7f090138

    goto :goto_0
.end method

.method public d()V
    .locals 2

    .prologue
    .line 136
    iget-object v0, p0, Lcom/santander/app/lojaonline/presentation/LojaOnlineActivity;->d:Landroid/support/v7/widget/RecyclerView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 137
    return-void
.end method

.method public e()V
    .locals 2

    .prologue
    .line 141
    iget-object v0, p0, Lcom/santander/app/lojaonline/presentation/LojaOnlineActivity;->f:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 142
    return-void
.end method

.method public f()V
    .locals 2

    .prologue
    .line 146
    iget-object v0, p0, Lcom/santander/app/lojaonline/presentation/LojaOnlineActivity;->f:Landroid/support/v7/widget/RecyclerView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 147
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 64
    invoke-super {p0, p1}, Lgrs;->onCreate(Landroid/os/Bundle;)V

    .line 65
    const v0, 0x7f040084

    invoke-virtual {p0, v0}, Lcom/santander/app/lojaonline/presentation/LojaOnlineActivity;->setContentView(I)V

    .line 67
    const v0, 0x7f10036e

    invoke-virtual {p0, v0}, Lcom/santander/app/lojaonline/presentation/LojaOnlineActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/NestedScrollView;

    iput-object v0, p0, Lcom/santander/app/lojaonline/presentation/LojaOnlineActivity;->w:Landroid/support/v4/widget/NestedScrollView;

    .line 68
    const v0, 0x7f10036f

    invoke-virtual {p0, v0}, Lcom/santander/app/lojaonline/presentation/LojaOnlineActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/lojaonline/presentation/LojaOnlineActivity;->b:Landroid/view/View;

    .line 69
    const v0, 0x7f100370

    invoke-virtual {p0, v0}, Lcom/santander/app/lojaonline/presentation/LojaOnlineActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/lojaonline/presentation/LojaOnlineActivity;->c:Landroid/widget/TextView;

    .line 70
    const v0, 0x7f100371

    invoke-virtual {p0, v0}, Lcom/santander/app/lojaonline/presentation/LojaOnlineActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/santander/app/lojaonline/presentation/LojaOnlineActivity;->d:Landroid/support/v7/widget/RecyclerView;

    .line 71
    const v0, 0x7f100372

    invoke-virtual {p0, v0}, Lcom/santander/app/lojaonline/presentation/LojaOnlineActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/santander/app/lojaonline/presentation/LojaOnlineActivity;->e:Landroid/widget/LinearLayout;

    .line 72
    const v0, 0x7f100373

    invoke-virtual {p0, v0}, Lcom/santander/app/lojaonline/presentation/LojaOnlineActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/santander/app/lojaonline/presentation/LojaOnlineActivity;->f:Landroid/support/v7/widget/RecyclerView;

    .line 73
    const v0, 0x7f100375

    invoke-virtual {p0, v0}, Lcom/santander/app/lojaonline/presentation/LojaOnlineActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/lojaonline/presentation/LojaOnlineActivity;->g:Landroid/widget/TextView;

    .line 74
    const v0, 0x7f100374

    invoke-virtual {p0, v0}, Lcom/santander/app/lojaonline/presentation/LojaOnlineActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/santander/app/lojaonline/presentation/LojaOnlineActivity;->A:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    iget-object v0, p0, Lcom/santander/app/lojaonline/presentation/LojaOnlineActivity;->w:Landroid/support/v4/widget/NestedScrollView;

    invoke-virtual {v0, v2, v2}, Landroid/support/v4/widget/NestedScrollView;->scrollTo(II)V

    .line 77
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/santander/app/lojaonline/presentation/LojaOnlineActivity;->c(Ljava/lang/String;)V

    .line 79
    invoke-direct {p0, v2}, Lcom/santander/app/lojaonline/presentation/LojaOnlineActivity;->d(I)V

    .line 81
    new-instance v0, Lbfj;

    iget-object v1, p0, Lcom/santander/app/lojaonline/presentation/LojaOnlineActivity;->g:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    new-instance v2, Landroid/text/style/UnderlineSpan;

    invoke-direct {v2}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-direct {v0, v1, v2}, Lbfj;-><init>(Ljava/lang/CharSequence;Ljava/lang/Object;)V

    .line 82
    iget-object v1, p0, Lcom/santander/app/lojaonline/presentation/LojaOnlineActivity;->g:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    new-instance v0, Ljob;

    invoke-direct {v0, p0}, Ljob;-><init>(Ljnv;)V

    iput-object v0, p0, Lcom/santander/app/lojaonline/presentation/LojaOnlineActivity;->x:Ljoa;

    .line 85
    iget-object v0, p0, Lcom/santander/app/lojaonline/presentation/LojaOnlineActivity;->x:Ljoa;

    invoke-interface {v0}, Ljoa;->a()V

    .line 86
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 90
    invoke-super {p0}, Lgrs;->onDestroy()V

    .line 91
    iget-object v0, p0, Lcom/santander/app/lojaonline/presentation/LojaOnlineActivity;->x:Ljoa;

    invoke-interface {v0}, Ljoa;->b()V

    .line 92
    return-void
.end method
