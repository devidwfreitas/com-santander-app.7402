.class public Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;
.super Lgrs;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "InvestimentosNoAtmActivity"


# instance fields
.field private A:Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;

.field private B:I

.field private C:Lcom/santander/app/contacorrente/domain/Conta;

.field private b:Landroid/app/Dialog;

.field private c:Lkbu;

.field private d:Ljava/lang/String;

.field private e:Landroid/widget/ImageView;

.field private f:Landroid/widget/ImageView;

.field private g:Landroid/widget/ImageView;

.field private w:Landroid/widget/TextView;

.field private x:Landroid/widget/TextView;

.field private y:Landroid/widget/TextView;

.field private z:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 42
    invoke-direct {p0}, Lgrs;-><init>()V

    .line 46
    iput-object v1, p0, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->c:Lkbu;

    .line 47
    const-string v0, ""

    iput-object v0, p0, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->d:Ljava/lang/String;

    .line 48
    iput-object v1, p0, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->e:Landroid/widget/ImageView;

    .line 49
    iput-object v1, p0, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->f:Landroid/widget/ImageView;

    .line 50
    iput-object v1, p0, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->g:Landroid/widget/ImageView;

    .line 51
    iput-object v1, p0, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->w:Landroid/widget/TextView;

    .line 52
    iput-object v1, p0, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->x:Landroid/widget/TextView;

    .line 53
    iput-object v1, p0, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->y:Landroid/widget/TextView;

    .line 54
    iput-object v1, p0, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->z:Landroid/widget/TextView;

    .line 56
    const/4 v0, 0x0

    iput v0, p0, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->B:I

    return-void
.end method

.method public static synthetic a(Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;I)I
    .locals 0

    .prologue
    .line 42
    iput p1, p0, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->B:I

    return p1
.end method

