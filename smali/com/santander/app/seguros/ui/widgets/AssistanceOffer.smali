.class public Lcom/santander/app/seguros/ui/widgets/AssistanceOffer;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field private a:Lmay;

.field private b:Landroid/view/View;

.field private c:Landroid/content/Context;

.field private d:Lcom/santander/app/seguros/ui/widgets/SegurosTextView;

.field private e:Lcom/santander/app/seguros/ui/widgets/SegurosTextView;

.field private f:Lcom/santander/app/seguros/ui/widgets/SegurosTextView;

.field private g:Lcom/santander/app/seguros/ui/widgets/SegurosTextView;

.field private h:Landroid/widget/ImageView;

.field private i:Landroid/widget/ImageView;

.field private j:Landroid/widget/ImageView;

.field private k:Landroid/widget/LinearLayout;

.field private l:Landroid/widget/LinearLayout;

.field private m:Landroid/widget/LinearLayout;

.field private n:Lcom/santander/app/seguros/ui/widgets/SegurosTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 52
    invoke-direct {p0, p1}, Lcom/santander/app/seguros/ui/widgets/AssistanceOffer;->a(Landroid/content/Context;)V

    .line 53
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/widgets/AssistanceOffer;->b()V

    .line 54
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/widgets/AssistanceOffer;->a()V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 65
    invoke-direct {p0, p1}, Lcom/santander/app/seguros/ui/widgets/AssistanceOffer;->a(Landroid/content/Context;)V

    .line 66
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/widgets/AssistanceOffer;->b()V

    .line 67
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/widgets/AssistanceOffer;->a()V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 71
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 72
    invoke-direct {p0, p1}, Lcom/santander/app/seguros/ui/widgets/AssistanceOffer;->a(Landroid/content/Context;)V

    .line 73
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/widgets/AssistanceOffer;->b()V

    .line 74
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/widgets/AssistanceOffer;->a()V

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 79
    invoke-direct {p0, p1}, Lcom/santander/app/seguros/ui/widgets/AssistanceOffer;->a(Landroid/content/Context;)V

    .line 80
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/widgets/AssistanceOffer;->b()V

    .line 81
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/widgets/AssistanceOffer;->a()V

    .line 82
    return-void
.end method

