.class public Lbr/com/santander/uisdk/error/SantanderErrorView;
.super Landroid/support/v4/widget/NestedScrollView;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/LinearLayout;

.field private g:Landroid/widget/Button;

.field private h:Landroid/widget/LinearLayout;

.field private i:Landroid/support/v7/widget/RecyclerView;

.field private j:Lani;

.field private k:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    .line 45
    invoke-direct {p0, p1}, Landroid/support/v4/widget/NestedScrollView;-><init>(Landroid/content/Context;)V

    .line 47
    iput-object p1, p0, Lbr/com/santander/uisdk/error/SantanderErrorView;->a:Landroid/content/Context;

    .line 48
    invoke-direct {p0}, Lbr/com/santander/uisdk/error/SantanderErrorView;->a()V

    .line 49
    const/4 v0, 0x0

    invoke-direct {p0, v0, v1, v1}, Lbr/com/santander/uisdk/error/SantanderErrorView;->a(Landroid/util/AttributeSet;II)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x0

    .line 53
    invoke-direct {p0, p1, p2}, Landroid/support/v4/widget/NestedScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    iput-object p1, p0, Lbr/com/santander/uisdk/error/SantanderErrorView;->a:Landroid/content/Context;

    .line 56
    invoke-direct {p0}, Lbr/com/santander/uisdk/error/SantanderErrorView;->a()V

    .line 57
    invoke-direct {p0, p2, v0, v0}, Lbr/com/santander/uisdk/error/SantanderErrorView;->a(Landroid/util/AttributeSet;II)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 61
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v4/widget/NestedScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 63
    iput-object p1, p0, Lbr/com/santander/uisdk/error/SantanderErrorView;->a:Landroid/content/Context;

    .line 64
    invoke-direct {p0}, Lbr/com/santander/uisdk/error/SantanderErrorView;->a()V

    .line 65
    invoke-direct {p0, p2, p3, p3}, Lbr/com/santander/uisdk/error/SantanderErrorView;->a(Landroid/util/AttributeSet;II)V

    .line 66
    return-void
.end method

