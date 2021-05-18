.class public Llzi;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"

# interfaces
.implements Lltl;


# static fields
.field private static final a:Ljava/lang/String; = "response-key"


# instance fields
.field private b:Z

.field private c:Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;

.field private d:Lkvb;

.field private e:Lcom/santander/app/seguros/utils/SmoothScrollerLinearLayoutManager;

.field private f:Llth;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/support/v7/widget/RecyclerView;

.field private i:Landroid/view/View;

.field private j:Lcom/santander/app/seguros/ui/widgets/ImageTextButton;

.field private k:Landroid/widget/LinearLayout;

.field private l:Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;

.field private m:Lcom/santander/app/seguros/ui/widgets/ImageTextButton;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Llzi;->b:Z

    return-void
.end method

.method static synthetic a(Llzi;)Lkvb;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Llzi;->d:Lkvb;

    return-object v0
.end method

.method public static a(Lkvb;)Llzi;
    .locals 3

    .prologue
    .line 83
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 84
    const-string v1, "response-key"

    new-instance v2, Lejm;

    invoke-direct {v2}, Lejm;-><init>()V

    invoke-virtual {v2, p0}, Lejm;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    new-instance v1, Llzi;

    invoke-direct {v1}, Llzi;-><init>()V

    .line 86
    invoke-virtual {v1, v0}, Llzi;->setArguments(Landroid/os/Bundle;)V

    .line 87
    return-object v1
.end method

