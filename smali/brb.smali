.class Lbrb;
.super Landroid/webkit/WebView;
.source "SourceFile"


# instance fields
.field final synthetic a:Lbqy;


# direct methods
.method constructor <init>(Lbqy;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 439
    iput-object p1, p0, Lbrb;->a:Lbqy;

    invoke-direct {p0, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onWindowFocusChanged(Z)V
    .locals 1

    .prologue
    .line 446
    :try_start_0
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onWindowFocusChanged(Z)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 449
    :goto_0
    return-void

    .line 447
    :catch_0
    move-exception v0

    goto :goto_0
.end method
