.class public Lig;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Liu;",
        "Ljava/lang/Void;",
        "Lis;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lih;

.field private b:Lio;

.field private c:Lif;

.field private d:Liv;


# direct methods
.method public constructor <init>(Lio;Lif;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 42
    iput-object p1, p0, Lig;->b:Lio;

    .line 43
    iput-object p2, p0, Lig;->c:Lif;

    .line 44
    return-void
.end method


# virtual methods
.method public a(Lir;)Lis;
    .locals 3

    .prologue
    .line 84
    :try_start_0
    iget-object v0, p0, Lig;->b:Lio;

    invoke-virtual {v0}, Lio;->a()V

    .line 86
    invoke-virtual {p1}, Lir;->a()V

    .line 88
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lig;->b:Lio;

    invoke-virtual {v1}, Lio;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    sput-object v0, Lii;->a:Ljava/net/URL;

    .line 89
    iget-object v0, p0, Lig;->b:Lio;

    invoke-virtual {v0}, Lio;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lib;->a(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    sput-object v0, Lii;->b:Ljava/io/InputStream;

    .line 92
    iget-object v0, p0, Lig;->c:Lif;

    iget-object v1, p0, Lig;->d:Liv;

    invoke-virtual {v0, v1}, Lif;->a(Liv;)V

    .line 93
    iget-object v0, p0, Lig;->c:Lif;

    sget-object v1, Lip;->HUB:Lip;

    invoke-virtual {v0, v1}, Lif;->a(Lip;)V

    .line 96
    iget-object v0, p0, Lig;->c:Lif;

    invoke-virtual {v0, p1}, Lif;->a(Lir;)Lis;
    :try_end_0
    .catch Lia; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 100
    :goto_0
    return-object v0

    .line 97
    :catch_0
    move-exception v0

    .line 98
    invoke-virtual {v0}, Lia;->a()Lis;

    move-result-object v0

    goto :goto_0

    .line 99
    :catch_1
    move-exception v0

    .line 100
    new-instance v0, Lia;

    const/16 v1, 0x1f4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "URL is malformed"

    invoke-direct {v0, v1, v2}, Lia;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-virtual {v0}, Lia;->a()Lis;

    move-result-object v0

    goto :goto_0
.end method

.method protected varargs a([Liu;)Lis;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 53
    aget-object v0, p1, v1

    invoke-virtual {v0}, Liu;->b()Lih;

    move-result-object v0

    iput-object v0, p0, Lig;->a:Lih;

    .line 54
    aget-object v0, p1, v1

    invoke-virtual {v0}, Liu;->a()Lir;

    move-result-object v0

    invoke-virtual {p0, v0}, Lig;->a(Lir;)Lis;

    move-result-object v0

    .line 55
    return-object v0
.end method

.method protected a(Lis;)V
    .locals 1

    .prologue
    .line 60
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 61
    invoke-virtual {p1}, Lis;->a()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 69
    :pswitch_0
    iget-object v0, p0, Lig;->a:Lih;

    invoke-interface {v0, p1}, Lih;->onFailure(Lis;)V

    .line 72
    :goto_0
    return-void

    .line 66
    :pswitch_1
    iget-object v0, p0, Lig;->a:Lih;

    invoke-interface {v0, p1}, Lih;->onSuccess(Lis;)V

    goto :goto_0

    .line 61
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
    .line 27
    check-cast p1, [Liu;

    invoke-virtual {p0, p1}, Lig;->a([Liu;)Lis;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 27
    check-cast p1, Lis;

    invoke-virtual {p0, p1}, Lig;->a(Lis;)V

    return-void
.end method
