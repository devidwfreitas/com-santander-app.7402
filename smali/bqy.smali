.class public Lbqy;
.super Landroid/app/Dialog;
.source "SourceFile"


# static fields
.field static final a:Ljava/lang/String; = "fbconnect://success"

.field static final b:Ljava/lang/String; = "fbconnect://cancel"

.field static final c:Z = false

.field private static final d:Ljava/lang/String; = "FacebookSDK.WebDialog"

.field private static final e:Ljava/lang/String; = "touch"

.field private static final f:I = 0x1069

.field private static final g:I = 0x1e0

.field private static final h:I = 0x320

.field private static final i:I = 0x320

.field private static final j:I = 0x500

.field private static final k:D = 0.5

.field private static final l:I = -0x34000000


# instance fields
.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Lbrf;

.field private p:Landroid/webkit/WebView;

.field private q:Landroid/app/ProgressDialog;

.field private r:Landroid/widget/ImageView;

.field private s:Landroid/widget/FrameLayout;

.field private t:Lbrg;

.field private u:Z

.field private v:Z

.field private w:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 144
    invoke-static {}, Lbhv;->o()I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lbqy;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    .line 145
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 156
    if-nez p3, :cond_0

    invoke-static {}, Lbhv;->o()I

    move-result p3

    :cond_0
    invoke-direct {p0, p1, p3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 110
    const-string v0, "fbconnect://success"

    iput-object v0, p0, Lbqy;->n:Ljava/lang/String;

    .line 117
    iput-boolean v1, p0, Lbqy;->u:Z

    .line 118
    iput-boolean v1, p0, Lbqy;->v:Z

    .line 119
    iput-boolean v1, p0, Lbqy;->w:Z

    .line 157
    iput-object p2, p0, Lbqy;->m:Ljava/lang/String;

    .line 158
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ILbrf;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 170
    if-nez p4, :cond_0

    invoke-static {}, Lbhv;->o()I

    move-result p4

    :cond_0
    invoke-direct {p0, p1, p4}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 110
    const-string v0, "fbconnect://success"

    iput-object v0, p0, Lbqy;->n:Ljava/lang/String;

    .line 117
    iput-boolean v5, p0, Lbqy;->u:Z

    .line 118
    iput-boolean v5, p0, Lbqy;->v:Z

    .line 119
    iput-boolean v5, p0, Lbqy;->w:Z

    .line 172
    if-nez p3, :cond_1

    .line 173
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .line 177
    :cond_1
    const-string v0, "redirect_uri"

    const-string v1, "fbconnect://success"

    invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    const-string v0, "display"

    const-string v1, "touch"

    invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    const-string v0, "sdk"

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v2, "android-%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 183
    invoke-static {}, Lbhv;->j()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 181
    invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    iput-object p5, p0, Lbqy;->o:Lbrf;

    .line 187
    const-string v0, "share"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "media"

    .line 188
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 189
    new-instance v0, Lbrg;

    invoke-direct {v0, p0, p2, p3}, Lbrg;-><init>(Lbqy;Ljava/lang/String;Landroid/os/Bundle;)V

    iput-object v0, p0, Lbqy;->t:Lbrg;

    .line 197
    :goto_0
    return-void

    .line 192
    :cond_2
    invoke-static {}, Lbqn;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 193
    invoke-static {}, Lbhv;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "dialog/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 191
    invoke-static {v0, v1, p3}, Lbqq;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/net/Uri;

    move-result-object v0

    .line 195
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbqy;->m:Ljava/lang/String;

    goto :goto_0
.end method

.method private a(IFII)I
    .locals 6

    .prologue
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    .line 374
    int-to-float v2, p1

    div-float/2addr v2, p2

    float-to-int v2, v2

    .line 376
    if-gt v2, p3, :cond_1

    .line 377
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 388
    :cond_0
    :goto_0
    int-to-double v2, p1

    mul-double/2addr v0, v2

    double-to-int v0, v0

    return v0

    .line 378
    :cond_1
    if-ge v2, p4, :cond_0

    .line 383
    sub-int v2, p4, v2

    int-to-double v2, v2

    sub-int v4, p4, p3

    int-to-double v4, v4

    div-double/2addr v2, v4

    mul-double/2addr v2, v0

    add-double/2addr v0, v2

    goto :goto_0
.end method

.method static synthetic a(Lbqy;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lbqy;->n:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lbqy;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lbqy;->m:Ljava/lang/String;

    return-object p1
.end method

.method private a(I)V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 438
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lbqy;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 439
    new-instance v1, Lbrb;

    invoke-virtual {p0}, Lbqy;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lbrb;-><init>(Lbqy;Landroid/content/Context;)V

    iput-object v1, p0, Lbqy;->p:Landroid/webkit/WebView;

    .line 451
    iget-object v1, p0, Lbqy;->p:Landroid/webkit/WebView;

    invoke-virtual {v1, v4}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 452
    iget-object v1, p0, Lbqy;->p:Landroid/webkit/WebView;

    invoke-virtual {v1, v4}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 453
    iget-object v1, p0, Lbqy;->p:Landroid/webkit/WebView;

    new-instance v2, Lbre;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lbre;-><init>(Lbqy;Lbqz;)V

    invoke-static {v1, v2}, Lcom/ca/android/app/CaMDOWebView;->setWebViewClient(Landroid/webkit/WebView;Landroid/webkit/WebViewClient;)V

    .line 454
    iget-object v1, p0, Lbqy;->p:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 455
    iget-object v1, p0, Lbqy;->p:Landroid/webkit/WebView;

    iget-object v2, p0, Lbqy;->m:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/ca/android/app/CaMDOWebView;->loadUrl(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 456
    iget-object v1, p0, Lbqy;->p:Landroid/webkit/WebView;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 458
    iget-object v1, p0, Lbqy;->p:Landroid/webkit/WebView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 459
    iget-object v1, p0, Lbqy;->p:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 460
    iget-object v1, p0, Lbqy;->p:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    .line 461
    iget-object v1, p0, Lbqy;->p:Landroid/webkit/WebView;

    invoke-virtual {v1, v5}, Landroid/webkit/WebView;->setFocusable(Z)V

    .line 462
    iget-object v1, p0, Lbqy;->p:Landroid/webkit/WebView;

    invoke-virtual {v1, v5}, Landroid/webkit/WebView;->setFocusableInTouchMode(Z)V

    .line 463
    iget-object v1, p0, Lbqy;->p:Landroid/webkit/WebView;

    new-instance v2, Lbrc;

    invoke-direct {v2, p0}, Lbrc;-><init>(Lbqy;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 474
    invoke-virtual {v0, p1, p1, p1, p1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 475
    iget-object v1, p0, Lbqy;->p:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 476
    const/high16 v1, -0x34000000    # -3.3554432E7f

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 477
    iget-object v1, p0, Lbqy;->s:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 478
    return-void
.end method

.method static synthetic a(Lbqy;I)V
    .locals 0

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lbqy;->a(I)V

    return-void
.end method

.method static synthetic a(Lbqy;Z)Z
    .locals 0

    .prologue
    .line 87
    iput-boolean p1, p0, Lbqy;->w:Z

    return p1
.end method

.method static synthetic b(Lbqy;)Z
    .locals 1

    .prologue
    .line 87
    iget-boolean v0, p0, Lbqy;->v:Z

    return v0
.end method

.method static synthetic c(Lbqy;)Landroid/app/ProgressDialog;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lbqy;->q:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic d(Lbqy;)Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lbqy;->s:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic e(Lbqy;)Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lbqy;->p:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic f(Lbqy;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lbqy;->r:Landroid/widget/ImageView;

    return-object v0
.end method

.method private f()V
    .locals 2

    .prologue
    .line 420
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lbqy;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lbqy;->r:Landroid/widget/ImageView;

    .line 422
    iget-object v0, p0, Lbqy;->r:Landroid/widget/ImageView;

    new-instance v1, Lbra;

    invoke-direct {v1, p0}, Lbra;-><init>(Lbqy;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 428
    invoke-virtual {p0}, Lbqy;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lbjt;->com_facebook_close:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 429
    iget-object v1, p0, Lbqy;->r:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 433
    iget-object v0, p0, Lbqy;->r:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 434
    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 2

    .prologue
    .line 325
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 327
    invoke-virtual {v0}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lbqq;->d(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 328
    invoke-virtual {v0}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbqq;->d(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 330
    return-object v1
.end method

.method public a()Lbrf;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lbqy;->o:Lbrf;

    return-object v0
.end method

.method protected a(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 392
    iget-object v0, p0, Lbqy;->o:Lbrf;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lbqy;->u:Z

    if-nez v0, :cond_0

    .line 393
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbqy;->u:Z

    .line 394
    iget-object v0, p0, Lbqy;->o:Lbrf;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lbrf;->a(Landroid/os/Bundle;Lbhp;)V

    .line 395
    invoke-virtual {p0}, Lbqy;->dismiss()V

    .line 397
    :cond_0
    return-void
.end method

.method public a(Lbrf;)V
    .locals 0

    .prologue
    .line 205
    iput-object p1, p0, Lbqy;->o:Lbrf;

    .line 206
    return-void
.end method

.method protected a(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 400
    iget-object v0, p0, Lbqy;->o:Lbrf;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lbqy;->u:Z

    if-nez v0, :cond_0

    .line 401
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbqy;->u:Z

    .line 403
    instance-of v0, p1, Lbhp;

    if-eqz v0, :cond_1

    .line 404
    check-cast p1, Lbhp;

    .line 408
    :goto_0
    iget-object v0, p0, Lbqy;->o:Lbrf;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lbrf;->a(Landroid/os/Bundle;Lbhp;)V

    .line 409
    invoke-virtual {p0}, Lbqy;->dismiss()V

    .line 411
    :cond_0
    return-void

    .line 406
    :cond_1
    new-instance v0, Lbhp;

    invoke-direct {v0, p1}, Lbhp;-><init>(Ljava/lang/Throwable;)V

    move-object p1, v0

    goto :goto_0
.end method

.method protected b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 321
    iput-object p1, p0, Lbqy;->n:Ljava/lang/String;

    .line 322
    return-void
.end method

.method protected b()Z
    .locals 1

    .prologue
    .line 334
    iget-boolean v0, p0, Lbqy;->u:Z

    return v0
.end method

.method protected c()Z
    .locals 1

    .prologue
    .line 338
    iget-boolean v0, p0, Lbqy;->w:Z

    return v0
.end method

.method public cancel()V
    .locals 1

    .prologue
    .line 414
    iget-object v0, p0, Lbqy;->o:Lbrf;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lbqy;->u:Z

    if-nez v0, :cond_0

    .line 415
    new-instance v0, Lbhr;

    invoke-direct {v0}, Lbhr;-><init>()V

    invoke-virtual {p0, v0}, Lbqy;->a(Ljava/lang/Throwable;)V

    .line 417
    :cond_0
    return-void
.end method

.method protected d()Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Lbqy;->p:Landroid/webkit/WebView;

    return-object v0
.end method

.method public dismiss()V
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lbqy;->p:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lbqy;->p:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 231
    :cond_0
    iget-boolean v0, p0, Lbqy;->v:Z

    if-nez v0, :cond_1

    .line 232
    iget-object v0, p0, Lbqy;->q:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lbqy;->q:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 233
    iget-object v0, p0, Lbqy;->q:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 236
    :cond_1
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 237
    return-void
.end method

.method public e()V
    .locals 6

    .prologue
    const/16 v5, 0x320

    .line 346
    invoke-virtual {p0}, Lbqy;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 347
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 348
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 349
    invoke-virtual {v0, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 352
    iget v0, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v1, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v0, v1, :cond_0

    iget v0, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 353
    :goto_0
    iget v1, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v1, v3, :cond_1

    iget v1, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 355
    :goto_1
    iget v3, v2, Landroid/util/DisplayMetrics;->density:F

    const/16 v4, 0x1e0

    .line 356
    invoke-direct {p0, v0, v3, v4, v5}, Lbqy;->a(IFII)I

    move-result v0

    iget v3, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 355
    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 358
    iget v3, v2, Landroid/util/DisplayMetrics;->density:F

    const/16 v4, 0x500

    .line 359
    invoke-direct {p0, v1, v3, v5, v4}, Lbqy;->a(IFII)I

    move-result v1

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 358
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 362
    invoke-virtual {p0}, Lbqy;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/view/Window;->setLayout(II)V

    .line 363
    return-void

    .line 352
    :cond_0
    iget v0, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    goto :goto_0

    .line 353
    :cond_1
    iget v1, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    goto :goto_1
.end method

.method public onAttachedToWindow()V
    .locals 1

    .prologue
    .line 267
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbqy;->v:Z

    .line 268
    invoke-super {p0}, Landroid/app/Dialog;->onAttachedToWindow()V

    .line 269
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x2

    .line 273
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 275
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lbqy;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lbqy;->q:Landroid/app/ProgressDialog;

    .line 276
    iget-object v0, p0, Lbqy;->q:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->requestWindowFeature(I)Z

    .line 277
    iget-object v0, p0, Lbqy;->q:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lbqy;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lbjx;->com_facebook_loading:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 279
    iget-object v0, p0, Lbqy;->q:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 280
    iget-object v0, p0, Lbqy;->q:Landroid/app/ProgressDialog;

    new-instance v1, Lbqz;

    invoke-direct {v1, p0}, Lbqz;-><init>(Lbqy;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 287
    invoke-virtual {p0, v4}, Lbqy;->requestWindowFeature(I)Z

    .line 288
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lbqy;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lbqy;->s:Landroid/widget/FrameLayout;

    .line 291
    invoke-virtual {p0}, Lbqy;->e()V

    .line 292
    invoke-virtual {p0}, Lbqy;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    .line 295
    invoke-virtual {p0}, Lbqy;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 301
    invoke-direct {p0}, Lbqy;->f()V

    .line 303
    iget-object v0, p0, Lbqy;->m:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 307
    iget-object v0, p0, Lbqy;->r:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 308
    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lbqy;->a(I)V

    .line 314
    :cond_0
    iget-object v0, p0, Lbqy;->s:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lbqy;->r:Landroid/widget/ImageView;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 317
    iget-object v0, p0, Lbqy;->s:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Lbqy;->setContentView(Landroid/view/View;)V

    .line 318
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 261
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbqy;->v:Z

    .line 262
    invoke-super {p0}, Landroid/app/Dialog;->onDetachedFromWindow()V

    .line 263
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 219
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 220
    invoke-virtual {p0}, Lbqy;->cancel()V

    .line 223
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 241
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    .line 242
    iget-object v0, p0, Lbqy;->t:Lbrg;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbqy;->t:Lbrg;

    invoke-virtual {v0}, Lbrg;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->PENDING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_0

    .line 243
    iget-object v0, p0, Lbqy;->t:Lbrg;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lbrg;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 244
    iget-object v0, p0, Lbqy;->q:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 248
    :goto_0
    return-void

    .line 246
    :cond_0
    invoke-virtual {p0}, Lbqy;->e()V

    goto :goto_0
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 252
    iget-object v0, p0, Lbqy;->t:Lbrg;

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lbqy;->t:Lbrg;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lbrg;->cancel(Z)Z

    .line 254
    iget-object v0, p0, Lbqy;->q:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 256
    :cond_0
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    .line 257
    return-void
.end method
