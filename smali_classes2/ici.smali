.class public Lici;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lich;


# instance fields
.field private a:Lidn;

.field private b:Lidr;


# direct methods
.method public constructor <init>(Lidn;)V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lici;->a:Lidn;

    .line 19
    new-instance v0, Lidr;

    invoke-direct {v0}, Lidr;-><init>()V

    iput-object v0, p0, Lici;->b:Lidr;

    .line 20
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 24
    iget-object v0, p0, Lici;->a:Lidn;

    iget-object v1, p0, Lici;->b:Lidr;

    invoke-virtual {v1}, Lidr;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lidn;->a(Ljava/util/List;)V

    .line 25
    iget-object v0, p0, Lici;->a:Lidn;

    iget-object v1, p0, Lici;->b:Lidr;

    invoke-virtual {v1}, Lidr;->b()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lidn;->b(Ljava/util/List;)V

    .line 26
    return-void
.end method