.method public static synthetic a(Lcom/santander/app/seguros/ui/widgets/AssistanceOffer;Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/santander/app/seguros/ui/widgets/AssistanceOffer;->a(Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;
    .locals 4

    .prologue
    const v3, 0x7f02038e

    .line 239
    const/4 v0, 0x0

    .line 240
    invoke-static {p1}, Lkrj;->valueOf(Ljava/lang/String;)Lkrj;

    move-result-object v1

    .line 242
    sget-object v2, Lmax;->a:[I

    invoke-virtual {v1}, Lkrj;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    .line 307
    :goto_0
    return-object v0

    .line 245
    :pswitch_0
    if-eqz p2, :cond_0

    .line 246
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/widgets/AssistanceOffer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02040d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 248
    :cond_0
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/widgets/AssistanceOffer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02040e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 252
    :pswitch_1
    if-eqz p2, :cond_1

    .line 253
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/widgets/AssistanceOffer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02048c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 255
    :cond_1
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/widgets/AssistanceOffer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02048d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 259
    :pswitch_2
    if-eqz p2, :cond_2

    .line 260
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/widgets/AssistanceOffer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0203e9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 262
    :cond_2
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/widgets/AssistanceOffer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0203ea

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 267
    :pswitch_3
    if-eqz p2, :cond_3

    .line 268
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/widgets/AssistanceOffer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0203e0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 270
    :cond_3
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/widgets/AssistanceOffer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0203e3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 275
    :pswitch_4
    if-eqz p2, :cond_4

    .line 276
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/widgets/AssistanceOffer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020347

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 278
    :cond_4
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/widgets/AssistanceOffer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020348

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 283
    :pswitch_5
    if-eqz p2, :cond_5

    .line 284
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/widgets/AssistanceOffer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0203e7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 286
    :cond_5
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/widgets/AssistanceOffer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0203e8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 291
    :pswitch_6
    if-eqz p2, :cond_6

    .line 292
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/widgets/AssistanceOffer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020409

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 294
    :cond_6
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/widgets/AssistanceOffer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02040a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 299
    :pswitch_7
    if-eqz p2, :cond_7

    .line 300
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/widgets/AssistanceOffer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 302
    :cond_7
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/widgets/AssistanceOffer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 242
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public static synthetic a(Lcom/santander/app/seguros/ui/widgets/AssistanceOffer;)Lmay;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/AssistanceOffer;->a:Lmay;

    return-object v0
.end method

.method private a()V
    .locals 8

    .prologue
    .line 59
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/AssistanceOffer;->n:Lcom/santander/app/seguros/ui/widgets/SegurosTextView;

    iget-object v1, p0, Lcom/santander/app/seguros/ui/widgets/AssistanceOffer;->c:Landroid/content/Context;

    const-string v2, "fonts/opensans_semibold.ttf"

    iget-object v3, p0, Lcom/santander/app/seguros/ui/widgets/AssistanceOffer;->c:Landroid/content/Context;

    const v4, 0x7f0e0075

    invoke-static {v3, v4}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/widgets/AssistanceOffer;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f09035c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "benef\u00edcios"

    aput-object v7, v5, v6

    invoke-static {v1, v2, v3, v4, v5}, Lmhj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;[Ljava/lang/String;)Landroid/text/Spannable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/santander/app/seguros/ui/widgets/SegurosTextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 85
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 86
    const v1, 0x7f0400e5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/seguros/ui/widgets/AssistanceOffer;->b:Landroid/view/View;

    .line 87
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/AssistanceOffer;->b:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/widgets/AssistanceOffer;->addView(Landroid/view/View;)V

    .line 88
    iput-object p1, p0, Lcom/santander/app/seguros/ui/widgets/AssistanceOffer;->c:Landroid/content/Context;

    .line 89
    return-void
.end method

.method public static synthetic b(Lcom/santander/app/seguros/ui/widgets/AssistanceOffer;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/AssistanceOffer;->h:Landroid/widget/ImageView;

    return-object v0
.end method

.method private b()V
    .locals 1

    .prologue
    .line 93
    const v0, 0x7f1004de

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/widgets/AssistanceOffer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/seguros/ui/widgets/SegurosTextView;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/widgets/AssistanceOffer;->e:Lcom/santander/app/seguros/ui/widgets/SegurosTextView;

    .line 94
    const v0, 0x7f1004e1

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/widgets/AssistanceOffer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/seguros/ui/widgets/SegurosTextView;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/widgets/AssistanceOffer;->f:Lcom/santander/app/seguros/ui/widgets/SegurosTextView;

    .line 95
    const v0, 0x7f1004e4

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/widgets/AssistanceOffer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/seguros/ui/widgets/SegurosTextView;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/widgets/AssistanceOffer;->g:Lcom/santander/app/seguros/ui/widgets/SegurosTextView;

    .line 97
    const v0, 0x7f1004dd

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/widgets/AssistanceOffer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/widgets/AssistanceOffer;->h:Landroid/widget/ImageView;

    .line 98
    const v0, 0x7f1004e0

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/widgets/AssistanceOffer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/widgets/AssistanceOffer;->i:Landroid/widget/ImageView;

    .line 99
    const v0, 0x7f1004e3

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/widgets/AssistanceOffer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/widgets/AssistanceOffer;->j:Landroid/widget/ImageView;

    .line 101
    const v0, 0x7f1004dc

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/widgets/AssistanceOffer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/widgets/AssistanceOffer;->k:Landroid/widget/LinearLayout;

    .line 102
    const v0, 0x7f1004df

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/widgets/AssistanceOffer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/widgets/AssistanceOffer;->l:Landroid/widget/LinearLayout;

    .line 103
    const v0, 0x7f1004e2

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/widgets/AssistanceOffer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/widgets/AssistanceOffer;->m:Landroid/widget/LinearLayout;

    .line 105
    const v0, 0x7f1004e5

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/widgets/AssistanceOffer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/seguros/ui/widgets/SegurosTextView;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/widgets/AssistanceOffer;->d:Lcom/santander/app/seguros/ui/widgets/SegurosTextView;

    .line 107
    const v0, 0x7f1004db

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/widgets/AssistanceOffer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/seguros/ui/widgets/SegurosTextView;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/widgets/AssistanceOffer;->n:Lcom/santander/app/seguros/ui/widgets/SegurosTextView;

    .line 108
    return-void
.end method

.method public static synthetic c(Lcom/santander/app/seguros/ui/widgets/AssistanceOffer;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/AssistanceOffer;->i:Landroid/widget/ImageView;

    return-object v0
.end method

.method public static synthetic d(Lcom/santander/app/seguros/ui/widgets/AssistanceOffer;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/AssistanceOffer;->j:Landroid/widget/ImageView;

    return-object v0
.end method

.method public static synthetic e(Lcom/santander/app/seguros/ui/widgets/AssistanceOffer;)Lcom/santander/app/seguros/ui/widgets/SegurosTextView;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/AssistanceOffer;->e:Lcom/santander/app/seguros/ui/widgets/SegurosTextView;

    return-object v0
.end method

.method public static synthetic f(Lcom/santander/app/seguros/ui/widgets/AssistanceOffer;)Lcom/santander/app/seguros/ui/widgets/SegurosTextView;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/AssistanceOffer;->f:Lcom/santander/app/seguros/ui/widgets/SegurosTextView;

    return-object v0
.end method

.method public static synthetic g(Lcom/santander/app/seguros/ui/widgets/AssistanceOffer;)Lcom/santander/app/seguros/ui/widgets/SegurosTextView;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/AssistanceOffer;->g:Lcom/santander/app/seguros/ui/widgets/SegurosTextView;

    return-object v0
.end method

.method public static synthetic h(Lcom/santander/app/seguros/ui/widgets/AssistanceOffer;)Lcom/santander/app/seguros/ui/widgets/SegurosTextView;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/AssistanceOffer;->d:Lcom/santander/app/seguros/ui/widgets/SegurosTextView;

    return-object v0
.end method


# virtual methods
.method public setInformations(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lkrl;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 113
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/widgets/AssistanceOffer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "fonts/opensans_light.ttf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    .line 115
    if-eqz p1, :cond_0

    .line 116
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    .line 118
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/AssistanceOffer;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 119
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/AssistanceOffer;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 120
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/AssistanceOffer;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 122
    iget-object v2, p0, Lcom/santander/app/seguros/ui/widgets/AssistanceOffer;->e:Lcom/santander/app/seguros/ui/widgets/SegurosTextView;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkrl;

    invoke-virtual {v0}, Lkrl;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/santander/app/seguros/ui/widgets/SegurosTextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    iget-object v2, p0, Lcom/santander/app/seguros/ui/widgets/AssistanceOffer;->f:Lcom/santander/app/seguros/ui/widgets/SegurosTextView;

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkrl;

    invoke-virtual {v0}, Lkrl;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/santander/app/seguros/ui/widgets/SegurosTextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    iget-object v2, p0, Lcom/santander/app/seguros/ui/widgets/AssistanceOffer;->g:Lcom/santander/app/seguros/ui/widgets/SegurosTextView;

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkrl;

    invoke-virtual {v0}, Lkrl;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/santander/app/seguros/ui/widgets/SegurosTextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    iget-object v2, p0, Lcom/santander/app/seguros/ui/widgets/AssistanceOffer;->h:Landroid/widget/ImageView;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkrl;

    invoke-virtual {v0}, Lkrl;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v3}, Lcom/santander/app/seguros/ui/widgets/AssistanceOffer;->a(Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 127
    iget-object v2, p0, Lcom/santander/app/seguros/ui/widgets/AssistanceOffer;->i:Landroid/widget/ImageView;

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkrl;

    invoke-virtual {v0}, Lkrl;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v3}, Lcom/santander/app/seguros/ui/widgets/AssistanceOffer;->a(Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 128
    iget-object v2, p0, Lcom/santander/app/seguros/ui/widgets/AssistanceOffer;->j:Landroid/widget/ImageView;

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkrl;

    invoke-virtual {v0}, Lkrl;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v3}, Lcom/santander/app/seguros/ui/widgets/AssistanceOffer;->a(Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 130
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/AssistanceOffer;->h:Landroid/widget/ImageView;

    new-instance v2, Lmas;

    invoke-direct {v2, p0, p1, v1}, Lmas;-><init>(Lcom/santander/app/seguros/ui/widgets/AssistanceOffer;Ljava/util/List;Landroid/graphics/Typeface;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/AssistanceOffer;->i:Landroid/widget/ImageView;

    new-instance v2, Lmat;

    invoke-direct {v2, p0, p1, v1}, Lmat;-><init>(Lcom/santander/app/seguros/ui/widgets/AssistanceOffer;Ljava/util/List;Landroid/graphics/Typeface;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/AssistanceOffer;->j:Landroid/widget/ImageView;

    new-instance v2, Lmau;

    invoke-direct {v2, p0, p1, v1}, Lmau;-><init>(Lcom/santander/app/seguros/ui/widgets/AssistanceOffer;Ljava/util/List;Landroid/graphics/Typeface;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 236
    :cond_0
    :goto_0
    return-void

    .line 194
    :cond_1
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v5, :cond_0

    .line 196
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/AssistanceOffer;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 197
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/AssistanceOffer;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 198
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/AssistanceOffer;->m:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 200
    iget-object v2, p0, Lcom/santander/app/seguros/ui/widgets/AssistanceOffer;->e:Lcom/santander/app/seguros/ui/widgets/SegurosTextView;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkrl;

    invoke-virtual {v0}, Lkrl;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/santander/app/seguros/ui/widgets/SegurosTextView;->setText(Ljava/lang/CharSequence;)V

    .line 201
    iget-object v2, p0, Lcom/santander/app/seguros/ui/widgets/AssistanceOffer;->f:Lcom/santander/app/seguros/ui/widgets/SegurosTextView;

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkrl;

    invoke-virtual {v0}, Lkrl;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/santander/app/seguros/ui/widgets/SegurosTextView;->setText(Ljava/lang/CharSequence;)V

    .line 203
    iget-object v2, p0, Lcom/santander/app/seguros/ui/widgets/AssistanceOffer;->h:Landroid/widget/ImageView;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkrl;

    invoke-virtual {v0}, Lkrl;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v3}, Lcom/santander/app/seguros/ui/widgets/AssistanceOffer;->a(Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 204
    iget-object v2, p0, Lcom/santander/app/seguros/ui/widgets/AssistanceOffer;->i:Landroid/widget/ImageView;

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkrl;

    invoke-virtual {v0}, Lkrl;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v3}, Lcom/santander/app/seguros/ui/widgets/AssistanceOffer;->a(Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 206
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/AssistanceOffer;->h:Landroid/widget/ImageView;

    new-instance v2, Lmav;

    invoke-direct {v2, p0, p1, v1}, Lmav;-><init>(Lcom/santander/app/seguros/ui/widgets/AssistanceOffer;Ljava/util/List;Landroid/graphics/Typeface;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 221
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/AssistanceOffer;->i:Landroid/widget/ImageView;

    new-instance v2, Lmaw;

    invoke-direct {v2, p0, p1, v1}, Lmaw;-><init>(Lcom/santander/app/seguros/ui/widgets/AssistanceOffer;Ljava/util/List;Landroid/graphics/Typeface;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public setListener(Lmay;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/santander/app/seguros/ui/widgets/AssistanceOffer;->a:Lmay;

    .line 40
    return-void
.end method
