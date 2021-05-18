.class public Lnet;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnes;


# instance fields
.field private a:Lner;


# direct methods
.method public constructor <init>(Lner;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lnet;->a:Lner;

    .line 40
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lnet;->a:Lner;

    invoke-interface {v0}, Lner;->b()V

    .line 45
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lnet;->a:Lner;

    invoke-interface {v0, p1}, Lner;->a(Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lnet;->a:Lner;

    invoke-interface {v0}, Lner;->c()V

    .line 50
    return-void
.end method

.method public b(Ljava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 65
    if-nez p1, :cond_1

    .line 73
    :cond_0
    :goto_0
    return v0

    .line 67
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 69
    invoke-static {p1}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 73
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lnet;->a:Lner;

    invoke-interface {v0}, Lner;->a()V

    .line 60
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lnet;->a:Lner;

    invoke-interface {v0, p1}, Lner;->b(Ljava/lang/String;)V

    .line 79
    return-void
.end method
