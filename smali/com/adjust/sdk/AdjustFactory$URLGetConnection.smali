.class public Lcom/adjust/sdk/AdjustFactory$URLGetConnection;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field httpsURLConnection:Ljavax/net/ssl/HttpsURLConnection;

.field url:Ljava/net/URL;


# direct methods
.method constructor <init>(Ljavax/net/ssl/HttpsURLConnection;Ljava/net/URL;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/adjust/sdk/AdjustFactory$URLGetConnection;->httpsURLConnection:Ljavax/net/ssl/HttpsURLConnection;

    .line 32
    iput-object p2, p0, Lcom/adjust/sdk/AdjustFactory$URLGetConnection;->url:Ljava/net/URL;

    .line 33
    return-void
.end method
