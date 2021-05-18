.class public final Lnhc;
.super Ljava/lang/Object;

# interfaces
.implements Lnje;
.implements Lnjj;


# instance fields
.field private final a:Landroid/content/Context;

.field private volatile b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lnhc;->a:Landroid/content/Context;

    invoke-static {p2}, Lnhc;->a(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lnhc;->b:I

    return-void
.end method

.method private static a(Ljava/lang/String;)I
    .locals 4

    const/4 v0, 0x2

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const/4 v1, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v1, :pswitch_data_0

    const v0, 0x7fffffff

    :goto_1
    :pswitch_0
    return v0

    :sswitch_0
    const-string v3, "dev"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :sswitch_1
    const-string v3, "qa"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :sswitch_2
    const-string v3, "prod"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v1, v0

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x4

    goto :goto_1

    :pswitch_2
    const/4 v0, 0x7

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0xe10 -> :sswitch_1
        0x18415 -> :sswitch_0
        0x34a357 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public a(I)V
    .locals 2

    invoke-virtual {p0}, Lnhc;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Tealium-5.2.0"

    iget-object v1, p0, Lnhc;->a:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public a(ILjava/lang/Throwable;)V
    .locals 2

    iget v0, p0, Lnhc;->b:I

    const/4 v1, 0x7

    if-gt v0, v1, :cond_0

    const-string v0, "Tealium-5.2.0"

    iget-object v1, p0, Lnhc;->a:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public varargs a(ILjava/lang/Throwable;[Ljava/lang/Object;)V
    .locals 2

    invoke-virtual {p0}, Lnhc;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Tealium-5.2.0"

    iget-object v1, p0, Lnhc;->a:Landroid/content/Context;

    invoke-virtual {v1, p1, p3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public varargs a(I[Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Lnhc;->b:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const-string v0, "Tealium-5.2.0"

    iget-object v1, p0, Lnhc;->a:Landroid/content/Context;

    invoke-virtual {v1, p1, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 2

    sget v0, Lnkf;->logger_error_caught_exception:I

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, p1, v1}, Lnhc;->a(ILjava/lang/Throwable;[Ljava/lang/Object;)V

    return-void
.end method

.method public a(Lnil;)V
    .locals 7

    invoke-virtual {p0}, Lnhc;->b()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v1, "Tealium-5.2.0"

    iget-object v2, p0, Lnhc;->a:Landroid/content/Context;

    sget v3, Lnkf;->logger_dispatch_send:I

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v0, "true"

    const-string v6, "was_queued"

    invoke-virtual {p1, v6}, Lnil;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "queued"

    :goto_1
    aput-object v0, v4, v5

    const/4 v0, 0x1

    invoke-virtual {p1}, Lnil;->d()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v0, "new"

    goto :goto_1
.end method

.method public a(Lnin;)V
    .locals 3

    invoke-virtual {p1}, Lnin;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lnin;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnhc;->a(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lnhc;->b:I

    :cond_0
    sget v0, Lnkf;->logger_rcvd_publish_settings:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lnhc;->c(I[Ljava/lang/Object;)V

    return-void
.end method

.method public a()Z
    .locals 2

    iget v0, p0, Lnhc;->b:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public varargs b(I[Ljava/lang/Object;)V
    .locals 2

    invoke-virtual {p0}, Lnhc;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Tealium-5.2.0"

    iget-object v1, p0, Lnhc;->a:Landroid/content/Context;

    invoke-virtual {v1, p1, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/Throwable;)V
    .locals 2

    iget v0, p0, Lnhc;->b:I

    const/4 v1, 0x7

    if-gt v0, v1, :cond_0

    const-string v0, "Tealium-5.2.0"

    invoke-static {v0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public b()Z
    .locals 2

    iget v0, p0, Lnhc;->b:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public varargs c(I[Ljava/lang/Object;)V
    .locals 2

    invoke-virtual {p0}, Lnhc;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Tealium-5.2.0"

    iget-object v1, p0, Lnhc;->a:Landroid/content/Context;

    invoke-virtual {v1, p1, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public c()Z
    .locals 2

    iget v0, p0, Lnhc;->b:I

    const/4 v1, 0x4

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public varargs d(I[Ljava/lang/Object;)V
    .locals 2

    invoke-virtual {p0}, Lnhc;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Tealium-5.2.0"

    iget-object v1, p0, Lnhc;->a:Landroid/content/Context;

    invoke-virtual {v1, p1, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public d()Z
    .locals 2

    iget v0, p0, Lnhc;->b:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public varargs e(I[Ljava/lang/Object;)V
    .locals 2

    invoke-virtual {p0}, Lnhc;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Tealium-5.2.0"

    iget-object v1, p0, Lnhc;->a:Landroid/content/Context;

    invoke-virtual {v1, p1, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public e()Z
    .locals 2

    iget v0, p0, Lnhc;->b:I

    const/4 v1, 0x6

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
