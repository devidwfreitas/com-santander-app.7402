.class public Lkrw;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;
    .annotation runtime Leks;
        a = "orderNumber"
    .end annotation
.end field

.field private b:Lkqg;
    .annotation runtime Leks;
        a = "canvasser"
    .end annotation
.end field

.field private c:Lkqs;
    .annotation runtime Leks;
        a = "customer"
    .end annotation
.end field

.field private d:Lkrs;
    .annotation runtime Leks;
        a = "product"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lkqg;Lkqs;Lkrs;)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lkrw;->a:Ljava/lang/String;

    .line 61
    iput-object p2, p0, Lkrw;->b:Lkqg;

    .line 62
    iput-object p3, p0, Lkrw;->c:Lkqs;

    .line 63
    iput-object p4, p0, Lkrw;->d:Lkrs;

    .line 64
    return-void
.end method

.method public constructor <init>(Lkqg;)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lkrw;->b:Lkqg;

    .line 57
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lkrw;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lkrw;->a:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public a(Lkqg;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lkrw;->b:Lkqg;

    .line 37
    return-void
.end method

.method public a(Lkqs;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lkrw;->c:Lkqs;

    .line 45
    return-void
.end method

.method public a(Lkrs;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lkrw;->d:Lkrs;

    .line 53
    return-void
.end method

.method public b()Lkqg;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lkrw;->b:Lkqg;

    return-object v0
.end method

.method public c()Lkqs;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lkrw;->c:Lkqs;

    return-object v0
.end method

.method public d()Lkrs;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lkrw;->d:Lkrs;

    return-object v0
.end method
