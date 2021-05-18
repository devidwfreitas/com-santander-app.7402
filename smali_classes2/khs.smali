.class public Lkhs;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lfqa;",
            ">;"
        }
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
.method public a()Ljava/util/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Lfqa;",
            ">;"
        }
    .end annotation

    .prologue
    .line 17
    iget-object v0, p0, Lkhs;->a:Ljava/util/Vector;

    return-object v0
.end method

.method public a(Ljava/util/Vector;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Lfqa;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 21
    iput-object p1, p0, Lkhs;->a:Ljava/util/Vector;

    .line 22
    return-void
.end method
