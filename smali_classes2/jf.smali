.class public Ljf;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljg;",
        "Ljava/lang/Void;",
        "Lis;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lih;

.field private b:Lio;

.field private c:Liz;


# direct methods
.method public constructor <init>(Lio;Liz;)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 50
    iput-object p1, p0, Ljf;->b:Lio;

    .line 51
    iput-object p2, p0, Ljf;->c:Liz;

    .line 52
    return-void
.end method

.method public constructor <init>(Liz;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 40
    iput-object p1, p0, Ljf;->c:Liz;

    .line 41
    return-void
.end method


# virtual methods
.method public a(Liq;)Lis;
    .locals 3

    .prologue
    const/16 v2, 0x1f4

    .line 93
    :try_start_0
    iget-object v0, p0, Ljf;->c:Liz;

    invoke-virtual {v0}, Liz;->b()Lip;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljf;->c:Liz;

    invoke-virtual {v0}, Liz;->b()Lip;

    move-result-object v0

    sget-object v1, Lip;->REST:Lip;

    invoke-virtual {v0, v1}, Lip;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 96
    :cond_0
    iget-object v0, p0, Ljf;->b:Lio;

    invoke-virtual {v0}, Lio;->a()V

    .line 98
    invoke-virtual {p1}, Liq;->a()V

    .line 102
    :cond_1
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Ljf;->b:Lio;

    invoke-virtual {v1}, Lio;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    sput-object v0, Lii;->a:Ljava/net/URL;

    .line 104
    iget-object v0, p0, Ljf;->b:Lio;

    invoke-virtual {v0}, Lio;->d()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Ljf;->b:Lio;

    invoke-virtual {v0}, Lio;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 105
    iget-object v0, p0, Ljf;->b:Lio;

    invoke-virtual {v0}, Lio;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lib;->a(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    sput-object v0, Lii;->b:Ljava/io/InputStream;

    .line 108
    :cond_2
    iget-object v0, p0, Ljf;->c:Liz;

    invoke-virtual {v0, p1}, Liz;->a(Liq;)Lis;
    :try_end_0
    .catch Lia; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    .line 115
    :goto_0
    return-object v0

    .line 110
    :catch_0
    move-exception v0

    .line 111
    invoke-virtual {v0}, Lia;->a()Lis;

    move-result-object v0

    goto :goto_0

    .line 112
    :catch_1
    move-exception v0

    .line 113
    new-instance v0, Lia;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "URL is malformed"

    invoke-direct {v0, v1, v2}, Lia;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-virtual {v0}, Lia;->a()Lis;

    move-result-object v0

    goto :goto_0

    .line 114
    :catch_2
    move-exception v0

    .line 115
    new-instance v0, Lia;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MalformedURLException"

    invoke-direct {v0, v1, v2}, Lia;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-virtual {v0}, Lia;->a()Lis;

    move-result-object v0

    goto :goto_0
.end method

.method protected varargs a([Ljg;)Lis;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 62
    aget-object v0, p1, v1

    invoke-virtual {v0}, Ljg;->b()Lih;

    move-result-object v0

    iput-object v0, p0, Ljf;->a:Lih;

    .line 63
    aget-object v0, p1, v1

    invoke-virtual {v0}, Ljg;->a()Liq;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljf;->a(Liq;)Lis;

    move-result-object v0

    .line 64
    return-object v0
.end method

.method protected a(Lis;)V
    .locals 1

    .prologue
    .line 69
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 70
    invoke-virtual {p1}, Lis;->a()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 78
    :pswitch_0
    iget-object v0, p0, Ljf;->a:Lih;

    invoke-interface {v0, p1}, Lih;->onFailure(Lis;)V

    .line 81
    :goto_0
    return-void

    .line 75
    :pswitch_1
    iget-object v0, p0, Ljf;->a:Lih;

    invoke-interface {v0, p1}, Lih;->onSuccess(Lis;)V

    goto :goto_0

    .line 70
    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 26
    check-cast p1, [Ljg;

    invoke-virtual {p0, p1}, Ljf;->a([Ljg;)Lis;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 26
    check-cast p1, Lis;

    invoke-virtual {p0, p1}, Ljf;->a(Lis;)V

    return-void
.end method
