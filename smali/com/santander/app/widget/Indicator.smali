.class public Lcom/santander/app/widget/Indicator;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# static fields
.field private static final a:I = 0x8


# instance fields
.field private b:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/content/Context;

.field private d:Landroid/graphics/drawable/Drawable;

.field private e:Landroid/graphics/drawable/Drawable;

.field private f:I

.field private g:I

.field private h:Landroid/view/View;

.field private i:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 44
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 31
    iput-object v0, p0, Lcom/santander/app/widget/Indicator;->b:Ljava/util/Vector;

    .line 32
    iput-object v0, p0, Lcom/santander/app/widget/Indicator;->c:Landroid/content/Context;

    .line 34
    iput-object v0, p0, Lcom/santander/app/widget/Indicator;->d:Landroid/graphics/drawable/Drawable;

    .line 35
    iput-object v0, p0, Lcom/santander/app/widget/Indicator;->e:Landroid/graphics/drawable/Drawable;

    .line 37
    iput v1, p0, Lcom/santander/app/widget/Indicator;->f:I

    .line 38
    iput v1, p0, Lcom/santander/app/widget/Indicator;->g:I

    .line 45
    iput-object p1, p0, Lcom/santander/app/widget/Indicator;->c:Landroid/content/Context;

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 49
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    iput-object v0, p0, Lcom/santander/app/widget/Indicator;->b:Ljava/util/Vector;

    .line 32
    iput-object v0, p0, Lcom/santander/app/widget/Indicator;->c:Landroid/content/Context;

    .line 34
    iput-object v0, p0, Lcom/santander/app/widget/Indicator;->d:Landroid/graphics/drawable/Drawable;

    .line 35
    iput-object v0, p0, Lcom/santander/app/widget/Indicator;->e:Landroid/graphics/drawable/Drawable;

    .line 37
    iput v3, p0, Lcom/santander/app/widget/Indicator;->f:I

    .line 38
    iput v3, p0, Lcom/santander/app/widget/Indicator;->g:I

    .line 50
    iput-object p1, p0, Lcom/santander/app/widget/Indicator;->c:Landroid/content/Context;

    .line 51
    iget-object v0, p0, Lcom/santander/app/widget/Indicator;->c:Landroid/content/Context;

    sget-object v1, Lflv;->Indicator:[I

    invoke-virtual {v0, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 54
    :try_start_0
    invoke-static {}, Lmzr;->d()I

    move-result v1

    .line 56
    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 57
    invoke-virtual {p0}, Lcom/santander/app/widget/Indicator;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020229

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/santander/app/widget/Indicator;->d:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    :goto_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/santander/app/widget/Indicator;->e:Landroid/graphics/drawable/Drawable;

    .line 70
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 71
    return-void

    .line 58
    :cond_0
    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_2

    .line 60
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/santander/app/widget/Indicator;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02022c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/santander/app/widget/Indicator;->d:Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 64
    :catch_0
    move-exception v1

    .line 65
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/santander/app/widget/Indicator;->d:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 62
    :cond_2
    const/4 v1, 0x0

    :try_start_2
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/santander/app/widget/Indicator;->d:Landroid/graphics/drawable/Drawable;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0
.end method

.method private a(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 193
    iget v0, p0, Lcom/santander/app/widget/Indicator;->g:I

    if-nez v0, :cond_0

    .line 194
    const-string v0, ""

    .line 195
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/santander/app/widget/Indicator;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcom/santander/app/widget/Indicator;->g:I

    return v0
.end method

.method public b()V
    .locals 3

    .prologue
    .line 185
    iget-object v0, p0, Lcom/santander/app/widget/Indicator;->b:Ljava/util/Vector;

    if-eqz v0, :cond_0

    .line 186
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/santander/app/widget/Indicator;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/santander/app/widget/Indicator;->b:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/santander/app/widget/Indicator;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 186
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 190
    :cond_0
    return-void
.end method

.method public setIndicatorLayout(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 200
    iput-object p1, p0, Lcom/santander/app/widget/Indicator;->h:Landroid/view/View;

    .line 201
    return-void
.end method

.method public setSelected(I)V
    .locals 2

    .prologue
    .line 171
    iget v0, p0, Lcom/santander/app/widget/Indicator;->g:I

    const/16 v1, 0x8

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/santander/app/widget/Indicator;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 172
    iget-object v0, p0, Lcom/santander/app/widget/Indicator;->b:Ljava/util/Vector;

    iget v1, p0, Lcom/santander/app/widget/Indicator;->f:I

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/santander/app/widget/Indicator;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 173
    iput p1, p0, Lcom/santander/app/widget/Indicator;->f:I

    .line 174
    iget-object v0, p0, Lcom/santander/app/widget/Indicator;->b:Ljava/util/Vector;

    iget v1, p0, Lcom/santander/app/widget/Indicator;->f:I

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/santander/app/widget/Indicator;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 182
    :cond_0
    :goto_0
    return-void

    .line 175
    :cond_1
    iget-object v0, p0, Lcom/santander/app/widget/Indicator;->b:Ljava/util/Vector;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/santander/app/widget/Indicator;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 176
    iget-object v0, p0, Lcom/santander/app/widget/Indicator;->i:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/santander/app/widget/Indicator;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 178
    :cond_2
    iget-object v0, p0, Lcom/santander/app/widget/Indicator;->i:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/santander/app/widget/Indicator;->i:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/santander/app/widget/Indicator;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setSize(I)V
    .locals 7

    .prologue
    const v2, 0x7f04010f

    const/16 v6, 0xa

    const/4 v1, 0x0

    .line 78
    iput p1, p0, Lcom/santander/app/widget/Indicator;->g:I

    .line 79
    const/16 v0, 0x8

    if-ge p1, v0, :cond_3

    .line 82
    iget-object v0, p0, Lcom/santander/app/widget/Indicator;->b:Ljava/util/Vector;

    if-nez v0, :cond_0

    .line 83
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/santander/app/widget/Indicator;->b:Ljava/util/Vector;

    .line 85
    :cond_0
    iput v1, p0, Lcom/santander/app/widget/Indicator;->f:I

    .line 86
    iget-object v0, p0, Lcom/santander/app/widget/Indicator;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 87
    invoke-virtual {p0}, Lcom/santander/app/widget/Indicator;->removeAllViews()V

    move v0, v1

    .line 88
    :goto_0
    if-ge v0, p1, :cond_6

    .line 89
    new-instance v2, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/santander/app/widget/Indicator;->c:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 90
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v4, p0, Lcom/santander/app/widget/Indicator;->c:Landroid/content/Context;

    invoke-static {v6, v4}, Lmxi;->a(ILandroid/content/Context;)I

    move-result v4

    iget-object v5, p0, Lcom/santander/app/widget/Indicator;->c:Landroid/content/Context;

    invoke-static {v6, v5}, Lmxi;->a(ILandroid/content/Context;)I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 91
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 92
    add-int/lit8 v4, p1, -0x1

    if-eq v0, v4, :cond_1

    .line 93
    iget-object v4, p0, Lcom/santander/app/widget/Indicator;->c:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0099

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    invoke-virtual {v3, v1, v1, v4, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 95
    :cond_1
    if-nez v0, :cond_2

    .line 96
    iget-object v3, p0, Lcom/santander/app/widget/Indicator;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 100
    :goto_1
    iget-object v3, p0, Lcom/santander/app/widget/Indicator;->b:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 101
    invoke-virtual {p0, v2}, Lcom/santander/app/widget/Indicator;->addView(Landroid/view/View;)V

    .line 88
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 98
    :cond_2
    iget-object v3, p0, Lcom/santander/app/widget/Indicator;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 107
    :cond_3
    iget-object v0, p0, Lcom/santander/app/widget/Indicator;->b:Ljava/util/Vector;

    if-eqz v0, :cond_4

    .line 108
    iput v1, p0, Lcom/santander/app/widget/Indicator;->f:I

    .line 109
    iget-object v0, p0, Lcom/santander/app/widget/Indicator;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 110
    invoke-virtual {p0}, Lcom/santander/app/widget/Indicator;->removeAllViews()V

    .line 113
    :cond_4
    iget-object v0, p0, Lcom/santander/app/widget/Indicator;->h:Landroid/view/View;

    if-nez v0, :cond_5

    .line 114
    iget-object v0, p0, Lcom/santander/app/widget/Indicator;->c:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 116
    :try_start_0
    invoke-static {}, Lmzr;->d()I

    move-result v1

    .line 118
    packed-switch v1, :pswitch_data_0

    .line 127
    const v1, 0x7f04010f

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/santander/app/widget/Indicator;->h:Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    :goto_2
    iget-object v0, p0, Lcom/santander/app/widget/Indicator;->h:Landroid/view/View;

    const v1, 0x7f1005a6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/widget/Indicator;->i:Landroid/widget/TextView;

    .line 136
    :cond_5
    iget-object v0, p0, Lcom/santander/app/widget/Indicator;->i:Landroid/widget/TextView;

    if-eqz v0, :cond_6

    .line 137
    iget-object v0, p0, Lcom/santander/app/widget/Indicator;->i:Landroid/widget/TextView;

    iget v1, p0, Lcom/santander/app/widget/Indicator;->f:I

    invoke-direct {p0, v1}, Lcom/santander/app/widget/Indicator;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    :cond_6
    return-void

    .line 120
    :pswitch_0
    const v1, 0x7f040110

    :try_start_1
    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/santander/app/widget/Indicator;->h:Landroid/view/View;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 130
    :catch_0
    move-exception v1

    .line 131
    invoke-virtual {v0, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/widget/Indicator;->h:Landroid/view/View;

    goto :goto_2

    .line 124
    :pswitch_1
    const v1, 0x7f040111

    :try_start_2
    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/santander/app/widget/Indicator;->h:Landroid/view/View;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 118
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
