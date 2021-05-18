.class public Llbq;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"

# interfaces
.implements Llal;


# static fields
.field private static final a:I = 0x3ea

.field private static final b:Ljava/lang/String; = "SCHEDULING_NUMBER_KEY"


# instance fields
.field private c:Lbr/com/zup/multistatelayout/MultiStateLayout;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/RelativeLayout;

.field private f:Landroid/widget/RelativeLayout;

.field private g:Landroid/widget/ImageButton;

.field private h:Landroid/widget/ImageButton;

.field private i:Landroid/support/v7/widget/RecyclerView;

.field private j:Landroid/widget/LinearLayout;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/TextView;

.field private m:Lcom/santander/app/widget/BottomExapandableView;

.field private n:Lcom/santander/app/seguros/ui/assistance/activities/MyAssistancesActivity;

.field private o:Lkxm;

.field private p:Lkph;

.field private q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lkpo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method private a(Landroid/widget/ImageButton;Landroid/view/View;ILandroid/widget/RelativeLayout;)Landroid/view/View$OnClickListener;
    .locals 6

    .prologue
    .line 180
    new-instance v0, Llbt;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p4

    move v4, p3

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Llbt;-><init>(Llbq;Landroid/view/View;Landroid/widget/RelativeLayout;ILandroid/widget/ImageButton;)V

    return-object v0
.end method

.method static synthetic a(Llbq;)Lbr/com/zup/multistatelayout/MultiStateLayout;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Llbq;->c:Lbr/com/zup/multistatelayout/MultiStateLayout;

    return-object v0
.end method

.method static synthetic a(Llbq;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Llbq;->q:Ljava/util/List;

    return-object p1
.end method

.method public static a(Lkph;)Llbq;
    .locals 4

    .prologue
    .line 73
    new-instance v0, Llbq;

    invoke-direct {v0}, Llbq;-><init>()V

    .line 74
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 75
    const-string v2, "SCHEDULING_NUMBER_KEY"

    invoke-virtual {p0}, Lkph;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    invoke-virtual {v0, v1}, Llbq;->setArguments(Landroid/os/Bundle;)V

    .line 77
    return-object v0
.end method

.method private a(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 109
    const v0, 0x7f10010f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lbr/com/zup/multistatelayout/MultiStateLayout;

    iput-object v0, p0, Llbq;->c:Lbr/com/zup/multistatelayout/MultiStateLayout;

    .line 110
    const v0, 0x7f1009ba

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Llbq;->d:Landroid/widget/TextView;

    .line 111
    const v0, 0x7f1009bb

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Llbq;->e:Landroid/widget/RelativeLayout;

    .line 112
    const v0, 0x7f1009bf

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Llbq;->f:Landroid/widget/RelativeLayout;

    .line 113
    const v0, 0x7f1009bd

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Llbq;->g:Landroid/widget/ImageButton;

    .line 114
    const v0, 0x7f1009c0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Llbq;->h:Landroid/widget/ImageButton;

    .line 115
    const v0, 0x7f1009be

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Llbq;->i:Landroid/support/v7/widget/RecyclerView;

    .line 116
    const v0, 0x7f1009c1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Llbq;->j:Landroid/widget/LinearLayout;

    .line 117
    const v0, 0x7f1009c2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Llbq;->k:Landroid/widget/TextView;

    .line 118
    const v0, 0x7f100737

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Llbq;->l:Landroid/widget/TextView;

    .line 119
    const v0, 0x7f1009c3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/widget/BottomExapandableView;

    iput-object v0, p0, Llbq;->m:Lcom/santander/app/widget/BottomExapandableView;

    .line 120
    return-void
.end method

.method private a(Landroid/view/View;I)V
    .locals 4

    .prologue
    .line 199
    sget-object v0, Landroid/view/View;->ROTATION:Landroid/util/Property;

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    int-to-float v3, p2

    aput v3, v1, v2

    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 200
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 201
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 202
    return-void
.end method

.method private a(Landroid/view/View;II)V
    .locals 4

    .prologue
    .line 205
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    int-to-float v1, p2

    int-to-float v2, p3

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 206
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 207
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 208
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 244
    iget-object v0, p0, Llbq;->p:Lkph;

    invoke-virtual {v0}, Lkph;->i()Lkpm;

    move-result-object v0

    invoke-virtual {v0}, Lkpm;->b()Ljava/lang/String;

    move-result-object v0

    .line 245
    invoke-static {v0, p1}, Llbl;->a(Ljava/lang/String;Ljava/lang/String;)Llbl;

    move-result-object v0

    .line 246
    new-instance v1, Llbx;

    invoke-direct {v1, p0}, Llbx;-><init>(Llbq;)V

    invoke-virtual {v0, v1}, Llbl;->a(Llbo;)V

    .line 252
    iget-object v1, p0, Llbq;->n:Lcom/santander/app/seguros/ui/assistance/activities/MyAssistancesActivity;

    invoke-virtual {v1, v0}, Lcom/santander/app/seguros/ui/assistance/activities/MyAssistancesActivity;->a(Landroid/support/v4/app/Fragment;)V

    .line 253
    return-void
.end method

.method static synthetic a(Llbq;Landroid/view/View;I)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Llbq;->a(Landroid/view/View;I)V

    return-void
.end method

.method static synthetic a(Llbq;Landroid/view/View;II)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3}, Llbq;->a(Landroid/view/View;II)V

    return-void
.end method

.method static synthetic a(Llbq;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0, p1}, Llbq;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Llbq;)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Llbq;->d()V

    return-void