.method public static synthetic a(Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->b:Landroid/app/Dialog;

    return-object p1
.end method

.method public static synthetic a(Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->e:Landroid/widget/ImageView;

    return-object v0
.end method

.method public static synthetic a(Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;Lcom/santander/app/contacorrente/domain/Conta;)Lcom/santander/app/contacorrente/domain/Conta;
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->C:Lcom/santander/app/contacorrente/domain/Conta;

    return-object p1
.end method

.method public static synthetic a(Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;Lkbu;)Lkbu;
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->c:Lkbu;

    return-object p1
.end method

.method private a(Landroid/widget/SeekBar;)V
    .locals 2

    .prologue
    .line 207
    new-instance v0, Lkbh;

    new-instance v1, Lkbe;

    invoke-direct {v1, p0, p1}, Lkbe;-><init>(Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;Landroid/widget/SeekBar;)V

    invoke-direct {v0, p0, v1, p0}, Lkbh;-><init>(Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;Ljrn;Landroid/app/Activity;)V

    const/4 v1, 0x0

    new-array v1, v1, [Lkca;

    .line 213
    invoke-virtual {v0, v1}, Lkbh;->c([Ljava/lang/Object;)Lgne;

    .line 214
    return-void
.end method

.method public static synthetic a(Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;Landroid/widget/SeekBar;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->a(Landroid/widget/SeekBar;)V

    return-void
.end method

.method public static synthetic b(Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->f:Landroid/widget/ImageView;

    return-object v0
.end method

.method public static synthetic c(Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->g:Landroid/widget/ImageView;

    return-object v0
.end method

.method public static synthetic d(Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->w:Landroid/widget/TextView;

    return-object v0
.end method

.method public static synthetic e(Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->x:Landroid/widget/TextView;

    return-object v0
.end method

.method public static synthetic f(Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->y:Landroid/widget/TextView;

    return-object v0
.end method

.method public static synthetic g(Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;)I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->B:I

    return v0
.end method

.method public static synthetic h(Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;)Lcom/santander/app/contacorrente/domain/Conta;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->C:Lcom/santander/app/contacorrente/domain/Conta;

    return-object v0
.end method

.method public static synthetic i(Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->b:Landroid/app/Dialog;

    return-object v0
.end method

.method public static synthetic j(Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;)Lkbu;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->c:Lkbu;

    return-object v0
.end method

.method public static synthetic k(Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->z:Landroid/widget/TextView;

    return-object v0
.end method

.method public static synthetic l(Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->d:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)I
    .locals 7

    .prologue
    const v6, 0x7f0e0103

    const v5, 0x7f020623

    const/4 v0, 0x0

    const v4, 0x7f0e00fa

    const v3, 0x7f020622

    .line 313
    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    packed-switch v1, :pswitch_data_1

    .line 350
    :goto_1
    return v0

    .line 313
    :pswitch_1
    const-string v2, "S"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v1, v0

    goto :goto_0

    :pswitch_2
    const-string v2, "P"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :pswitch_3
    const-string v2, "N"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    .line 316
    :pswitch_4
    iget-object v1, p0, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->e:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 317
    iget-object v1, p0, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->f:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 318
    iget-object v1, p0, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->g:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 320
    iget-object v1, p0, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->w:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 321
    iget-object v1, p0, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->x:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 322
    iget-object v1, p0, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->y:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 323
    iget-object v1, p0, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->z:Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 327
    :pswitch_5
    iget-object v0, p0, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->e:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 328
    iget-object v0, p0, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->f:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 329
    iget-object v0, p0, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->g:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 331
    iget-object v0, p0, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->w:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 332
    iget-object v0, p0, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->x:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 333
    iget-object v0, p0, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->y:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 334
    iget-object v0, p0, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->z:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 335
    const/16 v0, 0x32

    goto/16 :goto_1

    .line 338
    :pswitch_6
    iget-object v0, p0, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->e:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 339
    iget-object v0, p0, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->f:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 340
    iget-object v0, p0, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->g:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 342
    iget-object v0, p0, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->w:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 343
    iget-object v0, p0, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->x:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 344
    iget-object v0, p0, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->y:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 345
    iget-object v0, p0, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->z:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 346
    const/16 v0, 0x64

    goto/16 :goto_1

    .line 313
    nop

    :pswitch_data_0
    .packed-switch 0x4e
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public a(Landroid/widget/SeekBar;Landroid/graphics/drawable/Drawable;II)Landroid/widget/SeekBar;
    .locals 0

    .prologue
    .line 73
    invoke-virtual {p1, p2}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 74
    invoke-virtual {p1, p4}, Landroid/widget/SeekBar;->setThumbOffset(I)V

    .line 76
    invoke-virtual {p1, p3}, Landroid/widget/SeekBar;->setMax(I)V

    .line 78
    return-object p1
.end method

.method public a()V
    .locals 8

    .prologue
    const v6, 0x7f020622

    const v2, 0x7f0e0103

    .line 97
    const v0, 0x7f10035e

    invoke-virtual {p0, v0}, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->z:Landroid/widget/TextView;

    .line 98
    const v0, 0x7f1011b7

    invoke-virtual {p0, v0}, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->e:Landroid/widget/ImageView;

    .line 99
    const v0, 0x7f1011b8

    invoke-virtual {p0, v0}, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->f:Landroid/widget/ImageView;

    .line 100
    const v0, 0x7f1011b9

    invoke-virtual {p0, v0}, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->g:Landroid/widget/ImageView;

    .line 102
    const v0, 0x7f1011b4

    invoke-virtual {p0, v0}, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->w:Landroid/widget/TextView;

    .line 103
    iget-object v0, p0, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->w:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 104
    const v0, 0x7f1011b5

    invoke-virtual {p0, v0}, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->x:Landroid/widget/TextView;

    .line 105
    iget-object v0, p0, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->x:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 106
    const v0, 0x7f1011b6

    invoke-virtual {p0, v0}, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->y:Landroid/widget/TextView;

    .line 107
    iget-object v0, p0, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->y:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 109
    const v0, 0x7f1011b3

    invoke-virtual {p0, v0}, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    .line 110
    invoke-virtual {v0}, Landroid/widget/SeekBar;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a00da

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    .line 111
    invoke-virtual {p0}, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020621

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/16 v3, 0x64

    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->a(Landroid/widget/SeekBar;Landroid/graphics/drawable/Drawable;II)Landroid/widget/SeekBar;

    move-result-object v7

    .line 112
    iget-object v1, p0, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->e:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->f:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->g:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f020623

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {p0}, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {p0}, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->a(Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 113
    iget-object v1, p0, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->w:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->x:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->y:Landroid/widget/TextView;

    const-string v4, "    N\u00e3o\nbloquear"

    const-string v5, "   Bloquear das\n18:00h at\u00e9 9:00h"

    const-string v6, "Bloquear\n24 horas"

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->a(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    const v0, 0x7f100139

    invoke-virtual {p0, v0}, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;

    iput-object v0, p0, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->A:Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;

    .line 116
    iget-object v0, p0, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->A:Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;

    invoke-static {}, Lgmy;->e()Lamy;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;->setAdapter(Lamr;)V

    .line 117
    iget-object v0, p0, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->A:Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;

    new-instance v1, Lkbc;

    invoke-direct {v1, p0, v7}, Lkbc;-><init>(Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;Landroid/widget/SeekBar;)V

    invoke-virtual {v0, v1}, Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;->setOnItemSelectedListener(Lamt;)V

    .line 126
    new-instance v0, Lkbd;

    invoke-direct {v0, p0, v7}, Lkbd;-><init>(Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;Landroid/widget/SeekBar;)V

    invoke-virtual {v7, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 204
    return-void
.end method

.method public a(I)V
    .locals 10

    .prologue
    const v9, 0x7f0e0103

    const v8, 0x7f020623

    const v7, 0x7f0e00fa

    const v6, 0x7f020622

    .line 429
    sparse-switch p1, :sswitch_data_0

    .line 446
    :goto_0
    return-void

    .line 431
    :sswitch_0
    iget-object v1, p0, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->e:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->f:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->g:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {p0}, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {p0}, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->a(Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 432
    iget-object v1, p0, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->w:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->x:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->y:Landroid/widget/TextView;

    const-string v4, "    N\u00e3o\nbloquear"

    const-string v5, "   Bloquear das\n18:00h at\u00e9 9:00h"

    const-string v6, "Bloquear\n24 horas"

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->a(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    iget-object v1, p0, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->w:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->x:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->y:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {p0}, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {p0}, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->a(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;III)V

    goto :goto_0

    .line 436
    :sswitch_1
    iget-object v1, p0, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->e:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->f:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->g:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {p0}, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {p0}, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->a(Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 437
    iget-object v1, p0, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->w:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->x:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->y:Landroid/widget/TextView;

    const-string v4, "    N\u00e3o\nbloquear"

    const-string v5, "   Bloquear das\n18:00h at\u00e9 9:00h"

    const-string v6, "Bloquear\n24 horas"

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->a(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    iget-object v1, p0, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->w:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->x:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->y:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {p0}, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {p0}, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->a(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;III)V

    goto/16 :goto_0

    .line 441
    :sswitch_2
    iget-object v1, p0, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->e:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->f:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->g:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {p0}, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {p0}, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->a(Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 442
    iget-object v1, p0, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->w:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->x:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->y:Landroid/widget/TextView;

    const-string v4, "    N\u00e3o\nbloquear"

    const-string v5, "   Bloquear das\n18:00h at\u00e9 9:00h"

    const-string v6, "Bloquear\n24 horas"

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->a(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    iget-object v1, p0, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->w:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->x:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->y:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {p0}, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {p0}, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->a(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;III)V

    goto/16 :goto_0

    .line 429
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x32 -> :sswitch_1
        0x64 -> :sswitch_2
    .end sparse-switch
.end method

.method public a(IILandroid/widget/SeekBar;)V
    .locals 11

    .prologue
    const v10, 0x7f0e0103

    const v9, 0x7f020623

    const v8, 0x7f0e00fa

    const v6, 0x7f020622

    .line 274
    const-string v2, ""

    .line 276
    sparse-switch p1, :sswitch_data_0

    :goto_0
    move-object v0, p0

    move-object v1, p0

    move v3, p2

    move v4, p1

    move-object v5, p3

    .line 308
    invoke-virtual/range {v0 .. v5}, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->a(Landroid/app/Activity;Ljava/lang/String;IILandroid/widget/SeekBar;)V

    .line 309
    return-void

    .line 278
    :sswitch_0
    const-string v0, "S"

    iput-object v0, p0, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->d:Ljava/lang/String;

    .line 279
    const v0, 0x7f0907af

    invoke-virtual {p0, v0}, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 281
    iget-object v1, p0, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->e:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->f:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->g:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {p0}, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {p0}, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->a(Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 282
    iget-object v1, p0, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->w:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->x:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->y:Landroid/widget/TextView;

    const-string v4, "    N\u00e3o\nbloquear"

    const-string v5, "   Bloquear das\n18:00h at\u00e9 9:00h"

    const-string v6, "Bloquear\n24 horas"

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->a(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    iget-object v1, p0, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->w:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->x:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->y:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {p0}, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {p0}, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->a(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;III)V

    move-object v2, v7

    .line 285
    goto :goto_0

    .line 288
    :sswitch_1
    const-string v0, "P"

    iput-object v0, p0, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->d:Ljava/lang/String;

    .line 289
    const v0, 0x7f090785

    invoke-virtual {p0, v0}, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 291
    iget-object v1, p0, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->e:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->f:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->g:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {p0}, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {p0}, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->a(Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 292
    iget-object v1, p0, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->w:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->x:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->y:Landroid/widget/TextView;

    const-string v4, "    N\u00e3o\nbloquear"

    const-string v5, "   Bloquear das\n18:00h at\u00e9 9:00h"

    const-string v6, "Bloquear\n24 horas"

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->a(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    iget-object v1, p0, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->w:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->x:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->y:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {p0}, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {p0}, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->a(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;III)V

    move-object v2, v7

    .line 296
    goto/16 :goto_0

    .line 298
    :sswitch_2
    const-string v0, "N"

    iput-object v0, p0, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->d:Ljava/lang/String;

    .line 299
    const v0, 0x7f090784

    invoke-virtual {p0, v0}, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 301
    iget-object v1, p0, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->e:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->f:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->g:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {p0}, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {p0}, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->a(Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 302
    iget-object v1, p0, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->w:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->x:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->y:Landroid/widget/TextView;

    const-string v4, "    N\u00e3o\nbloquear"

    const-string v5, "   Bloquear das\n18:00h at\u00e9 9:00h"

    const-string v6, "Bloquear\n24 horas"

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->a(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    iget-object v1, p0, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->w:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->x:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->y:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {p0}, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {p0}, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->a(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;III)V

    move-object v2, v7

    goto/16 :goto_0

    .line 276
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x32 -> :sswitch_1
        0x64 -> :sswitch_2
    .end sparse-switch
.end method

.method public a(Landroid/app/Activity;Ljava/lang/String;IILandroid/widget/SeekBar;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 354
    invoke-static {p1, v1}, Lmzq;->a(Landroid/app/Activity;Z)V

    .line 356
    new-instance v2, Landroid/app/Dialog;

    const v0, 0x7f0b0224

    invoke-direct {v2, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 357
    const v0, 0x7f040128

    invoke-virtual {v2, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 358
    invoke-virtual {v2, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 359
    const v0, 0x7f1005ee

    invoke-virtual {v2, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 360
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 362
    const v0, 0x7f1005f0

    invoke-virtual {v2, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/widget/Button;

    .line 363
    const-string v0, "Confirmar"

    invoke-virtual {v6, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 364
    new-instance v0, Lkbf;

    move-object v1, p0

    move-object v3, p5

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lkbf;-><init>(Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;Landroid/app/Dialog;Landroid/widget/SeekBar;II)V

    invoke-virtual {v6, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 397
    const v0, 0x7f1005ef

    invoke-virtual {v2, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 398
    const-string v1, "Cancelar"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 399
    new-instance v1, Lkbg;

    invoke-direct {v1, p0, p5, p3, v2}, Lkbg;-><init>(Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;Landroid/widget/SeekBar;ILandroid/app/Dialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 422
    new-instance v0, Lmyg;

    invoke-direct {v0, p1}, Lmyg;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v2, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 423
    new-instance v0, Lmyh;

    invoke-direct {v0, p1}, Lmyh;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v2, v0}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 424
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 426
    return-void
.end method

.method public a(Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 60
    invoke-virtual {p1, p4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 61
    invoke-virtual {p2, p5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 62
    invoke-virtual {p3, p6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 63
    return-void
.end method

.method public a(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;III)V
    .locals 0

    .prologue
    .line 82
    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 83
    invoke-virtual {p2, p5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 84
    invoke-virtual {p3, p6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 85
    return-void
.end method

.method public a(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 66
    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    invoke-virtual {p2, p5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    invoke-virtual {p3, p6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 89
    invoke-super {p0, p1}, Lgrs;->onCreate(Landroid/os/Bundle;)V

    .line 90
    const v0, 0x7f040078

    invoke-virtual {p0, v0}, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->setContentView(I)V

    .line 91
    const v0, 0x7f090a8a

    invoke-virtual {p0, v0}, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->c(I)V

    .line 92
    invoke-virtual {p0}, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->a()V

    .line 93
    return-void
.end method
