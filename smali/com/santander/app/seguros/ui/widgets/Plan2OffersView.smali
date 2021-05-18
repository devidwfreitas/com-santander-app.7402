.class public Lcom/santander/app/seguros/ui/widgets/Plan2OffersView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/content/Context;

.field private c:Landroid/widget/FrameLayout;

.field private d:Landroid/widget/FrameLayout;

.field private e:Landroid/widget/ImageView;

.field private f:Landroid/widget/ImageView;

.field private g:Landroid/widget/ImageView;

.field private h:Landroid/widget/ImageView;

.field private i:Landroid/widget/ImageView;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/widget/TextView;

.field private p:Landroid/widget/TextView;

.field private q:Landroid/widget/TextView;

.field private r:Lmch;

.field private s:Lllb;

.field private t:Landroid/support/v7/widget/RecyclerView;

.field private u:Lkrz;

.field private v:Lkrz;

.field private w:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lkqd;",
            ">;"
        }
    .end annotation
.end field

.field private x:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lkqo;",
            ">;"
        }
    .end annotation
.end field

.field private y:Lmcg;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 76
    invoke-direct {p0, p1}, Lcom/santander/app/seguros/ui/widgets/Plan2OffersView;->a(Landroid/content/Context;)V

    .line 77
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/widgets/Plan2OffersView;->h()V

    .line 78
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 81
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 82
    invoke-direct {p0, p1}, Lcom/santander/app/seguros/ui/widgets/Plan2OffersView;->a(Landroid/content/Context;)V

    .line 83
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/widgets/Plan2OffersView;->h()V

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 87
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 88
    invoke-direct {p0, p1}, Lcom/santander/app/seguros/ui/widgets/Plan2OffersView;->a(Landroid/content/Context;)V

    .line 89
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/widgets/Plan2OffersView;->h()V

    .line 90
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .prologue
    .line 93
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 94
    invoke-direct {p0, p1}, Lcom/santander/app/seguros/ui/widgets/Plan2OffersView;->a(Landroid/content/Context;)V

    .line 95
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/widgets/Plan2OffersView;->h()V

    .line 96
    return-void
.end method

.method public static synthetic a(Lcom/santander/app/seguros/ui/widgets/Plan2OffersView;)Ljava/util/List;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/Plan2OffersView;->x:Ljava/util/List;

    return-object v0
.end method

