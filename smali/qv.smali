.class public Lqv;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;
    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "subproduct"
    .end annotation
.end field

.field private b:Ljava/lang/String;
    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "contractnumber"
    .end annotation
.end field

.field private c:Lqs;
    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "account"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ltk;)V
    .locals 4

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lqv;->a:Ljava/lang/String;

    .line 26
    invoke-virtual {p2}, Ltk;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lqv;->b:Ljava/lang/String;

    .line 27
    new-instance v0, Lqs;

    const-string v1, "0033"

    .line 28
    invoke-virtual {p2}, Ltk;->j()Lsv;

    move-result-object v2

    invoke-virtual {v2}, Lsv;->b()Ljava/lang/String;

    move-result-object v2

    .line 29
    invoke-virtual {p2}, Ltk;->j()Lsv;

    move-result-object v3

    invoke-virtual {v3}, Lsv;->c()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lqs;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lqv;->c:Lqs;

    .line 31
    return-void
.end method
