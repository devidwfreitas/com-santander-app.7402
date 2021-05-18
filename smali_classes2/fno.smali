.class public Lfno;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/santander/app/WebViewActivity;


# direct methods
.method private constructor <init>(Lcom/santander/app/WebViewActivity;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lfno;->a:Lcom/santander/app/WebViewActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 113
    const/4 v0, 0x1

    return v0
.end method
