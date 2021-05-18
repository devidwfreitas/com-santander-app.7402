.class public Ljds;
.super Lgnb;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# instance fields
.field private termoAdesaoFundo:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private termoFundos:Ljel;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lgnb;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljds;
    .locals 1

    .prologue
    .line 21
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljds;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Ljds;->termoAdesaoFundo:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public a(Ljel;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Ljds;->termoFundos:Ljel;

    .line 36
    return-void
.end method

.method public b()Ljel;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Ljds;->termoFundos:Ljel;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Ljds;->termoAdesaoFundo:Ljava/lang/String;

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 18
    invoke-virtual {p0}, Ljds;->a()Ljds;

    move-result-object v0

    return-object v0
.end method
