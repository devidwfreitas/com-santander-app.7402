.class final Lnhn;
.super Landroid/webkit/WebChromeClient;


# instance fields
.field final synthetic a:Lnhc;


# direct methods
.method constructor <init>(Lnhc;)V
    .locals 0

    iput-object p1, p0, Lnhn;->a:Lnhc;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .locals 6

    const/4 v5, 0x1

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v1, "Src: %s; Line: %d; %s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->sourceId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->lineNumber()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x2

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->message()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lnho;->a:[I

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->messageLevel()Landroid/webkit/ConsoleMessage$MessageLevel;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/ConsoleMessage$MessageLevel;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    iget-object v1, p0, Lnhn;->a:Lnhc;

    invoke-virtual {v1}, Lnhc;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Tealium-WebView"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v5

    :pswitch_0
    iget-object v1, p0, Lnhn;->a:Lnhc;

    invoke-virtual {v1}, Lnhc;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Tealium-WebView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lnhn;->a:Lnhc;

    invoke-virtual {v1}, Lnhc;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Tealium-WebView"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lnhn;->a:Lnhc;

    invoke-virtual {v1}, Lnhc;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Tealium-WebView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_3
    iget-object v1, p0, Lnhn;->a:Lnhc;

    invoke-virtual {v1}, Lnhc;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Tealium-WebView"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_4
    iget-object v1, p0, Lnhn;->a:Lnhc;

    invoke-virtual {v1}, Lnhc;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Tealium-WebView"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