.method public static synthetic a(Lbr/com/santander/uisdk/error/SantanderErrorView;)Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lbr/com/santander/uisdk/error/SantanderErrorView;->k:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method private a()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 69
    iget-object v0, p0, Lbr/com/santander/uisdk/error/SantanderErrorView;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lalu;->santander_view_error:I

    invoke-virtual {v0, v1, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 71
    iget-object v0, p0, Lbr/com/santander/uisdk/error/SantanderErrorView;->a:Landroid/content/Context;

    const v1, 0x106000b

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lbr/com/santander/uisdk/error/SantanderErrorView;->setBackgroundColor(I)V

    .line 72
    invoke-virtual {p0, v3}, Lbr/com/santander/uisdk/error/SantanderErrorView;->setFillViewport(Z)V

    .line 74
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 75
    invoke-virtual {p0, v0}, Lbr/com/santander/uisdk/error/SantanderErrorView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 77
    sget v0, Lals;->views_error_image:I

    invoke-virtual {p0, v0}, Lbr/com/santander/uisdk/error/SantanderErrorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lbr/com/santander/uisdk/error/SantanderErrorView;->b:Landroid/widget/ImageView;

    .line 78
    sget v0, Lals;->views_error_title:I

    invoke-virtual {p0, v0}, Lbr/com/santander/uisdk/error/SantanderErrorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbr/com/santander/uisdk/error/SantanderErrorView;->c:Landroid/widget/TextView;

    .line 79
    sget v0, Lals;->views_error_sub_title:I

    invoke-virtual {p0, v0}, Lbr/com/santander/uisdk/error/SantanderErrorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbr/com/santander/uisdk/error/SantanderErrorView;->d:Landroid/widget/TextView;

    .line 80
    sget v0, Lals;->view_error_options_title:I

    invoke-virtual {p0, v0}, Lbr/com/santander/uisdk/error/SantanderErrorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbr/com/santander/uisdk/error/SantanderErrorView;->e:Landroid/widget/TextView;

    .line 82
    sget v0, Lals;->view_error_container_button:I

    invoke-virtual {p0, v0}, Lbr/com/santander/uisdk/error/SantanderErrorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lbr/com/santander/uisdk/error/SantanderErrorView;->f:Landroid/widget/LinearLayout;

    .line 83
    sget v0, Lals;->view_error_button_event:I

    invoke-virtual {p0, v0}, Lbr/com/santander/uisdk/error/SantanderErrorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lbr/com/santander/uisdk/error/SantanderErrorView;->g:Landroid/widget/Button;

    .line 84
    iget-object v0, p0, Lbr/com/santander/uisdk/error/SantanderErrorView;->g:Landroid/widget/Button;

    new-instance v1, Lann;

    invoke-direct {v1, p0}, Lann;-><init>(Lbr/com/santander/uisdk/error/SantanderErrorView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    sget v0, Lals;->view_error_container_options:I

    invoke-virtual {p0, v0}, Lbr/com/santander/uisdk/error/SantanderErrorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lbr/com/santander/uisdk/error/SantanderErrorView;->h:Landroid/widget/LinearLayout;

    .line 94
    sget v0, Lals;->view_error_recycler_view:I

    invoke-virtual {p0, v0}, Lbr/com/santander/uisdk/error/SantanderErrorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lbr/com/santander/uisdk/error/SantanderErrorView;->i:Landroid/support/v7/widget/RecyclerView;

    .line 96
    new-instance v0, Lani;

    invoke-direct {v0}, Lani;-><init>()V

    iput-object v0, p0, Lbr/com/santander/uisdk/error/SantanderErrorView;->j:Lani;

    .line 98
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v1, p0, Lbr/com/santander/uisdk/error/SantanderErrorView;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 99
    iget-object v1, p0, Lbr/com/santander/uisdk/error/SantanderErrorView;->i:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 100
    iget-object v0, p0, Lbr/com/santander/uisdk/error/SantanderErrorView;->i:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 101
    iget-object v0, p0, Lbr/com/santander/uisdk/error/SantanderErrorView;->i:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/DefaultItemAnimator;

    invoke-direct {v1}, Landroid/support/v7/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    .line 102
    iget-object v0, p0, Lbr/com/santander/uisdk/error/SantanderErrorView;->i:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lbr/com/santander/uisdk/error/SantanderErrorView;->j:Lani;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 103
    return-void
.end method

.method private a(Landroid/util/AttributeSet;II)V
    .locals 3

    .prologue
    .line 106
    iget-object v0, p0, Lbr/com/santander/uisdk/error/SantanderErrorView;->a:Landroid/content/Context;

    sget-object v1, Lalx;->SantanderErrorView:[I

    invoke-virtual {v0, p1, v1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 108
    if-eqz v0, :cond_4

    .line 110
    sget v1, Lalx;->SantanderErrorView_screen_error_type:I

    const/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lbr/com/santander/uisdk/error/SantanderErrorView;->setScreenType(I)V

    .line 112
    sget v1, Lalx;->SantanderErrorView_screen_error_icon:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 113
    sget v1, Lalx;->SantanderErrorView_screen_error_icon:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lbr/com/santander/uisdk/error/SantanderErrorView;->setIcon(I)V

    .line 116
    :cond_0
    sget v1, Lalx;->SantanderErrorView_screen_error_title:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 117
    sget v1, Lalx;->SantanderErrorView_screen_error_title:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lbr/com/santander/uisdk/error/SantanderErrorView;->setTextTitle(Ljava/lang/CharSequence;)V

    .line 120
    :cond_1
    sget v1, Lalx;->SantanderErrorView_screen_error_sub_title:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 121
    sget v1, Lalx;->SantanderErrorView_screen_error_sub_title:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lbr/com/santander/uisdk/error/SantanderErrorView;->setTextSubTitle(Ljava/lang/CharSequence;)V

    .line 124
    :cond_2
    sget v1, Lalx;->SantanderErrorView_screen_error_button_title:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 125
    sget v1, Lalx;->SantanderErrorView_screen_error_button_title:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lbr/com/santander/uisdk/error/SantanderErrorView;->setTextButton(Ljava/lang/CharSequence;)V

    .line 128
    :cond_3
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 130
    :cond_4
    return-void
.end method

.method private b()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 194
    iget-object v0, p0, Lbr/com/santander/uisdk/error/SantanderErrorView;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 196
    iget-object v0, p0, Lbr/com/santander/uisdk/error/SantanderErrorView;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 197
    iget-object v0, p0, Lbr/com/santander/uisdk/error/SantanderErrorView;->g:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 199
    iget-object v0, p0, Lbr/com/santander/uisdk/error/SantanderErrorView;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 200
    iget-object v0, p0, Lbr/com/santander/uisdk/error/SantanderErrorView;->e:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 201
    iget-object v0, p0, Lbr/com/santander/uisdk/error/SantanderErrorView;->i:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 202
    return-void
.end method


# virtual methods
.method public varargs a([Lbr/com/santander/uisdk/error/SantanderErrorItem;)V
    .locals 2
    .param p1    # [Lbr/com/santander/uisdk/error/SantanderErrorItem;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 149
    iget-object v0, p0, Lbr/com/santander/uisdk/error/SantanderErrorView;->j:Lani;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lani;->a(Ljava/util/List;)V

    .line 151
    iget-object v0, p0, Lbr/com/santander/uisdk/error/SantanderErrorView;->j:Lani;

    invoke-virtual {v0}, Lani;->getItemCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 152
    iget-object v0, p0, Lbr/com/santander/uisdk/error/SantanderErrorView;->e:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 154
    :cond_0
    return-void
.end method

.method public setIcon(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 145
    iget-object v0, p0, Lbr/com/santander/uisdk/error/SantanderErrorView;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 146
    return-void
.end method

.method public setOnButtonClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .prologue
    .line 205
    iput-object p1, p0, Lbr/com/santander/uisdk/error/SantanderErrorView;->k:Landroid/view/View$OnClickListener;

    .line 206
    return-void
.end method

.method public setScreenType(I)V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 157
    invoke-direct {p0}, Lbr/com/santander/uisdk/error/SantanderErrorView;->b()V

    .line 158
    packed-switch p1, :pswitch_data_0

    .line 191
    :goto_0
    return-void

    .line 160
    :pswitch_0
    iget-object v0, p0, Lbr/com/santander/uisdk/error/SantanderErrorView;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 161
    iget-object v0, p0, Lbr/com/santander/uisdk/error/SantanderErrorView;->i:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    goto :goto_0

    .line 165
    :pswitch_1
    iget-object v0, p0, Lbr/com/santander/uisdk/error/SantanderErrorView;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 166
    iget-object v0, p0, Lbr/com/santander/uisdk/error/SantanderErrorView;->g:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 170
    :pswitch_2
    iget-object v0, p0, Lbr/com/santander/uisdk/error/SantanderErrorView;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 171
    iget-object v0, p0, Lbr/com/santander/uisdk/error/SantanderErrorView;->g:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 173
    iget-object v0, p0, Lbr/com/santander/uisdk/error/SantanderErrorView;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 174
    iget-object v0, p0, Lbr/com/santander/uisdk/error/SantanderErrorView;->i:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    goto :goto_0

    .line 179
    :pswitch_3
    iget-object v0, p0, Lbr/com/santander/uisdk/error/SantanderErrorView;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 181
    iget-object v0, p0, Lbr/com/santander/uisdk/error/SantanderErrorView;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 182
    iget-object v0, p0, Lbr/com/santander/uisdk/error/SantanderErrorView;->g:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 184
    iget-object v0, p0, Lbr/com/santander/uisdk/error/SantanderErrorView;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 185
    iget-object v0, p0, Lbr/com/santander/uisdk/error/SantanderErrorView;->i:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    goto :goto_0

    .line 188
    :pswitch_4
    invoke-direct {p0}, Lbr/com/santander/uisdk/error/SantanderErrorView;->b()V

    goto :goto_0

    .line 158
    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public setTextButton(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lbr/com/santander/uisdk/error/SantanderErrorView;->g:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 134
    return-void
.end method

.method public setTextSubTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lbr/com/santander/uisdk/error/SantanderErrorView;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    return-void
.end method

.method public setTextTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lbr/com/santander/uisdk/error/SantanderErrorView;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    return-void
.end method
