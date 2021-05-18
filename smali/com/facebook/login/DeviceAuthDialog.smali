.class public Lcom/facebook/login/DeviceAuthDialog;
.super Landroid/support/v4/app/DialogFragment;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "device/login"

.field private static final b:Ljava/lang/String; = "device/login_status"

.field private static final c:Ljava/lang/String; = "request_state"

.field private static final d:I = 0x149634

.field private static final e:I = 0x149635

.field private static final f:I = 0x149636

.field private static final g:I = 0x149620


# instance fields
.field private h:Landroid/widget/ProgressBar;

.field private i:Landroid/widget/TextView;

.field private j:Lcom/facebook/login/DeviceAuthMethodHandler;

.field private k:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private volatile l:Lbit;

.field private volatile m:Ljava/util/concurrent/ScheduledFuture;

.field private volatile n:Lcom/facebook/login/DeviceAuthDialog$RequestState;

.field private o:Landroid/app/Dialog;

.field private p:Z

.field private q:Z

.field private r:Lcom/facebook/login/LoginClient$Request;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 75
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 88
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 96
    iput-boolean v1, p0, Lcom/facebook/login/DeviceAuthDialog;->p:Z

    .line 97
    iput-boolean v1, p0, Lcom/facebook/login/DeviceAuthDialog;->q:Z

    .line 98
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->r:Lcom/facebook/login/LoginClient$Request;

    return-void
.end method

