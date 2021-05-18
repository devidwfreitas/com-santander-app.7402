.class Lda;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldu;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldu",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcz;


# direct methods
.method constructor <init>(Lcz;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lda;->a:Lcz;

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 145
    new-instance v0, Ldi;

    invoke-direct {v0}, Ldi;-><init>()V

    return-object v0
.end method
