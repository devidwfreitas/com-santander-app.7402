.class public Lazo;
.super Layy;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "A:",
        "Ljava/lang/Object;",
        ">",
        "Layy",
        "<TK;TA;>;"
    }
.end annotation


# instance fields
.field private final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TA;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)V"
        }
    .end annotation

    .prologue
    .line 13
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Layy;-><init>(Ljava/util/List;)V

    .line 14
    iput-object p1, p0, Lazo;->b:Ljava/lang/Object;

    .line 15
    return-void
.end method


# virtual methods
.method public a(Laxz;F)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laxz",
            "<TK;>;F)TA;"
        }
    .end annotation

    .prologue
    .line 30
    iget-object v0, p0, Lazo;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public a(F)V
    .locals 0
    .param p1    # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    .prologue
    .line 19
    return-void
.end method

.method public a(Layz;)V
    .locals 0

    .prologue
    .line 23
    return-void
.end method

.method public b()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    .prologue
    .line 26
    iget-object v0, p0, Lazo;->b:Ljava/lang/Object;

    return-object v0
.end method
