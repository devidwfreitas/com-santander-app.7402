.class public Lbtp;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:J = 0x1770L


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Landroid/content/Context;

.field private e:Lbtt;

.field private f:Landroid/widget/PopupWindow;

.field private g:Lbtu;

.field private h:J

.field private final i:Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/view/View;)V
    .locals 2

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    sget-object v0, Lbtu;->BLUE:Lbtu;

    iput-object v0, p0, Lbtp;->g:Lbtu;

    .line 70
    const-wide/16 v0, 0x1770

    iput-wide v0, p0, Lbtp;->h:J

    .line 72
    new-instance v0, Lbtq;

    invoke-direct {v0, p0}, Lbtq;-><init>(Lbtp;)V

    iput-object v0, p0, Lbtp;->i:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 94
    iput-object p1, p0, Lbtp;->b:Ljava/lang/String;

    .line 95
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lbtp;->c:Ljava/lang/ref/WeakReference;

    .line 96
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lbtp;->d:Landroid/content/Context;

    .line 97
    return-void
.end method

.method static synthetic a(Lbtp;)Ljava/lang/ref/WeakReference;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lbtp;->c:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic b(Lbtp;)Landroid/widget/PopupWindow;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lbtp;->f:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic c(Lbtp;)Lbtt;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lbtp;->e:Lbtt;

    return-object v0
.end method

.method private c()V
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lbtp;->f:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbtp;->f:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lbtp;->f:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isAboveAnchor()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 178
    iget-object v0, p0, Lbtp;->e:Lbtt;

    invoke-virtual {v0}, Lbtt;->b()V

    .line 183
    :cond_0
    :goto_0
    return-void

    .line 180
    :cond_1
    iget-object v0, p0, Lbtp;->e:Lbtt;

    invoke-virtual {v0}, Lbtt;->a()V

    goto :goto_0
.end method

.method private d()V
    .locals 2

    .prologue
    .line 196
    invoke-direct {p0}, Lbtp;->e()V

    .line 197
    iget-object v0, p0, Lbtp;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lbtp;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lbtp;->i:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 200
    :cond_0
    return-void
.end method

.method private e()V
    .locals 2

    .prologue
    .line 203
    iget-object v0, p0, Lbtp;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lbtp;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lbtp;->i:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 207
    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    const/high16 v3, -0x80000000

    .line 111
    iget-object v0, p0, Lbtp;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 112
    new-instance v0, Lbtt;

    iget-object v1, p0, Lbtp;->d:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lbtt;-><init>(Lbtp;Landroid/content/Context;)V

    iput-object v0, p0, Lbtp;->e:Lbtt;

    .line 113
    iget-object v0, p0, Lbtp;->e:Lbtt;

    sget v1, Lbju;->com_facebook_tooltip_bubble_view_text_body:I

    invoke-virtual {v0, v1}, Lbtt;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 115
    iget-object v1, p0, Lbtp;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    iget-object v0, p0, Lbtp;->g:Lbtu;

    sget-object v1, Lbtu;->BLUE:Lbtu;

    if-ne v0, v1, :cond_2

    .line 117
    iget-object v0, p0, Lbtp;->e:Lbtt;

    invoke-static {v0}, Lbtt;->a(Lbtt;)Landroid/view/View;

    move-result-object v0

    sget v1, Lbjt;->com_facebook_tooltip_blue_background:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 119
    iget-object v0, p0, Lbtp;->e:Lbtt;

    invoke-static {v0}, Lbtt;->b(Lbtt;)Landroid/widget/ImageView;

    move-result-object v0

    sget v1, Lbjt;->com_facebook_tooltip_blue_bottomnub:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 121
    iget-object v0, p0, Lbtp;->e:Lbtt;

    invoke-static {v0}, Lbtt;->c(Lbtt;)Landroid/widget/ImageView;

    move-result-object v0

    sget v1, Lbjt;->com_facebook_tooltip_blue_topnub:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 123
    iget-object v0, p0, Lbtp;->e:Lbtt;

    invoke-static {v0}, Lbtt;->d(Lbtt;)Landroid/widget/ImageView;

    move-result-object v0

    sget v1, Lbjt;->com_facebook_tooltip_blue_xout:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 134
    :goto_0
    iget-object v0, p0, Lbtp;->d:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 135
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 136
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 137
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 138
    invoke-direct {p0}, Lbtp;->d()V

    .line 139
    iget-object v2, p0, Lbtp;->e:Lbtt;

    .line 140
    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 141
    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 139
    invoke-virtual {v2, v1, v0}, Lbtt;->measure(II)V

    .line 142
    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v1, p0, Lbtp;->e:Lbtt;

    iget-object v2, p0, Lbtp;->e:Lbtt;

    .line 144
    invoke-virtual {v2}, Lbtt;->getMeasuredWidth()I

    move-result v2

    iget-object v3, p0, Lbtp;->e:Lbtt;

    .line 145
    invoke-virtual {v3}, Lbtt;->getMeasuredHeight()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v0, p0, Lbtp;->f:Landroid/widget/PopupWindow;

    .line 146
    iget-object v1, p0, Lbtp;->f:Landroid/widget/PopupWindow;

    iget-object v0, p0, Lbtp;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;)V

    .line 147
    invoke-direct {p0}, Lbtp;->c()V

    .line 148
    iget-wide v0, p0, Lbtp;->h:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 149
    iget-object v0, p0, Lbtp;->e:Lbtt;

    new-instance v1, Lbtr;

    invoke-direct {v1, p0}, Lbtr;-><init>(Lbtp;)V

    iget-wide v2, p0, Lbtp;->h:J

    invoke-virtual {v0, v1, v2, v3}, Lbtt;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 156
    :cond_0
    iget-object v0, p0, Lbtp;->f:Landroid/widget/PopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 157
    iget-object v0, p0, Lbtp;->e:Lbtt;

    new-instance v1, Lbts;

    invoke-direct {v1, p0}, Lbts;-><init>(Lbtp;)V

    invoke-virtual {v0, v1}, Lbtt;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    :cond_1
    return-void

    .line 125
    :cond_2
    iget-object v0, p0, Lbtp;->e:Lbtt;

    invoke-static {v0}, Lbtt;->a(Lbtt;)Landroid/view/View;

    move-result-object v0

    sget v1, Lbjt;->com_facebook_tooltip_black_background:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 127
    iget-object v0, p0, Lbtp;->e:Lbtt;

    invoke-static {v0}, Lbtt;->b(Lbtt;)Landroid/widget/ImageView;

    move-result-object v0

    sget v1, Lbjt;->com_facebook_tooltip_black_bottomnub:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 129
    iget-object v0, p0, Lbtp;->e:Lbtt;

    invoke-static {v0}, Lbtt;->c(Lbtt;)Landroid/widget/ImageView;

    move-result-object v0

    sget v1, Lbjt;->com_facebook_tooltip_black_topnub:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 131
    iget-object v0, p0, Lbtp;->e:Lbtt;

    invoke-static {v0}, Lbtt;->d(Lbtt;)Landroid/widget/ImageView;

    move-result-object v0

    sget v1, Lbjt;->com_facebook_tooltip_black_xout:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0
.end method

.method public a(J)V
    .locals 1

    .prologue
    .line 172
    iput-wide p1, p0, Lbtp;->h:J

    .line 173
    return-void
.end method

.method public a(Lbtu;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lbtp;->g:Lbtu;

    .line 105
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 189
    invoke-direct {p0}, Lbtp;->e()V

    .line 190
    iget-object v0, p0, Lbtp;->f:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lbtp;->f:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 193
    :cond_0
    return-void
.end method
