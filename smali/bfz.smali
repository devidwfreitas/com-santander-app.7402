.class public Lbfz;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ldj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldj",
            "<",
            "Lbfu;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    new-instance v0, Lbga;

    invoke-direct {v0}, Lbga;-><init>()V

    sput-object v0, Lbfz;->a:Ldj;

    .line 31
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lbfu;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lbfz;->a:Ldj;

    invoke-interface {v0}, Ldj;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbfu;

    return-object v0
.end method