.end method

.method private c()V
    .locals 4

    .prologue
    .line 123
    iget-object v0, p0, Llbq;->c:Lbr/com/zup/multistatelayout/MultiStateLayout;

    sget-object v1, Laor;->LOADING:Laor;

    invoke-virtual {v0, v1}, Lbr/com/zup/multistatelayout/MultiStateLayout;->setState(Laor;)V

    .line 124
    iget-object v0, p0, Llbq;->o:Lkxm;

    iget-object v1, p0, Llbq;->p:Lkph;

    invoke-virtual {v1}, Lkph;->f()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Llbr;

    invoke-direct {v2, p0}, Llbr;-><init>(Llbq;)V

    new-instance v3, Llbs;

    invoke-direct {v3, p0}, Llbs;-><init>(Llbq;)V

    invoke-interface {v0, v1, v2, v3}, Lkxm;->a(Ljava/lang/String;Lkxl;Lkxl;)V

    .line 144
    return-void
.end method

.method static synthetic c(Llbq;)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Llbq;->e()V

    return-void
.end method

.method static synthetic d(Llbq;)Lcom/santander/app/seguros/ui/assistance/activities/MyAssistancesActivity;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Llbq;->n:Lcom/santander/app/seguros/ui/assistance/activities/MyAssistancesActivity;

    return-object v0
.end method

