.class Lfiv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/net/ssl/HostnameVerifier;


# instance fields
.field final synthetic a:Lfiu;


# direct methods
.method constructor <init>(Lfiu;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lfiv;->a:Lfiu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x1

    return v0
.end method
