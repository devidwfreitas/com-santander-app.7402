.class public Lgzs;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/StringBuffer;

.field private b:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lgzs;->a:Ljava/lang/StringBuffer;

    .line 15
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lgzs;->b:Ljava/util/Vector;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/StringBuffer;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lgzs;->a:Ljava/lang/StringBuffer;

    return-object v0
.end method

.method public a(Ljava/lang/StringBuffer;)V
    .locals 0

    .prologue
    .line 22
    iput-object p1, p0, Lgzs;->a:Ljava/lang/StringBuffer;

    .line 23
    return-void
.end method

.method public a(Ljava/util/Vector;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 30
    iput-object p1, p0, Lgzs;->b:Ljava/util/Vector;

    .line 31
    return-void
.end method

.method public b()Ljava/util/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 26
    iget-object v0, p0, Lgzs;->b:Ljava/util/Vector;

    return-object v0
.end method
