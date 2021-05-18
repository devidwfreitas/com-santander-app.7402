.class public Lmkx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lorg/simpleframework/xml/Root;
    name = "return"
.end annotation


# instance fields
.field private valorMaximoDoc:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private valorMaximoTed:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private valorMinimoDoc:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private valorMinimoTed:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lmkx;->valorMaximoDoc:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lmkx;->valorMaximoDoc:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lmkx;->valorMaximoTed:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lmkx;->valorMaximoTed:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lmkx;->valorMinimoDoc:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lmkx;->valorMinimoDoc:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lmkx;->valorMinimoTed:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lmkx;->valorMinimoTed:Ljava/lang/String;

    .line 61
    return-void
.end method
