.class public Lsx;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ltp;
    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "profile"
    .end annotation
.end field

.field private b:Ljava/lang/Boolean;
    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "hasCartIndicator"
    .end annotation
.end field

.field private c:Lacb;
    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "message"
    .end annotation
.end field

.field private d:Ltn;
    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "preferredAccount"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lsx;->b:Ljava/lang/Boolean;

    return-object v0
.end method

.method public a(Lacb;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lsx;->c:Lacb;

    .line 41
    return-void
.end method

.method public a(Ljava/lang/Boolean;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lsx;->b:Ljava/lang/Boolean;

    .line 33
    return-void
.end method

.method public a(Ltn;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lsx;->d:Ltn;

    .line 49
    return-void
.end method

.method public a(Ltp;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lsx;->a:Ltp;

    return-void
.end method

.method public b()Lacb;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lsx;->c:Lacb;

    return-object v0
.end method

.method public c()Ltp;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lsx;->a:Ltp;

    return-object v0
.end method

.method public d()Ltn;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lsx;->d:Ltn;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Customer{profile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lsx;->a:Ltp;

    .line 58
    invoke-virtual {v1}, Ltp;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hasAbandonedKart="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lsx;->b:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lsx;->c:Lacb;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", preferredAccount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lsx;->d:Ltn;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 57
    return-object v0
.end method
