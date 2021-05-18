.class public Ltl;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;
    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "month"
    .end annotation
.end field

.field private b:Ljava/lang/String;
    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "year"
    .end annotation
.end field

.field private c:Ltc;
    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "holidays"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ltc;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Ltl;->a:Ljava/lang/String;

    .line 20
    iput-object p2, p0, Ltl;->b:Ljava/lang/String;

    .line 21
    iput-object p3, p0, Ltl;->c:Ltc;

    .line 22
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Ltl;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Ltl;->a:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public a(Ltc;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Ltl;->c:Ltc;

    .line 46
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Ltl;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Ltl;->b:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public c()Ltc;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Ltl;->c:Ltc;

    return-object v0
.end method
