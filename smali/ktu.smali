.class public Lktu;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;
    .annotation runtime Leks;
        a = "coverageValue"
    .end annotation
.end field

.field private b:Ljava/lang/String;
    .annotation runtime Leks;
        a = "riskAddress"
    .end annotation
.end field

.field private c:Ljava/lang/String;
    .annotation runtime Leks;
        a = "insuredName"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public u(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 24
    iput-object p1, p0, Lktu;->a:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public v(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lktu;->b:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public w(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lktu;->c:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public x()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lktu;->a:Ljava/lang/String;

    return-object v0
.end method

.method public y()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lktu;->b:Ljava/lang/String;

    return-object v0
.end method

.method public z()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lktu;->c:Ljava/lang/String;

    return-object v0
.end method
