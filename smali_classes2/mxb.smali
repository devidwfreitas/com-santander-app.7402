.class public Lmxb;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/ClipboardManager;


# direct methods
.method public constructor <init>(Landroid/content/ClipboardManager;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lmxb;->a:Landroid/content/ClipboardManager;

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 22
    const-string v0, "clipboard"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    invoke-direct {p0, v0}, Lmxb;-><init>(Landroid/content/ClipboardManager;)V

    .line 23
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/CharSequence;
    .locals 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 31
    iget-object v0, p0, Lmxb;->a:Landroid/content/ClipboardManager;

    invoke-virtual {v0}, Landroid/content/ClipboardManager;->hasPrimaryClip()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 32
    iget-object v0, p0, Lmxb;->a:Landroid/content/ClipboardManager;

    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v0

    .line 33
    invoke-virtual {v0}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v1

    .line 34
    const-string v2, "text/plain"

    invoke-virtual {v1, v2}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "text/html"

    .line 35
    invoke-virtual {v1, v2}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 36
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 39
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;)V
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lmxb;->a:Landroid/content/ClipboardManager;

    invoke-virtual {v0, p1}, Landroid/content/ClipboardManager;->addPrimaryClipChangedListener(Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;)V

    .line 44
    return-void
.end method

.method public b(Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;)V
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lmxb;->a:Landroid/content/ClipboardManager;

    invoke-virtual {v0, p1}, Landroid/content/ClipboardManager;->removePrimaryClipChangedListener(Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;)V

    .line 48
    return-void
.end method
