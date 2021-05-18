.class public Ljd;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Liy;",
        "Ljava/lang/Void;",
        "Liw;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lij;

.field private c:Liz;


# direct methods
.method public constructor <init>(Landroid/content/Context;Liz;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 29
    iput-object p1, p0, Ljd;->a:Landroid/content/Context;

    .line 30
    iput-object p2, p0, Ljd;->c:Liz;

    .line 31
    return-void
.end method


# virtual methods
.method public a(Liq;)Liw;
    .locals 3

    .prologue
    const/16 v1, 0x1f4

    .line 57
    :try_start_0
    iget-object v0, p0, Ljd;->c:Liz;

    invoke-virtual {v0, p1}, Liz;->a(Liq;)Lis;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 61
    :goto_0
    return-object v0

    .line 58
    :catch_0
    move-exception v0

    .line 59
    new-instance v0, Lia;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "URL is malformed"

    invoke-direct {v0, v1, v2}, Lia;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-virtual {v0}, Lia;->a()Lis;

    move-result-object v0

    goto :goto_0

    .line 60
    :catch_1
    move-exception v0

    .line 61
    new-instance v0, Lia;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "URISyntaxException"

    invoke-direct {v0, v1, v2}, Lia;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-virtual {v0}, Lia;->a()Lis;

    move-result-object v0

    goto :goto_0
.end method

.method protected varargs a([Liy;)Liw;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 35
    aget-object v0, p1, v1

    invoke-virtual {v0}, Liy;->a()Liq;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljd;->a(Liq;)Liw;

    move-result-object v0

    .line 36
    aget-object v1, p1, v1

    invoke-virtual {v1}, Liy;->b()Lij;

    move-result-object v1

    iput-object v1, p0, Ljd;->b:Lij;

    .line 37
    return-object v0
.end method

.method protected a(Liw;)V
    .locals 2

    .prologue
    .line 42
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 43
    invoke-virtual {p1}, Liw;->a()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Liw;->a()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xc9

    if-ne v0, v1, :cond_1

    .line 44
    :cond_0
    iget-object v0, p0, Ljd;->b:Lij;

    invoke-interface {v0, p1}, Lij;->a(Liw;)V

    .line 48
    :goto_0
    return-void

    .line 46
    :cond_1
    iget-object v0, p0, Ljd;->b:Lij;

    invoke-interface {v0, p1}, Lij;->b(Liw;)V

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 22
    check-cast p1, [Liy;

    invoke-virtual {p0, p1}, Ljd;->a([Liy;)Liw;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 22
    check-cast p1, Liw;

    invoke-virtual {p0, p1}, Ljd;->a(Liw;)V

    return-void
.end method
