.class public Lfnm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field final synthetic a:Lcom/santander/app/WebViewActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/WebViewActivity;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lfnm;->a:Lcom/santander/app/WebViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lfnm;->a:Lcom/santander/app/WebViewActivity;

    invoke-static {v0}, Lcom/santander/app/WebViewActivity;->a(Lcom/santander/app/WebViewActivity;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 59
    return-void
.end method
