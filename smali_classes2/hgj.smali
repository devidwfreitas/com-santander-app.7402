.class Lhgj;
.super Lhgo;
.source "SourceFile"


# instance fields
.field final synthetic a:Lhgd;

.field final synthetic b:Lhgh;


# direct methods
.method constructor <init>(Lhgh;Ljava/lang/String;Lhgd;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lhgj;->b:Lhgh;

    iput-object p3, p0, Lhgj;->a:Lhgd;

    invoke-direct {p0, p1, p2}, Lhgo;-><init>(Lhgh;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lhgj;->a:Lhgd;

    iget-object v1, p0, Lhgj;->b:Lhgh;

    invoke-static {v1}, Lhgh;->a(Lhgh;)Lhfl;

    move-result-object v1

    invoke-interface {v0, v1}, Lhgd;->a(Lhfx;)V

    .line 86
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 90
    iget-object v0, p0, Lhgj;->a:Lhgd;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lhgd;->a(Lhfi;)V

    .line 91
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Lhgj;->a:Lhgd;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lhgd;->a(Lhfi;)V

    .line 96
    return-void
.end method
