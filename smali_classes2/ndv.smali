.class public Lndv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lndu;


# instance fields
.field private a:Lnda;


# direct methods
.method public constructor <init>(Lnda;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lndv;->a:Lnda;

    .line 20
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 24
    if-eqz p1, :cond_0

    .line 25
    iget-object v0, p0, Lndv;->a:Lnda;

    const/4 v1, 0x0

    const-string v2, "idvalida.erro"

    invoke-interface {v0, v1, p1, v2}, Lnda;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 29
    :goto_0
    return-void

    .line 27
    :cond_0
    iget-object v0, p0, Lndv;->a:Lnda;

    const/4 v1, 0x4

    const-string v2, ""

    const-string v3, "idvalida.end"

    invoke-interface {v0, v1, v2, v3}, Lnda;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
