.class public Lmzs;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lmiq;Landroid/content/Context;)Ljava/io/InputStream;
    .locals 2

    .prologue
    .line 21
    invoke-virtual {p0}, Lmiq;->m()Ljava/lang/String;

    move-result-object v0

    const-string v1, "https://mbbpi.santanderbr.pre.corp/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 22
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080017

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    .line 33
    :goto_0
    return-object v0

    .line 23
    :cond_0
    invoke-virtual {p0}, Lmiq;->m()Ljava/lang/String;

    move-result-object v0

    const-string v1, "https://mbbdes.santanderbr.pre.corp/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 24
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080019

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0

    .line 25
    :cond_1
    invoke-virtual {p0}, Lmiq;->m()Ljava/lang/String;

    move-result-object v0

    const-string v1, "https://mbbhk.santanderbr.pre.corp/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 26
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08001b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0

    .line 27
    :cond_2
    invoke-virtual {p0}, Lmiq;->m()Ljava/lang/String;

    move-result-object v0

    const-string v1, "https://mbbhk.santander.com.br/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 28
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08001a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0

    .line 29
    :cond_3
    invoke-virtual {p0}, Lmiq;->m()Ljava/lang/String;

    move-result-object v0

    const-string v1, "https://m.santander.com.br/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 30
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080018

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0

    .line 33
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method