.method public static synthetic a(Lcom/santander/app/seguros/ui/widgets/Plan2OffersView;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/santander/app/seguros/ui/widgets/Plan2OffersView;->x:Ljava/util/List;

    return-object p1
.end method

.method private a(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 179
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 180
    const v1, 0x7f040346

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/seguros/ui/widgets/Plan2OffersView;->a:Landroid/view/View;

    .line 181
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/Plan2OffersView;->a:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/widgets/Plan2OffersView;->addView(Landroid/view/View;)V

    .line 182
    iput-object p1, p0, Lcom/santander/app/seguros/ui/widgets/Plan2OffersView;->b:Landroid/content/Context;

    .line 183
    return-void
.end method

.method public static synthetic a(Lcom/santander/app/seguros/ui/widgets/Plan2OffersView;Lmch;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/santander/app/seguros/ui/widgets/Plan2OffersView;->a(Lmch;)V

    return-void
.end method

.method public static synthetic a(Lcom/santander/app/seguros/ui/widgets/Plan2OffersView;Lmch;Ljava/util/List;Lkqp;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Lcom/santander/app/seguros/ui/widgets/Plan2OffersView;->a(Lmch;Ljava/util/List;Lkqp;)V

    return-void
.end method

.method private a(Lmch;)V
    .locals 6

    .prologue
    const v5, 0x7f0205ed

    const/4 v4, 0x0

    const v3, 0x7f0205ec

    const/16 v2, 0x8

    .line 252
    sget-object v0, Lmcf;->a:[I

    invoke-virtual {p1}, Lmch;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 269
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/Plan2OffersView;->g:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/widgets/Plan2OffersView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 270
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/Plan2OffersView;->h:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/widgets/Plan2OffersView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 271
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/Plan2OffersView;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 272
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/Plan2OffersView;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 276
    :goto_0
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/Plan2OffersView;->y:Lmcg;

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/Plan2OffersView;->y:Lmcg;

    invoke-interface {v0, p1}, Lmcg;->a(Lmch;)V

    .line 280
    :cond_0
    return-void

    .line 255
    :pswitch_0
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/Plan2OffersView;->g:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/widgets/Plan2OffersView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 256
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/Plan2OffersView;->h:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/widgets/Plan2OffersView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 257
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/Plan2OffersView;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 258
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/Plan2OffersView;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 262
    :pswitch_1
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/Plan2OffersView;->g:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/widgets/Plan2OffersView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 263
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/Plan2OffersView;->h:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/widgets/Plan2OffersView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 264
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/Plan2OffersView;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 265
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/Plan2OffersView;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 252
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private a(Lmch;Ljava/util/List;Lkqp;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmch;",
            "Ljava/util/List",
            "<",
            "Lkqo;",
            ">;",
            "Lkqp;",
            ")V"
        }
    .end annotation

    .prologue
    .line 292
    sget-object v0, Lmcf;->a:[I

    invoke-virtual {p1}, Lmch;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 311
    :goto_0
    return-void

    .line 294
    :pswitch_0
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/Plan2OffersView;->b:Landroid/content/Context;

    invoke-virtual {p0, p2, v0, p3}, Lcom/santander/app/seguros/ui/widgets/Plan2OffersView;->a(Ljava/util/List;Landroid/content/Context;Lkqp;)V

    goto :goto_0

    .line 298
    :pswitch_1
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/Plan2OffersView;->b:Landroid/content/Context;

    invoke-virtual {p0, p2, v0, p3}, Lcom/santander/app/seguros/ui/widgets/Plan2OffersView;->a(Ljava/util/List;Landroid/content/Context;Lkqp;)V

    goto :goto_0

    .line 292
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static synthetic b(Lcom/santander/app/seguros/ui/widgets/Plan2OffersView;)Ljava/util/List;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/Plan2OffersView;->w:Ljava/util/List;

    return-object v0
.end method

.method public static synthetic b(Lcom/santander/app/seguros/ui/widgets/Plan2OffersView;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/santander/app/seguros/ui/widgets/Plan2OffersView;->w:Ljava/util/List;

    return-object p1
.end method

.method private h()V
    .locals 2

    .prologue
    .line 156
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/Plan2OffersView;->a:Landroid/view/View;

    const v1, 0x7f101086

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/widgets/Plan2OffersView;->c:Landroid/widget/FrameLayout;

    .line 157
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/Plan2OffersView;->a:Landroid/view/View;

    const v1, 0x7f10108c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/widgets/Plan2OffersView;->d:Landroid/widget/FrameLayout;

    .line 158
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/Plan2OffersView;->a:Landroid/view/View;

    const v1, 0x7f10108b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/widgets/Plan2OffersView;->e:Landroid/widget/ImageView;

    .line 159
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/Plan2OffersView;->a:Landroid/view/View;

    const v1, 0x7f101091

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/widgets/Plan2OffersView;->f:Landroid/widget/ImageView;

    .line 160
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/Plan2OffersView;->a:Landroid/view/View;

    const v1, 0x7f101087

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/widgets/Plan2OffersView;->g:Landroid/widget/ImageView;

    .line 161
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/Plan2OffersView;->a:Landroid/view/View;

    const v1, 0x7f10108d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/widgets/Plan2OffersView;->h:Landroid/widget/ImageView;

    .line 162
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/Plan2OffersView;->a:Landroid/view/View;

    const v1, 0x7f101088

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/widgets/Plan2OffersView;->l:Landroid/widget/TextView;

    .line 163
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/Plan2OffersView;->a:Landroid/view/View;

    const v1, 0x7f10108e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/widgets/Plan2OffersView;->m:Landroid/widget/TextView;

    .line 164
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/Plan2OffersView;->a:Landroid/view/View;

    const v1, 0x7f101089

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/widgets/Plan2OffersView;->n:Landroid/widget/TextView;

    .line 165
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/Plan2OffersView;->a:Landroid/view/View;

    const v1, 0x7f10108f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/widgets/Plan2OffersView;->o:Landroid/widget/TextView;

    .line 166
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/Plan2OffersView;->a:Landroid/view/View;

    const v1, 0x7f10108a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/widgets/Plan2OffersView;->p:Landroid/widget/TextView;

    .line 167
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/Plan2OffersView;->a:Landroid/view/View;

    const v1, 0x7f101090

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/widgets/Plan2OffersView;->q:Landroid/widget/TextView;

    .line 168
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/Plan2OffersView;->a:Landroid/view/View;

    const v1, 0x7f100947

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/widgets/Plan2OffersView;->i:Landroid/widget/ImageView;

    .line 169
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/Plan2OffersView;->a:Landroid/view/View;

    const v1, 0x7f100948

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/widgets/Plan2OffersView;->j:Landroid/widget/TextView;

    .line 170
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/Plan2OffersView;->a:Landroid/view/View;

    const v1, 0x7f101083

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/widgets/Plan2OffersView;->k:Landroid/widget/TextView;

    .line 172
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/Plan2OffersView;->a:Landroid/view/View;

    const v1, 0x7f101084

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/widgets/Plan2OffersView;->t:Landroid/support/v7/widget/RecyclerView;

    .line 174
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/widgets/Plan2OffersView;->a()V

    .line 176
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 100
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/Plan2OffersView;->g:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/widgets/Plan2OffersView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0205ed

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 101
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/Plan2OffersView;->h:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/widgets/Plan2OffersView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0205ec

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 102
    return-void
.end method

.method public a(Ljava/util/List;Landroid/content/Context;Lkqp;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lkqo;",
            ">;",
            "Landroid/content/Context;",
            "Lkqp;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 106
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 108
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_3

    move v1, v2

    .line 109
    :goto_0
    invoke-virtual {p3}, Lkqp;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    move v3, v2

    .line 110
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_1

    .line 111
    invoke-virtual {p3}, Lkqp;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkrp;

    invoke-virtual {v0}, Lkrp;->a()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkqo;

    invoke-virtual {v0}, Lkqo;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    :cond_0
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    .line 109
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    move-object p1, v4

    .line 121
    :cond_3
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/Plan2OffersView;->t:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 122
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/Plan2OffersView;->t:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    const/4 v3, 0x1

    invoke-direct {v1, p2, v3, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 123
    new-instance v0, Lllb;

    invoke-virtual {p3}, Lkqp;->b()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, p1, p2, v1}, Lllb;-><init>(Ljava/util/List;Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/santander/app/seguros/ui/widgets/Plan2OffersView;->s:Lllb;

    .line 125
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/Plan2OffersView;->t:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/santander/app/seguros/ui/widgets/Plan2OffersView;->s:Lllb;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 126
    return-void
.end method

.method public a(Lkrz;)V
    .locals 3

    .prologue
    .line 138
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/Plan2OffersView;->l:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/widgets/Plan2OffersView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090302

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/Plan2OffersView;->n:Landroid/widget/TextView;

    invoke-virtual {p1}, Lkrz;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmhj;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmhj;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/Plan2OffersView;->p:Landroid/widget/TextView;

    invoke-virtual {p1}, Lkrz;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmhj;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmhj;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    iput-object p1, p0, Lcom/santander/app/seguros/ui/widgets/Plan2OffersView;->u:Lkrz;

    .line 143
    return-void
.end method

.method public a(Lkrz;Lkrz;Landroid/content/Context;Lkqp;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 193
    invoke-virtual {p1}, Lkrz;->g()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lkrz;->g()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 194
    sget-object v0, Lmch;->PLAN1:Lmch;

    invoke-virtual {p1}, Lkrz;->g()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v0, v1, p4}, Lcom/santander/app/seguros/ui/widgets/Plan2OffersView;->a(Lmch;Ljava/util/List;Lkqp;)V

    .line 196
    invoke-virtual {p1}, Lkrz;->g()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/seguros/ui/widgets/Plan2OffersView;->x:Ljava/util/List;

    .line 197
    sget-object v0, Lkqm;->INSTANCE:Lkqm;

    iget-object v1, p0, Lcom/santander/app/seguros/ui/widgets/Plan2OffersView;->x:Ljava/util/List;

    invoke-virtual {v0, v1}, Lkqm;->setmCoverages(Ljava/util/List;)V

    .line 200
    :cond_0
    invoke-virtual {p1}, Lkrz;->f()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lkrz;->f()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 202
    invoke-virtual {p1}, Lkrz;->f()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/seguros/ui/widgets/Plan2OffersView;->w:Ljava/util/List;

    .line 203
    sget-object v0, Lkqm;->INSTANCE:Lkqm;

    iget-object v1, p0, Lcom/santander/app/seguros/ui/widgets/Plan2OffersView;->w:Ljava/util/List;

    invoke-virtual {v0, v1}, Lkqm;->setmAssistances(Ljava/util/List;)V

    .line 206
    :cond_1
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/Plan2OffersView;->c:Landroid/widget/FrameLayout;

    new-instance v1, Lmcd;

    invoke-direct {v1, p0, p1, p4}, Lmcd;-><init>(Lcom/santander/app/seguros/ui/widgets/Plan2OffersView;Lkrz;Lkqp;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 226
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/Plan2OffersView;->d:Landroid/widget/FrameLayout;

    new-instance v1, Lmce;

    invoke-direct {v1, p0, p2, p4}, Lmce;-><init>(Lcom/santander/app/seguros/ui/widgets/Plan2OffersView;Lkrz;Lkqp;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 248
    return-void
.end method

.method public b()Lmch;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/Plan2OffersView;->r:Lmch;

    return-object v0
.end method

.method public b(Lkrz;)V
    .locals 3

    .prologue
    .line 147
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/Plan2OffersView;->m:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/widgets/Plan2OffersView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090302

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/Plan2OffersView;->o:Landroid/widget/TextView;

    invoke-virtual {p1}, Lkrz;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmhj;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmhj;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/Plan2OffersView;->q:Landroid/widget/TextView;

    invoke-virtual {p1}, Lkrz;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmhj;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmhj;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    iput-object p1, p0, Lcom/santander/app/seguros/ui/widgets/Plan2OffersView;->v:Lkrz;

    .line 152
    return-void
.end method

.method public c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lkqd;",
            ">;"
        }
    .end annotation

    .prologue
    .line 283
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/Plan2OffersView;->w:Ljava/util/List;

    return-object v0
.end method

.method public d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lkqo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 287
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/Plan2OffersView;->x:Ljava/util/List;

    return-object v0
.end method

.method public e()Lkrz;
    .locals 2

    .prologue
    .line 315
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/widgets/Plan2OffersView;->b()Lmch;

    move-result-object v0

    sget-object v1, Lmch;->PLAN1:Lmch;

    if-ne v0, v1, :cond_0

    .line 316
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/widgets/Plan2OffersView;->f()Lkrz;

    move-result-object v0

    .line 320
    :goto_0
    return-object v0

    .line 318
    :cond_0
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/widgets/Plan2OffersView;->g()Lkrz;

    move-result-object v0

    goto :goto_0
.end method

.method public f()Lkrz;
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/Plan2OffersView;->u:Lkrz;

    if-eqz v0, :cond_0

    .line 325
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/Plan2OffersView;->u:Lkrz;

    .line 327
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lkrz;

    invoke-direct {v0}, Lkrz;-><init>()V

    goto :goto_0
.end method

.method public g()Lkrz;
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/Plan2OffersView;->v:Lkrz;

    if-eqz v0, :cond_0

    .line 333
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/Plan2OffersView;->v:Lkrz;

    .line 335
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lkrz;

    invoke-direct {v0}, Lkrz;-><init>()V

    goto :goto_0
.end method

.method public setCardViewPlanOffer(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/Plan2OffersView;->i:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 187
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/Plan2OffersView;->j:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 188
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/Plan2OffersView;->k:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 189
    return-void
.end method

.method public setListener(Lmcg;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/santander/app/seguros/ui/widgets/Plan2OffersView;->y:Lmcg;

    .line 72
    return-void
.end method

.method public setPlanSelected(Lmch;)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lcom/santander/app/seguros/ui/widgets/Plan2OffersView;->r:Lmch;

    .line 134
    return-void
.end method
