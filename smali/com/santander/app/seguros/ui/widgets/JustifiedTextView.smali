.class public Lcom/santander/app/seguros/ui/widgets/JustifiedTextView;
.super Landroid/webkit/WebView;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    const-string v0, "<html><body style=\'text-align:justify;color:rgba(%s);font-size:%dpx;margin: 0px 0px 0px 0px;\'>%s</body></html>"

    iput-object v0, p0, Lcom/santander/app/seguros/ui/widgets/JustifiedTextView;->a:Ljava/lang/String;

    .line 20
    const-string v0, "0,0,0,255"

    iput-object v0, p0, Lcom/santander/app/seguros/ui/widgets/JustifiedTextView;->b:Ljava/lang/String;

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/santander/app/seguros/ui/widgets/JustifiedTextView;->c:Ljava/lang/String;

    .line 22
    const/16 v0, 0xc

    iput v0, p0, Lcom/santander/app/seguros/ui/widgets/JustifiedTextView;->d:I

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lcom/santander/app/seguros/ui/widgets/JustifiedTextView;->e:I

    .line 27
    new-instance v0, Lmbz;

    invoke-direct {v0, p0}, Lmbz;-><init>(Lcom/santander/app/seguros/ui/widgets/JustifiedTextView;)V

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/widgets/JustifiedTextView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 28
    return-void
.end method

.method private a()V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 39
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/widgets/JustifiedTextView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const-string v1, "utf-8"

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 41
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/JustifiedTextView;->a:Ljava/lang/String;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/santander/app/seguros/ui/widgets/JustifiedTextView;->b:Ljava/lang/String;

    aput-object v3, v1, v2

    iget v2, p0, Lcom/santander/app/seguros/ui/widgets/JustifiedTextView;->d:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/santander/app/seguros/ui/widgets/JustifiedTextView;->c:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "text/html"

    const-string v2, "utf-8"

    invoke-virtual {p0, v0, v1, v2}, Lcom/santander/app/seguros/ui/widgets/JustifiedTextView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    iget v0, p0, Lcom/santander/app/seguros/ui/widgets/JustifiedTextView;->e:I

    invoke-super {p0, v0}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 48
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 49
    const/4 v0, 0x0

    invoke-virtual {p0, v4, v0}, Lcom/santander/app/seguros/ui/widgets/JustifiedTextView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 50
    :cond_0
    return-void
.end method


# virtual methods
.method public setBackgroundColor(I)V
    .locals 0

    .prologue
    .line 63
    iput p1, p0, Lcom/santander/app/seguros/ui/widgets/JustifiedTextView;->e:I

    .line 64
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/widgets/JustifiedTextView;->a()V

    .line 65
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/santander/app/seguros/ui/widgets/JustifiedTextView;->c:Ljava/lang/String;

    .line 32
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/widgets/JustifiedTextView;->a()V

    .line 33
    return-void
.end method

.method public setTextColor(I)V
    .locals 10

    .prologue
    const/4 v9, 0x6

    const/4 v8, 0x0

    const/4 v7, 0x4

    const/4 v6, 0x2

    const/16 v5, 0x10

    .line 53
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 54
    invoke-virtual {v0, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    .line 55
    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    .line 56
    invoke-virtual {v0, v7, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    .line 57
    const/16 v4, 0x8

    invoke-virtual {v0, v9, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 58
    const-string v4, "%d,%d,%d,%d"

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v8

    const/4 v2, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v6

    const/4 v0, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v0

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/seguros/ui/widgets/JustifiedTextView;->b:Ljava/lang/String;

    .line 59
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/widgets/JustifiedTextView;->a()V

    .line 60
    return-void
.end method

.method public setTextSize(I)V
    .locals 0

    .prologue
    .line 68
    iput p1, p0, Lcom/santander/app/seguros/ui/widgets/JustifiedTextView;->d:I

    .line 69
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/widgets/JustifiedTextView;->a()V

    .line 70
    return-void
.end method
