.class Lhgk;
.super Lhgo;
.source "SourceFile"


# instance fields
.field final synthetic a:Lhgd;

.field final synthetic b:Lhgh;


# direct methods
.method constructor <init>(Lhgh;Ljava/lang/String;Lhgd;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lhgk;->b:Lhgh;

    iput-object p3, p0, Lhgk;->a:Lhgd;

    invoke-direct {p0, p1, p2}, Lhgo;-><init>(Lhgh;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Lhgk;->a:Lhgd;

    iget-object v1, p0, Lhgk;->b:Lhgh;

    invoke-static {v1}, Lhgh;->a(Lhgh;)Lhfl;

    move-result-object v1

    invoke-interface {v0, v1}, Lhgd;->a(Lhfx;)V

    .line 106
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Lhgk;->a:Lhgd;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lhgd;->a(Lhfi;)V

    .line 111
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 115
    iget-object v0, p0, Lhgk;->a:Lhgd;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lhgd;->a(Lhfi;)V

    .line 116
    return-void
.end method