.method private a(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 293
    const v0, 0x7f10095d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Llzi;->g:Landroid/widget/TextView;

    .line 294
    const v0, 0x7f10095e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Llzi;->h:Landroid/support/v7/widget/RecyclerView;

    .line 295
    const v0, 0x7f10095f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Llzi;->i:Landroid/view/View;

    .line 296
    const v0, 0x7f10095a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/seguros/ui/widgets/ImageTextButton;

    iput-object v0, p0, Llzi;->j:Lcom/santander/app/seguros/ui/widgets/ImageTextButton;

    .line 297
    const v0, 0x7f100959

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Llzi;->k:Landroid/widget/LinearLayout;

    .line 298
    const v0, 0x7f10095b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;

    iput-object v0, p0, Llzi;->l:Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;

    .line 299
    const v0, 0x7f10095c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/seguros/ui/widgets/ImageTextButton;

    iput-object v0, p0, Llzi;->m:Lcom/santander/app/seguros/ui/widgets/ImageTextButton;

    .line 301
    iget-object v0, p0, Llzi;->d:Lkvb;

    invoke-virtual {v0}, Lkvb;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Llzi;->d:Lkvb;

    invoke-virtual {v0}, Lkvb;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 302
    iget-object v0, p0, Llzi;->m:Lcom/santander/app/seguros/ui/widgets/ImageTextButton;

    iget-object v1, p0, Llzi;->d:Lkvb;

    invoke-virtual {v1}, Lkvb;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/santander/app/seguros/ui/widgets/ImageTextButton;->setTextButton(Ljava/lang/String;)V

    .line 307
    :goto_0
    invoke-virtual {p0}, Llzi;->b()V

    .line 308
    return-void

    .line 304
    :cond_0
    iget-object v0, p0, Llzi;->m:Lcom/santander/app/seguros/ui/widgets/ImageTextButton;

    invoke-virtual {p0}, Llzi;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0909ec

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/santander/app/seguros/ui/widgets/ImageTextButton;->setTextButton(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 230
    invoke-static {p1}, Lmhj;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u00e7"

    const-string v2, "c"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmhj;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 232
    const-string v1, "Seguros_Sinistro_Acionar_Cobertura_Acao"

    invoke-static {v1, v0}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lkuy;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 122
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkuy;

    .line 123
    invoke-virtual {v0}, Lkuy;->c()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0xb

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 124
    const v2, 0x7f020327

    invoke-virtual {v0, v2}, Lkuy;->a(I)V

    .line 126
    :cond_1
    invoke-virtual {v0}, Lkuy;->c()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0xc

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    .line 127
    const v2, 0x7f02038b

    invoke-virtual {v0, v2}, Lkuy;->a(I)V

    .line 129
    :cond_2
    invoke-virtual {v0}, Lkuy;->c()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0xd

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    .line 130
    const v2, 0x7f020390

    invoke-virtual {v0, v2}, Lkuy;->a(I)V

    .line 132
    :cond_3
    invoke-virtual {v0}, Lkuy;->c()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0xe

    cmp-long v2, v2, v4

    if-nez v2, :cond_4

    .line 133
    const v2, 0x7f0203c6

    invoke-virtual {v0, v2}, Lkuy;->a(I)V

    .line 135
    :cond_4
    invoke-virtual {v0}, Lkuy;->c()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0xf

    cmp-long v2, v2, v4

    if-nez v2, :cond_5

    .line 136
    const v2, 0x7f0203f1

    invoke-virtual {v0, v2}, Lkuy;->a(I)V

    .line 138
    :cond_5
    invoke-virtual {v0}, Lkuy;->c()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x10

    cmp-long v2, v2, v4

    if-nez v2, :cond_6

    .line 139
    const v2, 0x7f020439

    invoke-virtual {v0, v2}, Lkuy;->a(I)V

    .line 141
    :cond_6
    invoke-virtual {v0}, Lkuy;->c()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x11

    cmp-long v2, v2, v4

    if-nez v2, :cond_7

    .line 142
    const v2, 0x7f02045c

    invoke-virtual {v0, v2}, Lkuy;->a(I)V

    .line 144
    :cond_7
    invoke-virtual {v0}, Lkuy;->c()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x12

    cmp-long v2, v2, v4

    if-nez v2, :cond_8

    .line 145
    const v2, 0x7f02044d

    invoke-virtual {v0, v2}, Lkuy;->a(I)V

    .line 147
    :cond_8
    invoke-virtual {v0}, Lkuy;->c()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x13

    cmp-long v2, v2, v4

    if-nez v2, :cond_9

    .line 148
    const v2, 0x7f020461

    invoke-virtual {v0, v2}, Lkuy;->a(I)V

    .line 150
    :cond_9
    invoke-virtual {v0}, Lkuy;->c()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x14

    cmp-long v2, v2, v4

    if-nez v2, :cond_a

    .line 151
    const v2, 0x7f02048f

    invoke-virtual {v0, v2}, Lkuy;->a(I)V

    .line 153
    :cond_a
    invoke-virtual {v0}, Lkuy;->c()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x15

    cmp-long v2, v2, v4

    if-nez v2, :cond_b

    .line 154
    const v2, 0x7f020394

    invoke-virtual {v0, v2}, Lkuy;->a(I)V

    .line 157
    :cond_b
    invoke-virtual {v0}, Lkuy;->c()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x17

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 158
    const v2, 0x7f020493

    invoke-virtual {v0, v2}, Lkuy;->a(I)V

    goto/16 :goto_0

    .line 161
    :cond_c
    return-void
.end method

.method static synthetic a(Llzi;Z)Z
    .locals 0

    .prologue
    .line 56
    iput-boolean p1, p0, Llzi;->b:Z

    return p1
.end method

.method private c()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 108
    iget-object v0, p0, Llzi;->d:Lkvb;

    invoke-virtual {v0}, Lkvb;->f()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Llzi;->a(Ljava/util/List;)V

    .line 110
    iget-object v0, p0, Llzi;->h:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v4}, Landroid/support/v7/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 111
    iget-object v0, p0, Llzi;->l:Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;

    invoke-virtual {v0, v4}, Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;->c(Z)V

    .line 112
    iget-object v0, p0, Llzi;->i:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setClickable(Z)V

    .line 113
    new-instance v0, Lcom/santander/app/seguros/utils/SmoothScrollerLinearLayoutManager;

    iget-object v1, p0, Llzi;->c:Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;

    invoke-direct {v0, v1, v3, v4}, Lcom/santander/app/seguros/utils/SmoothScrollerLinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, p0, Llzi;->e:Lcom/santander/app/seguros/utils/SmoothScrollerLinearLayoutManager;

    .line 114
    new-instance v0, Llth;

    iget-object v1, p0, Llzi;->d:Lkvb;

    invoke-virtual {v1}, Lkvb;->f()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Llzi;->c:Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;

    invoke-direct {v0, v1, v2}, Llth;-><init>(Ljava/util/List;Landroid/support/v7/app/AppCompatActivity;)V

    iput-object v0, p0, Llzi;->f:Llth;

    .line 115
    iget-object v0, p0, Llzi;->f:Llth;

    invoke-virtual {v0, p0}, Llth;->a(Lltl;)V

    .line 116
    iget-object v0, p0, Llzi;->h:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Llzi;->e:Lcom/santander/app/seguros/utils/SmoothScrollerLinearLayoutManager;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 117
    iget-object v0, p0, Llzi;->h:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Llzi;->f:Llth;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 118
    iget-object v0, p0, Llzi;->g:Landroid/widget/TextView;

    invoke-virtual {p0}, Llzi;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090523

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {}, Lmzr;->g()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    return-void
.end method


# virtual methods
.method public a()V
    .locals 7

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x0

    const/4 v6, 0x1

    .line 164
    iget-boolean v0, p0, Llzi;->b:Z

    if-eqz v0, :cond_0

    .line 207
    :goto_0
    return-void

    .line 165
    :cond_0
    iput-boolean v6, p0, Llzi;->b:Z

    .line 166
    iget-object v0, p0, Llzi;->l:Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;

    invoke-virtual {v0}, Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 167
    iget-object v0, p0, Llzi;->i:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 168
    iget-object v0, p0, Llzi;->i:Landroid/view/View;

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 169
    iget-object v1, p0, Llzi;->e:Lcom/santander/app/seguros/utils/SmoothScrollerLinearLayoutManager;

    invoke-virtual {v1, v6}, Lcom/santander/app/seguros/utils/SmoothScrollerLinearLayoutManager;->a(Z)V

    .line 170
    iget-object v1, p0, Llzi;->f:Llth;

    invoke-virtual {v1, v6}, Llth;->a(Z)V

    .line 171
    iget-object v1, p0, Llzi;->c:Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;

    invoke-virtual {v1, v6}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->e(Z)V

    .line 172
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 173
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 189
    :goto_1
    iget-object v0, p0, Llzi;->l:Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;

    new-instance v1, Llzk;

    invoke-direct {v1, p0}, Llzk;-><init>(Llzi;)V

    invoke-virtual {v0, v1}, Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;->setOnExpansionUpdateListener(Lmbu;)V

    .line 205
    iget-object v0, p0, Llzi;->l:Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;

    invoke-virtual {v0, v6}, Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;->a(Z)V

    .line 206
    iget-object v0, p0, Llzi;->c:Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;

    iget-object v0, v0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->E:Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;

    invoke-virtual {v0, v6}, Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;->a(Z)V

    goto :goto_0

    .line 175
    :cond_1
    iget-object v0, p0, Llzi;->i:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setClickable(Z)V

    .line 176
    iget-object v0, p0, Llzi;->e:Lcom/santander/app/seguros/utils/SmoothScrollerLinearLayoutManager;

    invoke-virtual {v0, v1}, Lcom/santander/app/seguros/utils/SmoothScrollerLinearLayoutManager;->a(Z)V

    .line 177
    iget-object v0, p0, Llzi;->f:Llth;

    invoke-virtual {v0, v1}, Llth;->a(Z)V

    .line 178
    iget-object v0, p0, Llzi;->c:Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;

    invoke-virtual {v0, v1}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->e(Z)V

    .line 179
    iget-object v0, p0, Llzi;->i:Landroid/view/View;

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v2, v2, [F

    fill-array-data v2, :array_1

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 180
    const-wide/16 v2, 0x190

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 181
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Llzj;

    invoke-direct {v2, p0, v0}, Llzj;-><init>(Llzi;Landroid/animation/ObjectAnimator;)V

    const-wide/16 v4, 0x32

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 168
    :array_0
    .array-data 4
        0x3f000000    # 0.5f
        0x0
    .end array-data

    .line 179
    :array_1
    .array-data 4
        0x0
        0x3f000000    # 0.5f
    .end array-data
.end method

.method public a(Lkuy;)V
    .locals 4

    .prologue
    .line 212
    iget-boolean v0, p0, Llzi;->b:Z

    if-eqz v0, :cond_0

    .line 226
    :goto_0
    return-void

    .line 213
    :cond_0
    sget-object v0, Lmhv;->INSTANCE:Lmhv;

    invoke-virtual {v0}, Lmhv;->clear()V

    .line 214
    iget-object v0, p0, Llzi;->c:Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;

    invoke-virtual {v0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->u()V

    .line 215
    new-instance v0, Lkva;

    invoke-direct {v0}, Lkva;-><init>()V

    .line 216
    sget-object v1, Lmhv;->INSTANCE:Lmhv;

    invoke-virtual {p1}, Lkuy;->c()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lmhv;->setCoverageId(J)V

    .line 217
    sget-object v1, Lmhv;->INSTANCE:Lmhv;

    invoke-virtual {p1}, Lkuy;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmhv;->setCoverageName(Ljava/lang/String;)V

    .line 218
    iget-object v1, p0, Llzi;->c:Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;

    invoke-virtual {v1, p1}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->a(Lkuy;)V

    .line 219
    invoke-virtual {p1}, Lkuy;->c()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkva;->b(Ljava/lang/Long;)V

    .line 220
    sget-object v1, Lkuz;->NEXT:Lkuz;

    invoke-virtual {v0, v1}, Lkva;->a(Lkuz;)V

    .line 221
    sget-object v1, Lkuq;->COVERAGE:Lkuq;

    invoke-virtual {v0, v1}, Lkva;->a(Lkuq;)V

    .line 223
    invoke-virtual {p1}, Lkuy;->e()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Llzi;->a(Ljava/lang/String;)V

    .line 225
    iget-object v1, p0, Llzi;->c:Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;

    invoke-virtual {v1, v0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->a(Lkva;)V

    goto :goto_0
.end method

.method public a(Lkxd;)V
    .locals 1
    .annotation runtime Lnfq;
    .end annotation

    .prologue
    .line 287
    iget-boolean v0, p1, Lkxd;->a:Z

    if-nez v0, :cond_0

    .line 288
    invoke-virtual {p0}, Llzi;->a()V

    .line 290
    :cond_0
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 311
    iget-object v0, p0, Llzi;->m:Lcom/santander/app/seguros/ui/widgets/ImageTextButton;

    new-instance v1, Llzl;

    invoke-direct {v1, p0}, Llzl;-><init>(Llzi;)V

    invoke-virtual {v0, v1}, Lcom/santander/app/seguros/ui/widgets/ImageTextButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 327
    iget-object v0, p0, Llzi;->k:Landroid/widget/LinearLayout;

    new-instance v1, Llzm;

    invoke-direct {v1, p0}, Llzm;-><init>(Llzi;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 334
    iget-object v0, p0, Llzi;->j:Lcom/santander/app/seguros/ui/widgets/ImageTextButton;

    new-instance v1, Llzn;

    invoke-direct {v1, p0}, Llzn;-><init>(Llzi;)V

    invoke-virtual {v0, v1}, Lcom/santander/app/seguros/ui/widgets/ImageTextButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 341
    iget-object v0, p0, Llzi;->i:Landroid/view/View;

    new-instance v1, Llzo;

    invoke-direct {v1, p0}, Llzo;-><init>(Llzi;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 347
    return-void
.end method

.method public b(Lkuy;)V
    .locals 3

    .prologue
    .line 269
    invoke-virtual {p1}, Lkuy;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lkuy;->b()I

    move-result v1

    invoke-virtual {p1}, Lkuy;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Llyj;->a(Ljava/lang/String;ILjava/lang/String;)Llyj;

    move-result-object v0

    .line 270
    invoke-virtual {p0}, Llzi;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "info-image-dialog-tag"

    invoke-virtual {v0, v1, v2}, Llyj;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 271
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 75
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 77
    instance-of v0, p1, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;

    if-eqz v0, :cond_0

    .line 78
    check-cast p1, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;

    iput-object p1, p0, Llzi;->c:Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;

    .line 80
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 92
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 94
    new-instance v0, Lejm;

    invoke-direct {v0}, Lejm;-><init>()V

    invoke-virtual {p0}, Llzi;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "response-key"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lkvb;

    invoke-virtual {v0, v1, v2}, Lejm;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkvb;

    iput-object v0, p0, Llzi;->d:Lkvb;

    .line 96
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
    const v0, 0x7f0401e7

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 101
    invoke-direct {p0, v0}, Llzi;->a(Landroid/view/View;)V

    .line 102
    invoke-direct {p0}, Llzi;->c()V

    .line 103
    return-object v0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 281
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 282
    invoke-static {}, Lkws;->a()Lkws;

    move-result-object v0

    invoke-virtual {v0}, Lkws;->b()Lnfg;

    move-result-object v0

    invoke-virtual {v0, p0}, Lnfg;->c(Ljava/lang/Object;)V

    .line 283
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 275
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 276
    invoke-static {}, Lkws;->a()Lkws;

    move-result-object v0

    invoke-virtual {v0}, Lkws;->b()Lnfg;

    move-result-object v0

    invoke-virtual {v0, p0}, Lnfg;->b(Ljava/lang/Object;)V

    .line 277
    return-void
.end method
