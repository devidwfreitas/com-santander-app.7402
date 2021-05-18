.class public Lacr;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/view/View;

.field protected b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/widget/TextView;

.field private d:Landroid/view/View;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/ImageButton;

.field private g:Landroid/view/View;

.field private h:Lack;


# direct methods
.method public constructor <init>(Lack;)V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lacr;->b:Ljava/util/List;

    .line 42
    iput-object p1, p0, Lacr;->h:Lack;

    .line 43
    invoke-direct {p0}, Lacr;->a()V

    .line 44
    return-void
.end method

.method public constructor <init>(Lack;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lacr;->b:Ljava/util/List;

    .line 47
    iput-object p1, p0, Lacr;->h:Lack;

    .line 48
    iput-object p2, p0, Lacr;->a:Landroid/view/View;

    .line 49
    invoke-direct {p0}, Lacr;->a()V

    .line 50
    return-void
.end method

.method static synthetic a(Lacr;)Landroid/view/View;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lacr;->d:Landroid/view/View;

    return-object v0
.end method

.method private a()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Lacr;->c()V

    .line 58
    invoke-direct {p0}, Lacr;->b()V

    .line 59
    return-void
.end method

.method private a(Ljava/util/Calendar;)V
    .locals 2

    .prologue
    .line 207
    const/4 v0, 0x5

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->add(II)V

    .line 208
    return-void
.end method

.method static synthetic b(Lacr;)Landroid/view/View;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lacr;->g:Landroid/view/View;

    return-object v0
.end method

.method private b()V
    .locals 3

    .prologue
    .line 63
    invoke-static {}, Laca;->a()Laca;

    move-result-object v0

    invoke-virtual {v0}, Laca;->b()Lach;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 64
    iget-object v0, p0, Lacr;->h:Lack;

    sget v1, Lla;->header_main:I

    invoke-virtual {v0, v1}, Lack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 65
    if-nez v0, :cond_0

    iget-object v1, p0, Lacr;->a:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 66
    iget-object v0, p0, Lacr;->a:Landroid/view/View;

    sget v1, Lla;->header_main:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 68
    :cond_0
    if-eqz v0, :cond_1

    .line 69
    sget-object v1, Lacx;->a:[I

    invoke-static {}, Laca;->a()Laca;

    move-result-object v2

    invoke-virtual {v2}, Laca;->b()Lach;

    move-result-object v2

    invoke-virtual {v2}, Lach;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 82
    iget-object v1, p0, Lacr;->h:Lack;

    invoke-virtual {v1}, Lack;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lkx;->inv_header_defaut:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 87
    :cond_1
    :goto_0
    return-void

    .line 71
    :pswitch_0
    iget-object v1, p0, Lacr;->h:Lack;

    invoke-virtual {v1}, Lack;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lkx;->inv_header_private:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 74
    :pswitch_1
    iget-object v1, p0, Lacr;->h:Lack;

    invoke-virtual {v1}, Lack;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lkx;->inv_header_select:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 78
    :pswitch_2
    iget-object v1, p0, Lacr;->h:Lack;

    invoke-virtual {v1}, Lack;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lkx;->inv_header_van_gogh:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 69
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private b(Ljava/util/Calendar;)V
    .locals 2

    .prologue
    .line 211
    const/4 v0, 0x5

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->add(II)V

    .line 212
    return-void
.end method

.method private c()V
    .locals 3

    .prologue
    .line 91
    iget-object v0, p0, Lacr;->a:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 92
    iget-object v0, p0, Lacr;->a:Landroid/view/View;

    sget v1, Lla;->error_dismiss:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 93
    iget-object v1, p0, Lacr;->a:Landroid/view/View;

    sget v2, Lla;->error_msg:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lacr;->c:Landroid/widget/TextView;

    .line 94
    iget-object v1, p0, Lacr;->a:Landroid/view/View;

    sget v2, Lla;->error_yellow:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lacr;->d:Landroid/view/View;

    .line 96
    if-eqz v0, :cond_0

    .line 97
    new-instance v1, Lacs;

    invoke-direct {v1, p0}, Lacs;-><init>(Lacr;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    :cond_0
    iget-object v0, p0, Lacr;->a:Landroid/view/View;

    sget v1, Lla;->msg_dismiss:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lacr;->f:Landroid/widget/ImageButton;

    .line 106
    iget-object v0, p0, Lacr;->a:Landroid/view/View;

    sget v1, Lla;->msg_msg:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lacr;->e:Landroid/widget/TextView;

    .line 107
    iget-object v0, p0, Lacr;->a:Landroid/view/View;

    sget v1, Lla;->success_green:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lacr;->g:Landroid/view/View;

    .line 109
    iget-object v0, p0, Lacr;->f:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    .line 110
    iget-object v0, p0, Lacr;->f:Landroid/widget/ImageButton;

    new-instance v1, Lact;

    invoke-direct {v1, p0}, Lact;-><init>(Lacr;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    :cond_1
    :goto_0
    return-void

    .line 120
    :cond_2
    invoke-virtual {p0}, Lacr;->e()Lack;

    move-result-object v0

    sget v1, Lla;->error_dismiss:I

    invoke-virtual {v0, v1}, Lack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 122
    if-eqz v0, :cond_3

    .line 123
    invoke-virtual {p0}, Lacr;->e()Lack;

    move-result-object v0

    sget v1, Lla;->error_dismiss:I

    invoke-virtual {v0, v1}, Lack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 124
    invoke-virtual {p0}, Lacr;->e()Lack;

    move-result-object v1

    sget v2, Lla;->error_msg:I

    invoke-virtual {v1, v2}, Lack;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lacr;->c:Landroid/widget/TextView;

    .line 125
    invoke-virtual {p0}, Lacr;->e()Lack;

    move-result-object v1

    sget v2, Lla;->error_yellow:I

    invoke-virtual {v1, v2}, Lack;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lacr;->d:Landroid/view/View;

    .line 127
    new-instance v1, Lacu;

    invoke-direct {v1, p0}, Lacu;-><init>(Lacr;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    :cond_3
    invoke-virtual {p0}, Lacr;->e()Lack;

    move-result-object v0

    sget v1, Lla;->msg_dismiss:I

    invoke-virtual {v0, v1}, Lack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lacr;->f:Landroid/widget/ImageButton;

    .line 137
    iget-object v0, p0, Lacr;->f:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    .line 138
    invoke-virtual {p0}, Lacr;->e()Lack;

    move-result-object v0

    sget v1, Lla;->msg_dismiss:I

    invoke-virtual {v0, v1}, Lack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lacr;->f:Landroid/widget/ImageButton;

    .line 139
    invoke-virtual {p0}, Lacr;->e()Lack;

    move-result-object v0

    sget v1, Lla;->msg_msg:I

    invoke-virtual {v0, v1}, Lack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lacr;->e:Landroid/widget/TextView;

    .line 140
    invoke-virtual {p0}, Lacr;->e()Lack;

    move-result-object v0

    sget v1, Lla;->success_green:I

    invoke-virtual {v0, v1}, Lack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lacr;->g:Landroid/view/View;

    .line 142
    iget-object v0, p0, Lacr;->f:Landroid/widget/ImageButton;

    new-instance v1, Lacv;

    invoke-direct {v1, p0}, Lacv;-><init>(Lacr;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public varargs a(I[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lacr;->h:Lack;

    invoke-virtual {v0, p1, p2}, Lack;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljava/util/Calendar;Ljava/lang/Integer;)Ljava/util/Calendar;
    .locals 5
    .param p1    # Ljava/util/Calendar;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Integer;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x7

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 184
    invoke-static {}, Laca;->a()Laca;

    move-result-object v0

    invoke-virtual {v0, p1}, Laca;->a(Ljava/util/Calendar;)Z

    move-result v0

    .line 185
    if-eqz v0, :cond_0

    .line 186
    invoke-direct {p0, p1}, Lacr;->b(Ljava/util/Calendar;)V

    .line 189
    :cond_0
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_3

    const/16 v0, 0xb

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-le v0, v3, :cond_3

    move v0, v1

    .line 190
    :goto_0
    if-eqz v0, :cond_1

    .line 191
    invoke-direct {p0, p1}, Lacr;->b(Ljava/util/Calendar;)V

    .line 194
    :cond_1
    invoke-virtual {p1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-ne v0, v1, :cond_4

    move v0, v1

    .line 195
    :goto_1
    invoke-virtual {p1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v3, v4, :cond_5

    .line 197
    :goto_2
    if-eqz v1, :cond_6

    .line 198
    invoke-direct {p0, p1}, Lacr;->a(Ljava/util/Calendar;)V

    .line 203
    :cond_2
    :goto_3
    return-object p1

    :cond_3
    move v0, v2

    .line 189
    goto :goto_0

    :cond_4
    move v0, v2

    .line 194
    goto :goto_1

    :cond_5
    move v1, v2

    .line 195
    goto :goto_2

    .line 199
    :cond_6
    if-eqz v0, :cond_2

    .line 200
    invoke-direct {p0, p1}, Lacr;->b(Ljava/util/Calendar;)V

    goto :goto_3
.end method

.method public a(I)V
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lacr;->h:Lack;

    invoke-virtual {v0}, Lack;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lacr;->a(Ljava/lang/String;)V

    .line 154
    return-void
.end method

.method protected a(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 271
    invoke-virtual {p0}, Lacr;->e()Lack;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Lack;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 272
    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 273
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 157
    iget-object v0, p0, Lacr;->c:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lacr;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    iget-object v0, p0, Lacr;->d:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 161
    :cond_0
    return-void
.end method

.method protected a(Ltj;)V
    .locals 2

    .prologue
    .line 281
    new-instance v0, Lte;

    invoke-virtual {p0}, Lacr;->e()Lack;

    move-result-object v1

    invoke-direct {v0, v1}, Lte;-><init>(Landroid/content/Context;)V

    invoke-static {}, Laca;->a()Laca;

    move-result-object v1

    invoke-virtual {v1}, Laca;->b()Lach;

    move-result-object v1

    invoke-virtual {v1}, Lach;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lacr;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lte;->a(Ljava/lang/String;Ltj;)V

    .line 282
    return-void
.end method

.method protected varargs a([Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 225
    iget-object v1, p0, Lacr;->b:Ljava/util/List;

    aget-object v2, p1, v0

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 226
    array-length v2, p1

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v0, p1, v1

    .line 227
    instance-of v3, v0, Landroid/widget/TextView;

    if-eqz v3, :cond_0

    .line 228
    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lacr;->e()Lack;

    move-result-object v3

    invoke-virtual {v3}, Lack;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lkx;->inv_red_three:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 226
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 230
    :cond_0
    invoke-virtual {p0}, Lacr;->e()Lack;

    move-result-object v3

    invoke-virtual {v3}, Lack;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lkx;->inv_red_three:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_1

    .line 233
    :cond_1
    return-void
.end method

.method protected a(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;)Z
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 257
    :try_start_0
    invoke-static {p1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    .line 259
    if-nez p3, :cond_1

    const-wide v2, 0x7fefffffffffffffL    # Double.MAX_VALUE

    :goto_0
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    .line 260
    if-nez p2, :cond_2

    const-wide/16 v2, 0x0

    :goto_1
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    .line 262
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    cmpl-double v2, v6, v2

    if-ltz v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    cmpg-double v1, v2, v4

    if-gtz v1, :cond_0

    const/4 v0, 0x1

    .line 266
    :cond_0
    :goto_2
    return v0

    .line 259
    :cond_1
    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    goto :goto_0

    .line 260
    :cond_2
    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    goto :goto_1

    .line 264
    :catch_0
    move-exception v1

    .line 265
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public b(I)I
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lacr;->h:Lack;

    invoke-virtual {v0}, Lack;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0
.end method

.method public b(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 276
    invoke-virtual {p0}, Lacr;->e()Lack;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Lack;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 277
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 278
    return-void
.end method

.method protected b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 164
    invoke-virtual {p0}, Lacr;->e()Lack;

    move-result-object v0

    sget v1, Lla;->msg_dismiss:I

    invoke-virtual {v0, v1}, Lack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lacr;->f:Landroid/widget/ImageButton;

    .line 165
    iget-object v0, p0, Lacr;->f:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 166
    invoke-virtual {p0}, Lacr;->e()Lack;

    move-result-object v0

    sget v1, Lla;->msg_dismiss:I

    invoke-virtual {v0, v1}, Lack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lacr;->f:Landroid/widget/ImageButton;

    .line 167
    invoke-virtual {p0}, Lacr;->e()Lack;

    move-result-object v0

    sget v1, Lla;->msg_msg:I

    invoke-virtual {v0, v1}, Lack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lacr;->e:Landroid/widget/TextView;

    .line 168
    invoke-virtual {p0}, Lacr;->e()Lack;

    move-result-object v0

    sget v1, Lla;->success_green:I

    invoke-virtual {v0, v1}, Lack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lacr;->g:Landroid/view/View;

    .line 170
    iget-object v0, p0, Lacr;->f:Landroid/widget/ImageButton;

    new-instance v1, Lacw;

    invoke-direct {v1, p0}, Lacw;-><init>(Lacr;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 177
    :cond_0
    iget-object v0, p0, Lacr;->e:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 178
    iget-object v0, p0, Lacr;->e:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 179
    iget-object v0, p0, Lacr;->g:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 181
    :cond_1
    return-void
.end method

.method protected varargs b([Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 237
    iget-object v1, p0, Lacr;->b:Ljava/util/List;

    aget-object v2, p1, v0

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 238
    array-length v3, p1

    move v2, v0

    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v1, p1, v2

    .line 239
    instance-of v0, v1, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    move-object v0, v1

    .line 240
    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, ":"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 241
    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lacr;->e()Lack;

    move-result-object v0

    invoke-virtual {v0}, Lack;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Lkx;->inv_warm_grey:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 238
    :goto_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 243
    :cond_0
    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lacr;->e()Lack;

    move-result-object v0

    invoke-virtual {v0}, Lack;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Lkx;->inv_brownish_grey:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 246
    :cond_1
    invoke-virtual {p0}, Lacr;->e()Lack;

    move-result-object v0

    invoke-virtual {v0}, Lack;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Lkx;->inv_pinkish_grey:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_1

    .line 249
    :cond_2
    return-void
.end method

.method public c(I)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 293
    invoke-virtual {p0}, Lacr;->e()Lack;

    move-result-object v0

    invoke-virtual {v0}, Lack;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method protected c(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 216
    :try_start_0
    invoke-static {}, Lji;->a()Lji;

    move-result-object v0

    invoke-virtual {v0, p1}, Lji;->f(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 219
    :goto_0
    return-object p1

    .line 218
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public e()Lack;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lacr;->h:Lack;

    return-object v0
.end method

.method protected f()Z
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lacr;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method
