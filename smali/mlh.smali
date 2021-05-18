.class public Lmlh;
.super Lgkt;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lmlg;",
            ">;"
        }
    .end annotation

    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "grantees"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lgkt;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lmlg;",
            ">;"
        }
    .end annotation

    .prologue
    .line 16
    iget-object v0, p0, Lmlh;->a:Ljava/util/HashMap;

    return-object v0
.end method

.method public a(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lmlg;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 20
    iput-object p1, p0, Lmlh;->a:Ljava/util/HashMap;

    .line 21
    return-void
.end method