.method public static synthetic a(Lcom/facebook/login/DeviceAuthDialog;Z)Landroid/view/View;
    .locals 1

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/facebook/login/DeviceAuthDialog;->a(Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private a(Z)Landroid/view/View;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 239
    invoke-virtual {p0}, Lcom/facebook/login/DeviceAuthDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 240
    if-eqz p1, :cond_0

    .line 241
    sget v1, Lbjw;->com_facebook_smart_device_dialog_fragment:I

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    .line 245
    :goto_0
    sget v0, Lbju;->progress_bar:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->h:Landroid/widget/ProgressBar;

    .line 246
    sget v0, Lbju;->confirmation_code:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->i:Landroid/widget/TextView;

    .line 248
    sget v0, Lbju;->cancel_button:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 249
    new-instance v2, Lbrp;

    invoke-direct {v2, p0}, Lbrp;-><init>(Lcom/facebook/login/DeviceAuthDialog;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 256
    sget v0, Lbju;->com_facebook_device_auth_instructions:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 258
    sget v2, Lbjx;->com_facebook_device_auth_instructions:I

    .line 259
    invoke-virtual {p0, v2}, Lcom/facebook/login/DeviceAuthDialog;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    .line 258
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 260
    return-object v1

    .line 243
    :cond_0
    sget v1, Lbjw;->com_facebook_device_auth_dialog_fragment:I

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    goto :goto_0
.end method

.method private a()V
    .locals 4

    .prologue
    .line 264
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->n:Lcom/facebook/login/DeviceAuthDialog$RequestState;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/facebook/login/DeviceAuthDialog$RequestState;->b(J)V

    .line 265
    invoke-direct {p0}, Lcom/facebook/login/DeviceAuthDialog;->c()Lcom/facebook/GraphRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/GraphRequest;->n()Lbit;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->l:Lbit;

    .line 266
    return-void
.end method

.method private a(Lbhp;)V
    .locals 3

    .prologue
    .line 433
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 442
    :goto_0
    return-void

    .line 437
    :cond_0
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->n:Lcom/facebook/login/DeviceAuthDialog$RequestState;

    if-eqz v0, :cond_1

    .line 438
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->n:Lcom/facebook/login/DeviceAuthDialog$RequestState;

    invoke-virtual {v0}, Lcom/facebook/login/DeviceAuthDialog$RequestState;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbmo;->b(Ljava/lang/String;)V

    .line 440
    :cond_1
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->j:Lcom/facebook/login/DeviceAuthMethodHandler;

    invoke-virtual {v0, p1}, Lcom/facebook/login/DeviceAuthMethodHandler;->a(Ljava/lang/Exception;)V

    .line 441
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->o:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0
.end method

.method private a(Lcom/facebook/login/DeviceAuthDialog$RequestState;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 217
    iput-object p1, p0, Lcom/facebook/login/DeviceAuthDialog;->n:Lcom/facebook/login/DeviceAuthDialog$RequestState;

    .line 218
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->i:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/facebook/login/DeviceAuthDialog$RequestState;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 219
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->i:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 220
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->h:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/ca/android/app/CaMDOProgressBar;->setVisibility(Landroid/widget/ProgressBar;I)V

    .line 222
    iget-boolean v0, p0, Lcom/facebook/login/DeviceAuthDialog;->q:Z

    if-nez v0, :cond_0

    .line 223
    invoke-virtual {p1}, Lcom/facebook/login/DeviceAuthDialog$RequestState;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbmo;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    invoke-virtual {p0}, Lcom/facebook/login/DeviceAuthDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lbla;->c(Landroid/content/Context;)Lbla;

    move-result-object v0

    .line 225
    const-string v1, "fb_smart_login_service"

    invoke-virtual {v0, v1, v2, v2}, Lbla;->a(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;)V

    .line 230
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/login/DeviceAuthDialog$RequestState;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 231
    invoke-direct {p0}, Lcom/facebook/login/DeviceAuthDialog;->b()V

    .line 235
    :goto_0
    return-void

    .line 233
    :cond_1
    invoke-direct {p0}, Lcom/facebook/login/DeviceAuthDialog;->a()V

    goto :goto_0
.end method

.method public static synthetic a(Lcom/facebook/login/DeviceAuthDialog;Lbhp;)V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/facebook/login/DeviceAuthDialog;->a(Lbhp;)V

    return-void
.end method

.method public static synthetic a(Lcom/facebook/login/DeviceAuthDialog;Lcom/facebook/login/DeviceAuthDialog$RequestState;)V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/facebook/login/DeviceAuthDialog;->a(Lcom/facebook/login/DeviceAuthDialog$RequestState;)V

    return-void
.end method

.method public static synthetic a(Lcom/facebook/login/DeviceAuthDialog;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/facebook/login/DeviceAuthDialog;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Lcom/facebook/login/DeviceAuthDialog;Ljava/lang/String;Lbqv;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/login/DeviceAuthDialog;->a(Ljava/lang/String;Lbqv;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Lcom/facebook/login/DeviceAuthDialog;Ljava/lang/String;Lbqv;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/facebook/login/DeviceAuthDialog;->a(Ljava/lang/String;Lbqv;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 10

    .prologue
    const/4 v4, 0x0

    .line 357
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 358
    const-string v0, "fields"

    const-string v1, "id,permissions,name"

    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    new-instance v0, Lcom/facebook/AccessToken;

    .line 361
    invoke-static {}, Lbhv;->l()Ljava/lang/String;

    move-result-object v2

    const-string v3, "0"

    move-object v1, p1

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    move-object v8, v4

    invoke-direct/range {v0 .. v8}, Lcom/facebook/AccessToken;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;Lbgy;Ljava/util/Date;Ljava/util/Date;)V

    .line 369
    new-instance v1, Lcom/facebook/GraphRequest;

    const-string v3, "me"

    sget-object v5, Lbiz;->GET:Lbiz;

    new-instance v6, Lbru;

    invoke-direct {v6, p0, p1}, Lbru;-><init>(Lcom/facebook/login/DeviceAuthDialog;Ljava/lang/String;)V

    move-object v2, v0

    move-object v4, v9

    invoke-direct/range {v1 .. v6}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lbiz;Lbim;)V

    .line 414
    invoke-virtual {v1}, Lcom/facebook/GraphRequest;->n()Lbit;

    .line 415
    return-void
.end method

.method private a(Ljava/lang/String;Lbqv;Ljava/lang/String;)V
    .locals 9

    .prologue
    const/4 v7, 0x0

    .line 420
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->j:Lcom/facebook/login/DeviceAuthMethodHandler;

    .line 422
    invoke-static {}, Lbhv;->l()Ljava/lang/String;

    move-result-object v2

    .line 424
    invoke-virtual {p2}, Lbqv;->a()Ljava/util/List;

    move-result-object v4

    .line 425
    invoke-virtual {p2}, Lbqv;->b()Ljava/util/List;

    move-result-object v5

    sget-object v6, Lbgy;->DEVICE_AUTH:Lbgy;

    move-object v1, p3

    move-object v3, p1

    move-object v8, v7

    .line 420
    invoke-virtual/range {v0 .. v8}, Lcom/facebook/login/DeviceAuthMethodHandler;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;Lbgy;Ljava/util/Date;Ljava/util/Date;)V

    .line 429
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->o:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 430
    return-void
.end method

.method private a(Ljava/lang/String;Lbqv;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 332
    invoke-virtual {p0}, Lcom/facebook/login/DeviceAuthDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lbjx;->com_facebook_smart_login_confirmation_title:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 334
    invoke-virtual {p0}, Lcom/facebook/login/DeviceAuthDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lbjx;->com_facebook_smart_login_confirmation_continue_as:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 336
    invoke-virtual {p0}, Lcom/facebook/login/DeviceAuthDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lbjx;->com_facebook_smart_login_confirmation_cancel:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 338
    new-array v3, v5, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p4, v3, v4

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 339
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/facebook/login/DeviceAuthDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 340
    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 341
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v4, Lbrt;

    invoke-direct {v4, p0, p1, p2, p3}, Lbrt;-><init>(Lcom/facebook/login/DeviceAuthDialog;Ljava/lang/String;Lbqv;Ljava/lang/String;)V

    .line 342
    invoke-virtual {v0, v1, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lbrs;

    invoke-direct {v1, p0}, Lbrs;-><init>(Lcom/facebook/login/DeviceAuthDialog;)V

    .line 347
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 354
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 355
    return-void
.end method

.method public static synthetic a(Lcom/facebook/login/DeviceAuthDialog;)Z
    .locals 1

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/facebook/login/DeviceAuthDialog;->p:Z

    return v0
.end method

.method private b()V
    .locals 5

    .prologue
    .line 269
    invoke-static {}, Lcom/facebook/login/DeviceAuthMethodHandler;->c()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Lbrq;

    invoke-direct {v1, p0}, Lbrq;-><init>(Lcom/facebook/login/DeviceAuthDialog;)V

    iget-object v2, p0, Lcom/facebook/login/DeviceAuthDialog;->n:Lcom/facebook/login/DeviceAuthDialog$RequestState;

    .line 276
    invoke-virtual {v2}, Lcom/facebook/login/DeviceAuthDialog$RequestState;->c()J

    move-result-wide v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 269
    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->m:Ljava/util/concurrent/ScheduledFuture;

    .line 278
    return-void
.end method

.method public static synthetic b(Lcom/facebook/login/DeviceAuthDialog;)V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/facebook/login/DeviceAuthDialog;->d()V

    return-void
.end method

.method public static synthetic b(Lcom/facebook/login/DeviceAuthDialog;Z)Z
    .locals 0

    .prologue
    .line 75
    iput-boolean p1, p0, Lcom/facebook/login/DeviceAuthDialog;->q:Z

    return p1
.end method

.method private c()Lcom/facebook/GraphRequest;
    .locals 6

    .prologue
    .line 281
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 282
    const-string v0, "code"

    iget-object v1, p0, Lcom/facebook/login/DeviceAuthDialog;->n:Lcom/facebook/login/DeviceAuthDialog$RequestState;

    invoke-virtual {v1}, Lcom/facebook/login/DeviceAuthDialog$RequestState;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    new-instance v0, Lcom/facebook/GraphRequest;

    const/4 v1, 0x0

    const-string v2, "device/login_status"

    sget-object v4, Lbiz;->POST:Lbiz;

    new-instance v5, Lbrr;

    invoke-direct {v5, p0}, Lbrr;-><init>(Lcom/facebook/login/DeviceAuthDialog;)V

    invoke-direct/range {v0 .. v5}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lbiz;Lbim;)V

    return-object v0
.end method

.method public static synthetic c(Lcom/facebook/login/DeviceAuthDialog;)V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/facebook/login/DeviceAuthDialog;->a()V

    return-void
.end method

.method public static synthetic d(Lcom/facebook/login/DeviceAuthDialog;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method private d()V
    .locals 3

    .prologue
    .line 445
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 460
    :goto_0
    return-void

    .line 450
    :cond_0
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->n:Lcom/facebook/login/DeviceAuthDialog$RequestState;

    if-eqz v0, :cond_1

    .line 451
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->n:Lcom/facebook/login/DeviceAuthDialog$RequestState;

    invoke-virtual {v0}, Lcom/facebook/login/DeviceAuthDialog$RequestState;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbmo;->b(Ljava/lang/String;)V

    .line 454
    :cond_1
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->j:Lcom/facebook/login/DeviceAuthMethodHandler;

    if-eqz v0, :cond_2

    .line 456
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->j:Lcom/facebook/login/DeviceAuthMethodHandler;

    invoke-virtual {v0}, Lcom/facebook/login/DeviceAuthMethodHandler;->c_()V

    .line 459
    :cond_2
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->o:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0
.end method

.method public static synthetic e(Lcom/facebook/login/DeviceAuthDialog;)V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/facebook/login/DeviceAuthDialog;->b()V

    return-void
.end method

.method public static synthetic f(Lcom/facebook/login/DeviceAuthDialog;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->o:Landroid/app/Dialog;

    return-object v0
.end method

.method public static synthetic g(Lcom/facebook/login/DeviceAuthDialog;)Lcom/facebook/login/LoginClient$Request;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->r:Lcom/facebook/login/LoginClient$Request;

    return-object v0
.end method

.method public static synthetic h(Lcom/facebook/login/DeviceAuthDialog;)Lcom/facebook/login/DeviceAuthDialog$RequestState;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->n:Lcom/facebook/login/DeviceAuthDialog$RequestState;

    return-object v0
.end method

.method public static synthetic i(Lcom/facebook/login/DeviceAuthDialog;)Z
    .locals 1

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/facebook/login/DeviceAuthDialog;->q:Z

    return v0
.end method


# virtual methods
.method public a(Lcom/facebook/login/LoginClient$Request;)V
    .locals 6

    .prologue
    .line 169
    iput-object p1, p0, Lcom/facebook/login/DeviceAuthDialog;->r:Lcom/facebook/login/LoginClient$Request;

    .line 170
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 171
    const-string v0, "scope"

    const-string v1, ","

    invoke-virtual {p1}, Lcom/facebook/login/LoginClient$Request;->a()Ljava/util/Set;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    invoke-virtual {p1}, Lcom/facebook/login/LoginClient$Request;->g()Ljava/lang/String;

    move-result-object v0

    .line 174
    if-eqz v0, :cond_0

    .line 175
    const-string v1, "redirect_uri"

    invoke-virtual {v3, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lbqx;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lbqx;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 179
    const-string v1, "access_token"

    invoke-virtual {v3, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    const-string v0, "device_info"

    .line 181
    invoke-static {}, Lbmo;->a()Ljava/lang/String;

    move-result-object v1

    .line 180
    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    new-instance v0, Lcom/facebook/GraphRequest;

    const/4 v1, 0x0

    const-string v2, "device/login"

    sget-object v4, Lbiz;->POST:Lbiz;

    new-instance v5, Lbro;

    invoke-direct {v5, p0}, Lbro;-><init>(Lcom/facebook/login/DeviceAuthDialog;)V

    invoke-direct/range {v0 .. v5}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lbiz;Lbim;)V

    .line 213
    invoke-virtual {v0}, Lcom/facebook/GraphRequest;->n()Lbit;

    .line 214
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 126
    new-instance v0, Landroid/app/Dialog;

    invoke-virtual {p0}, Lcom/facebook/login/DeviceAuthDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget v2, Lbjy;->com_facebook_auth_dialog:I

    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->o:Landroid/app/Dialog;

    .line 127
    invoke-virtual {p0}, Lcom/facebook/login/DeviceAuthDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 129
    invoke-static {}, Lbmo;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/login/DeviceAuthDialog;->q:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/facebook/login/DeviceAuthDialog;->a(Z)Landroid/view/View;

    move-result-object v0

    .line 131
    iget-object v1, p0, Lcom/facebook/login/DeviceAuthDialog;->o:Landroid/app/Dialog;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 132
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->o:Landroid/app/Dialog;

    return-object v0

    .line 129
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 106
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/DialogFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v1

    .line 107
    invoke-virtual {p0}, Lcom/facebook/login/DeviceAuthDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/facebook/FacebookActivity;

    .line 108
    invoke-virtual {v0}, Lcom/facebook/FacebookActivity;->b()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lbsl;

    .line 110
    invoke-virtual {v0}, Lbsl;->b()Lcom/facebook/login/LoginClient;

    move-result-object v0

    .line 111
    invoke-virtual {v0}, Lcom/facebook/login/LoginClient;->g()Lcom/facebook/login/LoginMethodHandler;

    move-result-object v0

    check-cast v0, Lcom/facebook/login/DeviceAuthMethodHandler;

    iput-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->j:Lcom/facebook/login/DeviceAuthMethodHandler;

    .line 113
    if-eqz p3, :cond_0

    .line 114
    const-string v0, "request_state"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/login/DeviceAuthDialog$RequestState;

    .line 115
    if-eqz v0, :cond_0

    .line 116
    invoke-direct {p0, v0}, Lcom/facebook/login/DeviceAuthDialog;->a(Lcom/facebook/login/DeviceAuthDialog$RequestState;)V

    .line 120
    :cond_0
    return-object v1
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 156
    iput-boolean v1, p0, Lcom/facebook/login/DeviceAuthDialog;->p:Z

    .line 157
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 158
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onDestroy()V

    .line 159
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->l:Lbit;

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->l:Lbit;

    invoke-virtual {v0, v1}, Lbit;->cancel(Z)Z

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->m:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_1

    .line 164
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->m:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 166
    :cond_1
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 137
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 138
    iget-boolean v0, p0, Lcom/facebook/login/DeviceAuthDialog;->p:Z

    if-nez v0, :cond_0

    .line 139
    invoke-direct {p0}, Lcom/facebook/login/DeviceAuthDialog;->d()V

    .line 141
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 145
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 146
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->n:Lcom/facebook/login/DeviceAuthDialog$RequestState;

    if-eqz v0, :cond_0

    .line 147
    const-string v0, "request_state"

    iget-object v1, p0, Lcom/facebook/login/DeviceAuthDialog;->n:Lcom/facebook/login/DeviceAuthDialog$RequestState;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 149
    :cond_0
    return-void
.end method
