.class public Lll;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;
    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "operationType"
    .end annotation
.end field

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lln;",
            ">;"
        }
    .end annotation

    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "financialApplications"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput-object v0, p0, Lll;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lll;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 22
    iput-object p1, p0, Lll;->a:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lln;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 30
    iput-object p1, p0, Lll;->b:Ljava/util/List;

    .line 31
    return-void
.end method

.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lln;",
            ">;"
        }
    .end annotation

    .prologue
    .line 26
    iget-object v0, p0, Lll;->b:Ljava/util/List;

    return-object v0
.end method