.method private d()V
    .locals 5

    .prologue
    .line 147
    iget-object v0, p0, Llbq;->d:Landroid/widget/TextView;

    iget-object v1, p0, Llbq;->p:Lkph;

    invoke-virtual {v1}, Lkph;->i()Lkpm;

    move-result-object v1

    invoke-virtual {v1}, Lkpm;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    iget-object v0, p0, Llbq;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 150
    iget-object v0, p0, Llbq;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    .line 151
    iget-object v0, p0, Llbq;->q:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkpo;

    .line 152
    iget-object v2, p0, Llbq;->k:Landroid/widget/TextView;

    invoke-virtual {v0}, Lkpo;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    iget-object v2, p0, Llbq;->l:Landroid/widget/TextView;

    invoke-virtual {v0}, Lkpo;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    iget-object v0, p0, Llbq;->q:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 157
    :cond_0
    iget-object v0, p0, Llbq;->i:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Llbq;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 158
    new-instance v0, Llak;

    invoke-virtual {p0}, Llbq;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Llbq;->q:Ljava/util/List;

    iget-object v3, p0, Llbq;->p:Lkph;

    invoke-virtual {v3}, Lkph;->h()Lkpl;

    move-result-object v3

    invoke-virtual {v3}, Lkpl;->b()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Llak;-><init>(Landroid/content/Context;Ljava/util/List;Z)V

    .line 159
    invoke-virtual {v0, p0}, Llak;->a(Llal;)V

    .line 160
    iget-object v1, p0, Llbq;->i:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 162
    invoke-virtual {p0}, Llbq;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0061

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    .line 163
    iget-object v1, p0, Llbq;->g:Landroid/widget/ImageButton;

    iget-object v2, p0, Llbq;->g:Landroid/widget/ImageButton;

    iget-object v3, p0, Llbq;->i:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, p0, Llbq;->e:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v2, v3, v0, v4}, Llbq;->a(Landroid/widget/ImageButton;Landroid/view/View;ILandroid/widget/RelativeLayout;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    invoke-virtual {p0}, Llbq;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0060

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    .line 166
    iget-object v1, p0, Llbq;->h:Landroid/widget/ImageButton;

    iget-object v2, p0, Llbq;->h:Landroid/widget/ImageButton;

    iget-object v3, p0, Llbq;->j:Landroid/widget/LinearLayout;

    iget-object v4, p0, Llbq;->f:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v2, v3, v0, v4}, Llbq;->a(Landroid/widget/ImageButton;Landroid/view/View;ILandroid/widget/RelativeLayout;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    new-instance v0, Lkoh;

    invoke-direct {v0}, Lkoh;-><init>()V

    .line 169
    iget-object v1, p0, Llbq;->p:Lkph;

    invoke-virtual {v1}, Lkph;->i()Lkpm;

    move-result-object v1

    invoke-virtual {v1}, Lkpm;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkoh;->a(Ljava/lang/String;)V

    .line 170
    iget-object v1, p0, Llbq;->p:Lkph;

    invoke-virtual {v1}, Lkph;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkoh;->b(Ljava/lang/String;)V

    .line 171
    iget-object v1, p0, Llbq;->p:Lkph;

    invoke-virtual {v1}, Lkph;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkoh;->c(Ljava/lang/String;)V

    .line 173
    invoke-static {v0}, Llbp;->a(Lkoh;)Llbp;

    move-result-object v1

    .line 174
    iget-object v2, p0, Llbq;->m:Lcom/santander/app/widget/BottomExapandableView;

    invoke-virtual {v2, v1}, Lcom/santander/app/widget/BottomExapandableView;->setContentFragment(Landroid/support/v4/app/Fragment;)V

    .line 175
    iget-object v1, p0, Llbq;->m:Lcom/santander/app/widget/BottomExapandableView;

    invoke-virtual {v0}, Lkoh;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/santander/app/widget/BottomExapandableView;->setTitleText(Ljava/lang/String;)V

    .line 176
    return-void
.end method

.method static synthetic e(Llbq;)Lkph;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Llbq;->p:Lkph;

    return-object v0
.end method

.method private e()V
    .locals 4

    .prologue
    .line 223
    iget-object v0, p0, Llbq;->c:Lbr/com/zup/multistatelayout/MultiStateLayout;

    sget-object v1, Laor;->LOADING:Laor;

    invoke-virtual {v0, v1}, Lbr/com/zup/multistatelayout/MultiStateLayout;->setState(Laor;)V

    .line 224
    iget-object v0, p0, Llbq;->o:Lkxm;

    iget-object v1, p0, Llbq;->p:Lkph;

    invoke-virtual {v1}, Lkph;->f()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Llbv;

    invoke-direct {v2, p0}, Llbv;-><init>(Llbq;)V

    new-instance v3, Llbw;

    invoke-direct {v3, p0}, Llbw;-><init>(Llbq;)V

    invoke-interface {v0, v1, v2, v3}, Lkxm;->b(Ljava/lang/String;Lkxl;Lkxl;)V

    .line 241
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 212
    const v0, 0x7f090a66

    invoke-virtual {p0, v0}, Llbq;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Llay;->a(Ljava/lang/String;)Llay;

    move-result-object v0

    .line 213
    new-instance v1, Llbu;

    invoke-direct {v1, p0}, Llbu;-><init>(Llbq;)V

    invoke-virtual {v0, v1}, Llay;->a(Llbb;)V

    .line 219
    invoke-virtual {p0}, Llbq;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Llay;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 220
    return-void
.end method

.method public b()V
    .locals 3

    .prologue
    .line 257
    const v0, 0x7f090a68

    invoke-virtual {p0, v0}, Llbq;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Llay;->a(Ljava/lang/String;)Llay;

    move-result-object v0

    .line 258
    new-instance v1, Llby;

    invoke-direct {v1, p0}, Llby;-><init>(Llbq;)V

    invoke-virtual {v0, v1}, Llay;->a(Llbb;)V

    .line 267
    invoke-virtual {p0}, Llbq;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Llay;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 268
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 93
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 95
    check-cast p1, Lcom/santander/app/seguros/ui/assistance/activities/MyAssistancesActivity;

    iput-object p1, p0, Llbq;->n:Lcom/santander/app/seguros/ui/assistance/activities/MyAssistancesActivity;

    .line 96
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 82
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 84
    invoke-virtual {p0}, Llbq;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 85
    new-instance v0, Lejm;

    invoke-direct {v0}, Lejm;-><init>()V

    invoke-virtual {p0}, Llbq;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "SCHEDULING_NUMBER_KEY"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lkph;

    invoke-virtual {v0, v1, v2}, Lejm;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkph;

    iput-object v0, p0, Llbq;->p:Lkph;

    .line 88
    :cond_0
    new-instance v0, Lkxn;

    invoke-direct {v0}, Lkxn;-><init>()V

    iput-object v0, p0, Llbq;->o:Lkxm;

    .line 89
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 100
    const v0, 0x7f0401f5

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 102
    invoke-direct {p0, v0}, Llbq;->a(Landroid/view/View;)V

    .line 103
    invoke-direct {p0}, Llbq;->c()V

    .line 105
    return-object v0
.end method
